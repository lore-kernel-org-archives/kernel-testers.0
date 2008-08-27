From: Alan Cox <alan-qBU/x9rampVanCEyBjwyrvXRex20P6io@public.gmane.org>
Subject: Re: 2.6.27-rc4-git1: Reported regressions from 2.6.26
Date: Wed, 27 Aug 2008 23:28:03 +0100
Message-ID: <20080827232803.2ba8dd96@lxorguk.ukuu.org.uk>
References: <mzBsPw3QUOF.A.87F.wZGsIB@albercik>
	<alpine.LFD.1.10.0808241120460.3363@nehalem.linux-foundation.org>
	<m3k5e2qkk2.fsf@telia.com>
	<20080827230828.4285022b@lxorguk.ukuu.org.uk>
	<alpine.LFD.1.10.0808271530350.3419@nehalem.linux-foundation.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.LFD.1.10.0808271530350.3419-nfNrOhbfy2R17+2ddN/4kux8cNe9sq/dYPYVAmT7z5s@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: Peter Osterlund <petero2-zq6IREYz3ykAvxtiuMwx3w@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Alan Cox <alan-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Jens Axboe <jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Adrian Bunk <bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Natalie Protasevich <protasnb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

> Btw, why is unlocked_ioctl returning "long"? Does anybody depend on that 
> too? That's another difference between the "unlocked" and the traditional 
> version..

I don't know - a lot of syscall returns got defined as long and I guess
someone thought propogating the right type was a good diea ?
> 
> As to the "x86 cases", I think you should try to hit them all. Doing a 
> "git grep unlocked_ioctl" gets 185 entries, and it looks like only 
> something like 8 of them are non-x86 (3 in the arch/ directory, five in 
> s390 drivers).
> 
> Of course, some of them may be drivers that aren't available on x86 for 
> other reasons (ie the ARM embedded stuff), but regardless..
> 
> Anyway, the pure size of that patch makes me suspect that we might as well 
> leave it until the next merge window, but if you do it and it's obviously 
> totally mechanical, I'd be likely to just let it slip in early.

I'll take a crack at it tomorrow - but if its 185 entries then it
probably wants to go into -next instead.

Alan
