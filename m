From: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Subject: Re: 2.6.27-rc4-git1: Reported regressions from 2.6.26
Date: Wed, 27 Aug 2008 15:43:43 -0700 (PDT)
Message-ID: <20080827.154343.18918939.davem@davemloft.net>
References: <m3k5e2qkk2.fsf@telia.com>
	<20080827230828.4285022b@lxorguk.ukuu.org.uk>
	<alpine.LFD.1.10.0808271530350.3419@nehalem.linux-foundation.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.LFD.1.10.0808271530350.3419-nfNrOhbfy2R17+2ddN/4kux8cNe9sq/dYPYVAmT7z5s@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org
Cc: alan-qBU/x9rampVanCEyBjwyrvXRex20P6io@public.gmane.org, petero2-zq6IREYz3ykAvxtiuMwx3w@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, alan-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org, jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, protasnb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Date: Wed, 27 Aug 2008 15:38:16 -0700 (PDT)

> Btw, why is unlocked_ioctl returning "long"? Does anybody depend on that 
> too? That's another difference between the "unlocked" and the traditional 
> version..

The return values want to be "long" sign extended all the way back
down to syscall dispatch, I think this is just an effort to add
some consistency here so that the int --> long extension eventually
can be eliminated once unlocked_ioctl is the only case left.
