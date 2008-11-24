From: "Alexander Beregalov" <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: 2.6.28-rc6: hpet: object is on stack, but not annotated
Date: Mon, 24 Nov 2008 21:14:01 +0300
Message-ID: <a4423d670811241014n2b2192beh931d374bf063894f@mail.gmail.com>
References: <a4423d670811240839q54e6b7afxfc49d28b3ea127cb@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=+9R3hPmZ7bKVLWdHZpeBhwlIOGeCq/ogNL0hymBE6/0=;
        b=VTOMzkzNJaqdabhcYwAhRZdahv816U6yN423lf+coJBgfF8hhOf2lcnn8kwWSK14pa
         hlocY+x4TNMUrkWPhQmbsBDwEhHMLkGt1P0WZQ+1O+01/LyB6J3toN8jJ2sga4bnfvpe
         UNUlq0xm0AaNoD6QFVlmIbg8YUic5BtuvemSc=
In-Reply-To: <a4423d670811240839q54e6b7afxfc49d28b3ea127cb-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, LKML <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org, mingo-X9Un+BFzKDI@public.gmane.org, venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, shaohua.li-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org

2008/11/24 Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>:
> hpet0: at MMIO 0xfed00000, IRQs 2, 8, 0
> hpet0: 3 comparators, 64-bit 14.318180 MHz counter
> ODEBUG: object is on stack, but not annotated
> ------------[ cut here ]------------
> WARNING: at lib/debugobjects.c:251 __debug_object_init+0x2a4/0x352()

Bisected down to 26afe5f2fbf06ea0765aaa316640c4dd472310c0
(x86: HPET_MSI Initialise per-cpu HPET timers)

Revert helps
