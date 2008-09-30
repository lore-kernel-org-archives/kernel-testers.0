From: Mike Travis <travis-sJ/iWh9BUns@public.gmane.org>
Subject: Re: [Bug #11342] Linux 2.6.27-rc3: kernel BUG at mm/vmalloc.c - bisected
Date: Tue, 30 Sep 2008 11:02:30 -0700
Message-ID: <48E269B6.1080904@sgi.com>
References: <alpine.LFD.1.10.0808251344250.3363@nehalem.linux-foundation.org> <200809251150.26760.rusty@rustcorp.com.au> <alpine.LFD.1.10.0809250836270.3265@nehalem.linux-foundation.org> <200809261525.30258.rusty@rustcorp.com.au> <48DC78F2.8060400@sgi.com> <20080927191653.GB18619@elte.hu> <48E0E73A.40803@sgi.com> <20080930110459.GB12529@elte.hu> <48E2506C.7000406@sgi.com> <alpine.LFD.2.00.0809300939450.3389@nehalem.linux-foundation.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.LFD.2.00.0809300939450.3389-nfNrOhbfy2R17+2ddN/4kux8cNe9sq/dYPYVAmT7z5s@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Rusty Russell <rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org>, Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, Alan.Brunelle-VXdhtT5mjnY@public.gmane.org, tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, arjan-VuQAYsv1563Yd54FQh9/CA@public.gmane.org, Jack Steiner <steiner-sJ/iWh9BUns@public.gmane.org>

Linus Torvalds wrote:
> 
> On Tue, 30 Sep 2008, Mike Travis wrote:
>> One pain is:
>>
>> 	typedef struct __cpumask_s *cpumask_t;
>> 	const cpumask_t xxx;
>>
>> is not the same as:
>>
>> 	typedef const struct __cpumask_s *const_cpumask_t;
>> 	const_cpumask_t xxx;
>>
>> and I'm not exactly sure why.
> 
> Umm. The const has different 
> 
> One is
> 
> 	typedef const struct __cpumask_s *const_cpumask_t;
> 
> which becomes
> 
> 	(const struct __cpumask_s) *
> 
> while the other is
> 
> 	const cpumask_t xxx
> 
> which is
> 
> 	const (struct __cpumask_s *)
> 
> and if you look a bit more closely, you'll see that they are _obviously_ 
> not the same thing at all.

Thanks, yes that explains what I should have figured out.  (Nice way to
explain it btw... ;-)

> 
> Quite frankly, I personally do hate typedefs that end up being pointers, 
> and used as pointers, without showing that in the source code.
> 
> When you do
> 
> 	type_t a;
> 
> 	fn(a);
> 
> I expect the code to essentially do a pass-by-value. But when the type_t 
> is a pointer, that doesn't really work.

I agree, and as I mentioned, Rusty was working towards an alternative
method of declaring cpumask's which does not hide this.

My goal was to create an (apparent) opaque handle for cpumask_t and modify
the code so all changes to the contents of the cpumask are via functions.

> 
> Your issue with 'const' is just another version of the same. You don't 
> want the _pointer_ to be const, you want what it points _to_ to be const. 
> But because you hid the pointerness inside the typedef, you simply cannot 
> do that.
> 
> The problem with cpumask's, of course, is that for the "small mask" case, 
> we really don't want it to be a pointer. So now it's sometimes a pointer 
> and sometimes not. The typedef hides that, and I understand why it's a 
> good idea, but I'm surprised you didn't understand what the implications 
> were for 'const', and I'm now a bit more leery about this whole thing just 
> because the typedef ends up hiding so much - it doesn't just hide the 
> basic type, it hides a very basic *code* issue.

Perhaps then defining the cpumask as a list of unsigned longs (remove the
outer struct) would play more "naturally".  Lists by definition are always
referenced by pointers.  I have another version of the patchset that shows
this and I'll post just the cpumask.h and doc files.

> 
> 			Linus

Thanks!
Mike
