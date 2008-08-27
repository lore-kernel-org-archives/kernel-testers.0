From: Peter Osterlund <petero2-zq6IREYz3ykAvxtiuMwx3w@public.gmane.org>
Subject: Re: 2.6.27-rc4-git1: Reported regressions from 2.6.26
Date: Wed, 27 Aug 2008 22:17:49 +0200
Message-ID: <m3k5e2qkk2.fsf@telia.com>
References: <mzBsPw3QUOF.A.87F.wZGsIB@albercik>
	<alpine.LFD.1.10.0808241120460.3363@nehalem.linux-foundation.org>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.LFD.1.10.0808241120460.3363-nfNrOhbfy2R17+2ddN/4kux8cNe9sq/dYPYVAmT7z5s@public.gmane.org> (Linus Torvalds's message of "Sun\, 24 Aug 2008 11\:34\:32 -0700 \(PDT\)")
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Alan Cox <alan-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Jens Axboe <jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Adrian Bunk <bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Natalie Protasevich <protasnb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org> writes:

> On Sat, 23 Aug 2008, Rafael J. Wysocki wrote:
>> 
>> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11401
>> Subject		: pktcdvd: BUG, NULL pointer dereference in pkt_ioctl, bisected
>> Submitter	: Laurent Riffard <laurent.riffard-GANU6spQydw@public.gmane.org>
>> Date		: 2008-08-22 08:16 (2 days old)
>
> This one looks irritating.
>
> It's bisected to 5b6155ee70e9c4d2ad7e6f514c8eee06e2711c3a ("pktcdvd: push 
> BKL down into driver"), but the problem goes deeper than that.
...
> Grr.
...
> Double grr.
...
> Hmm?
>
> We need to fix this.

Why not just revert the offending change and try again during the next
merge window, assuming someone has figured out an acceptable way to
handle this mess by then?

-- 
Peter Osterlund - petero2-zq6IREYz3ykAvxtiuMwx3w@public.gmane.org
http://web.telia.com/~u89404340
