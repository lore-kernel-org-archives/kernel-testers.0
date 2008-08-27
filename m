From: Alan Cox <alan-qBU/x9rampVanCEyBjwyrvXRex20P6io@public.gmane.org>
Subject: Re: 2.6.27-rc4-git1: Reported regressions from 2.6.26
Date: Wed, 27 Aug 2008 23:08:28 +0100
Message-ID: <20080827230828.4285022b@lxorguk.ukuu.org.uk>
References: <mzBsPw3QUOF.A.87F.wZGsIB@albercik>
	<alpine.LFD.1.10.0808241120460.3363@nehalem.linux-foundation.org>
	<m3k5e2qkk2.fsf@telia.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <m3k5e2qkk2.fsf-zq6IREYz3ykAvxtiuMwx3w@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Peter Osterlund <petero2-zq6IREYz3ykAvxtiuMwx3w@public.gmane.org>
Cc: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Alan Cox <alan-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Jens Axboe <jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Adrian Bunk <bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Natalie Protasevich <protasnb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

> >
> > We need to fix this.
> 
> Why not just revert the offending change and try again during the next
> merge window, assuming someone has figured out an acceptable way to
> handle this mess by then?

Easier just to fix it. Its a case of building everything until it
compiles with the prototype change. Almost all stuff  will just take the
argument initially and not use it.

Anyone else plan to do it or shall I hit all the x86 cases and post a
patch ?
