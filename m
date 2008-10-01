From: Rusty Russell <rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org>
Subject: Re: [Bug #11342] Linux 2.6.27-rc3: kernel BUG at mm/vmalloc.c - bisected
Date: Wed, 1 Oct 2008 10:44:13 +1000
Message-ID: <200810011044.14148.rusty@rustcorp.com.au>
References: <alpine.LFD.1.10.0808251344250.3363@nehalem.linux-foundation.org> <48E2506C.7000406@sgi.com> <alpine.LFD.2.00.0809300939450.3389@nehalem.linux-foundation.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.LFD.2.00.0809300939450.3389-nfNrOhbfy2R17+2ddN/4kux8cNe9sq/dYPYVAmT7z5s@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: Mike Travis <travis-sJ/iWh9BUns@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, Alan.Brunelle-VXdhtT5mjnY@public.gmane.org, tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, arjan-VuQAYsv1563Yd54FQh9/CA@public.gmane.org, Jack Steiner <steiner-sJ/iWh9BUns@public.gmane.org>

On Wednesday 01 October 2008 02:46:59 Linus Torvalds wrote:
> Quite frankly, I personally do hate typedefs that end up being pointers,
> and used as pointers, without showing that in the source code.
...
> I'm now a bit more leery about this whole thing just
> because the typedef ends up hiding so much - it doesn't just hide the
> basic type, it hides a very basic *code* issue.

Yes, this is why my version of the rework moved away from typedefs, except for 
the special case of "cpumask_var_t" for stack vars where this trick is really 
desired.

Everywhere else, the code becomes nice and clear: struct cpumask *.

Cheers,
Rusty.
