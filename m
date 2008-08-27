From: Alexey Dobriyan <adobriyan-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: 2.6.27-rc4-git1: Reported regressions from 2.6.26
Date: Thu, 28 Aug 2008 02:45:56 +0400
Message-ID: <20080827224556.GA2361@x200.localdomain>
References: <mzBsPw3QUOF.A.87F.wZGsIB@albercik> <alpine.LFD.1.10.0808241120460.3363@nehalem.linux-foundation.org> <m3k5e2qkk2.fsf@telia.com> <20080827230828.4285022b@lxorguk.ukuu.org.uk> <alpine.LFD.1.10.0808271530350.3419@nehalem.linux-foundation.org>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:received:date:from:to:cc
         :subject:message-id:references:mime-version:content-type
         :content-disposition:in-reply-to:user-agent;
        bh=jivIIJiDEJJJEdlZtcUaD6WX9edBetfvuFSq9os05eY=;
        b=PAru0XU7nxeJWYTX3kdMzXRl0LZt4/IHVpvp7OOONVOfoyVRIDTt1bvLF945jqL38s
         VyDZaMXpftFaBkjUA0WUEHpQvRRh3c7ewkOdlKSI0G/bYzqaA5t0L+1EImjsIHgLIUWu
         lVgG/ONKgl8TWWqd9aE7LrDL2Jg8H1USJSTmw=
Content-Disposition: inline
In-Reply-To: <alpine.LFD.1.10.0808271530350.3419-nfNrOhbfy2R17+2ddN/4kux8cNe9sq/dYPYVAmT7z5s@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: Alan Cox <alan-qBU/x9rampVanCEyBjwyrvXRex20P6io@public.gmane.org>, Peter Osterlund <petero2-zq6IREYz3ykAvxtiuMwx3w@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Alan Cox <alan-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Jens Axboe <jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Adrian Bunk <bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Natalie Protasevich <protasnb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Wed, Aug 27, 2008 at 03:38:16PM -0700, Linus Torvalds wrote:
> On Wed, 27 Aug 2008, Alan Cox wrote:
> > 
> > Easier just to fix it. Its a case of building everything until it
> > compiles with the prototype change. Almost all stuff  will just take the
> > argument initially and not use it.
> > 
> > Anyone else plan to do it or shall I hit all the x86 cases and post a
> > patch ?
> 
> Well, I alrady reverted it, but if you actually fix unlocked_ioctl() to 
> have the same calling convention as regular ioctl() then a lot of the 
> noise from ioctl conversion goes away, and all that remains is literally 
> just the BKL part.
> 
> Btw, why is unlocked_ioctl returning "long"? Does anybody depend on that 
> too? That's another difference between the "unlocked" and the traditional 
> version..
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

Anybody doing this, don't forget to actually use "inode" instead of all those
dereferences:

	struct inode *inode = filp->f_path.dentry->d_inode;
