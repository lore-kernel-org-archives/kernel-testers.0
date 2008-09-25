From: Rusty Russell <rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org>
Subject: Re: [Bug #11342] Linux 2.6.27-rc3: kernel BUG at mm/vmalloc.c - bisected
Date: Thu, 25 Sep 2008 11:50:25 +1000
Message-ID: <200809251150.26760.rusty@rustcorp.com.au>
References: <alpine.LFD.1.10.0808251344250.3363@nehalem.linux-foundation.org> <86802c440808260136t3a33a9c8if53b6f70ab9df9e2@mail.gmail.com> <alpine.LFD.1.10.0808260939070.3363@nehalem.linux-foundation.org>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.LFD.1.10.0808260939070.3363-nfNrOhbfy2R17+2ddN/4kux8cNe9sq/dYPYVAmT7z5s@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, Alan.Brunelle-VXdhtT5mjnY@public.gmane.org, travis-sJ/iWh9BUns@public.gmane.org, tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, arjan-VuQAYsv1563Yd54FQh9/CA@public.gmane.org, Jack Steiner <steiner-sJ/iWh9BUns@public.gmane.org>

On Wednesday 27 August 2008 02:51:46 Linus Torvalds wrote:
> On Tue, 26 Aug 2008, Yinghai Lu wrote:
> > wonder if could use "unsigned long *" directly.
>
> I would actually suggest something like this:
>
>  - we continue to have a magic "cpumask_t".
>
>  - we do different cases for big and small NR_CPUS:
>
> 	#if NR_CPUS <=3D BITS_PER_LONG
>
> 	/*
> 	 * Make it an array - that way passing it as an argument will
> 	 * always pass it as a pointer!
> 	 */
> 	typedef unsigned long cpumask_t[1];
>
> 	static inline void create_cpumask(cpumask_t *p)
> 	{
> 		*p =3D 0;
> 	}
> 	static inline void free_cpumask(cpumask_t *p)
> 	{
> 	}
>
> 	#else
>
> 	typedef unsigned long *cpumask_t;
>
> 	static inline void create_cpumask(cpumask_t *p)
> 	{
> 		*p =3D kcalloc(..);
> 	}
>
> 	static inline void free_cpumask(cpumask_t *p)
> 	{
> 		kfree(*p);
> 	}
>
> 	#endif
>
> and now after you do this, you can just do something like
>
> 	cpumask_t mycpu;
>
> 	create_cpumask(&mycpu);
> 	..
> 	free_cpumask(&mycpu);
>
> and in between, you can use 'cpumask' as a pointer, because even when=
 it
> is an array directly allocated on the stack, the array can always
> degenerate into a pointer by C type rules!

Hi Linus,

    This turns out to be awful in practice, mainly due to const.  Consi=
der:

	#ifdef CONFIG_CPUMASK_OFFSTACK
	typedef unsigned long *cpumask_t;
	#else
	typedef unsigned long cpumask_t[1];
	#endif

	cpumask_t returns_cpumask(void);

That's obviously illegal if cpumask_t is an array.  So we need a typede=
f which=20
says "really always a pointer".

	typedef unsigned long *cpumask_return_t;
	cpumask_return_t returns_cpumask(void);

But we usually want it to return a const ptr, and this doesn't work:

	const cpumask_return_t returns_cpumask(void);
	foo.c:12: warning: type qualifiers ignored on function return type

So now we need:
	typedef const unsigned long *cpumask_const_return_t;
	cpumask_const_return_t returns_cpumask(void);

OK, now consider a function which wants to take a const cpu bitmap:

	void cpus_copy(cpumask_t dst, const cpumask_t src);
	...
	cpus_copy(cpus, returns_cpumask());
	foo.c:34: warning: passing argument 2 of =E2=80=98cpus_copy=E2=80=99 d=
iscards qualifiers from=20
pointer target type

Oops, that didn't work with the pointer version.  So we need another ty=
pedef:
	#ifdef CONFIG_CPUMASK_OFFSTACK
	typedef const unsigned long *cpumask_const_t;
	#else
	typedef const unsigned long cpumask_const_t[1];
	#endif

	void cpus_copy(cpumask_t dst, cpumask_const_t src);

We end up with this:
	#ifdef CONFIG_CPUMASK_OFFSTACK
	typedef unsigned long *cpumask_t;
	typedef const unsigned long *cpumask_const_t;
	#else
	typedef unsigned long cpumask_t[1];
	typedef const unsigned long cpumask_const_t[1];
	#endif
	typedef unsigned long *cpumask_return_t;
	typedef const unsigned long *cpumask_const_return_t;
	typedef unsigned long cpumask_data_t[1];

I can't see a neater way down this path, and I don't want to lose const=
=2E

I can see three alternatives:
1) An ONSTACK_CPUMASK(name) macro which declares "struct cpumask name[1=
]" or
   "struct cpumask *name".  Same idea as yours, without the typedef.
2) Use a normal struct for cpumask, make everyone use pointers, but hav=
e an
   struct cpumask *alloc_stack_cpumask() which uses alloca() for small
   NR_CPUS.
3) Same, but just use kmalloc everywhere.  Optimize important cases by =
hand.

Anyone see a better way?
Rusty.
