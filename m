From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: [Bug #11342] Linux 2.6.27-rc3: kernel BUG at mm/vmalloc.c -
 bisected
Date: Tue, 30 Sep 2008 09:46:59 -0700 (PDT)
Message-ID: <alpine.LFD.2.00.0809300939450.3389@nehalem.linux-foundation.org>
References: <alpine.LFD.1.10.0808251344250.3363@nehalem.linux-foundation.org> <200809251150.26760.rusty@rustcorp.com.au> <alpine.LFD.1.10.0809250836270.3265@nehalem.linux-foundation.org> <200809261525.30258.rusty@rustcorp.com.au> <48DC78F2.8060400@sgi.com>
 <20080927191653.GB18619@elte.hu> <48E0E73A.40803@sgi.com> <20080930110459.GB12529@elte.hu> <48E2506C.7000406@sgi.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <48E2506C.7000406-sJ/iWh9BUns@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Mike Travis <travis-sJ/iWh9BUns@public.gmane.org>
Cc: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Rusty Russell <rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org>, Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, Alan.Brunelle-VXdhtT5mjnY@public.gmane.org, tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, arjan-VuQAYsv1563Yd54FQh9/CA@public.gmane.org, Jack Steiner <steiner-sJ/iWh9BUns@public.gmane.org>



On Tue, 30 Sep 2008, Mike Travis wrote:
> 
> One pain is:
> 
> 	typedef struct __cpumask_s *cpumask_t;
> 	const cpumask_t xxx;
> 
> is not the same as:
> 
> 	typedef const struct __cpumask_s *const_cpumask_t;
> 	const_cpumask_t xxx;
> 
> and I'm not exactly sure why.

Umm. The const has different 

One is

	typedef const struct __cpumask_s *const_cpumask_t;

which becomes

	(const struct __cpumask_s) *

while the other is

	const cpumask_t xxx

which is

	const (struct __cpumask_s *)

and if you look a bit more closely, you'll see that they are _obviously_ 
not the same thing at all.

Quite frankly, I personally do hate typedefs that end up being pointers, 
and used as pointers, without showing that in the source code.

When you do

	type_t a;

	fn(a);

I expect the code to essentially do a pass-by-value. But when the type_t 
is a pointer, that doesn't really work.

Your issue with 'const' is just another version of the same. You don't 
want the _pointer_ to be const, you want what it points _to_ to be const. 
But because you hid the pointerness inside the typedef, you simply cannot 
do that.

The problem with cpumask's, of course, is that for the "small mask" case, 
we really don't want it to be a pointer. So now it's sometimes a pointer 
and sometimes not. The typedef hides that, and I understand why it's a 
good idea, but I'm surprised you didn't understand what the implications 
were for 'const', and I'm now a bit more leery about this whole thing just 
because the typedef ends up hiding so much - it doesn't just hide the 
basic type, it hides a very basic *code* issue.

			Linus
