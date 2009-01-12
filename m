From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Subject: Re: 2.6.28-rc6: hpet: object is on stack, but not annotated
Date: Mon, 12 Jan 2009 13:33:49 +0100
Message-ID: <20090112123349.GD29628@elte.hu>
References: <a4423d670811240839q54e6b7afxfc49d28b3ea127cb@mail.gmail.com> <a4423d670811241014n2b2192beh931d374bf063894f@mail.gmail.com> <alpine.LFD.2.00.0811241916560.3301@localhost.localdomain> <20081204111621.GA2466@elf.ucw.cz> <a4423d670901120240m6ee29951ucc1c0f16c27d398c@mail.gmail.com> <1231761143.4371.0.camel@laptop> <20090112115934.GA24266@elte.hu> <a4423d670901120427q502ae9b6uded2e55a91c2a7cc@mail.gmail.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <a4423d670901120427q502ae9b6uded2e55a91c2a7cc-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Peter Zijlstra <peterz-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>, Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>, Pavel Machek <pavel-AlSwsSmVLrQ@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, LKML <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, shaohua.li-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org


* Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:

> 2009/1/12 Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>:
> >
> > * Peter Zijlstra <peterz-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org> wrote:
> >
> >> > > (No, introducing WARN_ON()s is not fine; it spams kerneloops.org at
> >> > > least...)
> >> >
> >> > The warning is still here on 2.6.29-rc1. It taints the kernel.
> >>
> >> Does this fix it?
> Yes, it does. Thanks Peter.

thanks - added your Tested-by tag to the commit too.

	Ingo
