From: "Vegard Nossum" <vegard.nossum-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #11035] System hangs on 2.6.26-rc8
Date: Fri, 18 Jul 2008 09:28:17 +0200
Message-ID: <19f34abd0807180028y2be61c06ueab5fcc305956f80@mail.gmail.com>
References: <Vu1KV8Wj_GP.A.qW.DzLcIB@albercik>
	 <uBi7uNfg81L.A.xt.SzLcIB@albercik> <4878D259.7050403@r000n.net>
	 <487CA8E5.8020208@r000n.net> <20080718071121.GB6875@elte.hu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=e1p2fTtJ5hCTLarTYRPHJ4OnAJuCyZ+CLwxNB2npkXo=;
        b=I/ETbmBPOtNgvvinDUaJERxN8bc98+tAAkWlRFe/2Qib6woymYAhVh26RP+udc1A9N
         ipTccACuQm8J0oREJWGixpBNqKWLJ0DPKIxObgdIzeBVWS+EJ+kKhEAfplUMohTVg0tT
         bobylFuouWVxBKcE82iPxfXlxHx4xCnjEQQ5Y=
In-Reply-To: <20080718071121.GB6875-X9Un+BFzKDI@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Cc: Roman Mindalev <lists-ioAbOcnQCpJeoWH0uzbU5w@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>

On Fri, Jul 18, 2008 at 9:11 AM, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org> wrote:
> Vegard - would it be possible to make DEBUG_PAGEALLOC faults single-shot
> and non-fatal, just like kmemcheck does it? That way people would see a
> nice kernel message instead of an immediate crash. That means we'd have
> to find a reliable filter for DEBUG_PAGEALLOC-provoked pagefaults though
> ...

Hm.. Yes, we could do it in a similar fashion using single-stepping.
It should take little effort; we already have most of the code to do
it; mmiotrace does the same thing too, after all.

These are some considerations:

1. If the page is kernel space but currently unmapped, does it point
to a valid page of RAM even though it is non-present?
2. Should we allow reading/writing of the underlying physical page (if
it exists), or should we prevent writes (i.e. allow the instruction to
proceed, but don't really write anything) and reads (i.e. allow the
instruction to read 0 or another magic number).

For the filter you mentioned, we could perhaps use one more bit in the
PTE. This is what we do for kmemcheck, and IIRC DEBUG_PAGEALLOC is
incompatible with kmemcheck anyway (I don't remember why exactly), so
we could reuse the same bit.

BTW, I didn't consider that argument (of continuing as far as
possible) before, but it's a good one; if we don't crash completely,
the user can still copy the log we have a better report of it. I guess
kerneloops.org is currently missing out a great deal of reports which
all shut down the machine immediately without a chance to go into the
log.


Vegard

-- 
"The animistic metaphor of the bug that maliciously sneaked in while
the programmer was not looking is intellectually dishonest as it
disguises that the error is the programmer's own creation."
	-- E. W. Dijkstra, EWD1036
