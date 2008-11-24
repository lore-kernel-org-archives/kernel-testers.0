From: Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>
Subject: Re: 2.6.28-rc6: hpet: object is on stack, but not annotated
Date: Mon, 24 Nov 2008 19:17:44 +0100 (CET)
Message-ID: <alpine.LFD.2.00.0811241916560.3301@localhost.localdomain>
References: <a4423d670811240839q54e6b7afxfc49d28b3ea127cb@mail.gmail.com> <a4423d670811241014n2b2192beh931d374bf063894f@mail.gmail.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <a4423d670811241014n2b2192beh931d374bf063894f-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, LKML <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, mingo-X9Un+BFzKDI@public.gmane.org, venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, shaohua.li-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org

On Mon, 24 Nov 2008, Alexander Beregalov wrote:

> 2008/11/24 Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>:
> > hpet0: at MMIO 0xfed00000, IRQs 2, 8, 0
> > hpet0: 3 comparators, 64-bit 14.318180 MHz counter
> > ODEBUG: object is on stack, but not annotated
> > ------------[ cut here ]------------
> > WARNING: at lib/debugobjects.c:251 __debug_object_init+0x2a4/0x352()
> 
> Bisected down to 26afe5f2fbf06ea0765aaa316640c4dd472310c0
> (x86: HPET_MSI Initialise per-cpu HPET timers)
> 
> Revert helps

That's just a warning about a missing annotation. The commit is fine.

Thanks,

	tglx
