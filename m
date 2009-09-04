From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: [Bug #14015] pty regressed again, breaking expect and gcc's
 testsuite
Date: Thu, 3 Sep 2009 15:52:16 -1000 (HST)
Message-ID: <alpine.LFD.2.00.0909031545010.16579@eeepc.linux-foundation.org>
References: <riPp5fx5ECC.A.2IG.qsGlKB@chimera> <19099.52899.620345.326521@pilspetsen.it.uu.se> <19100.31254.666066.755541@pilspetsen.it.uu.se> <200909012042.59856.rjw@sisk.pl> <alpine.LFD.2.00.0909021429360.3590@eeepc.linux-foundation.org>
 <87pra89sgp.fsf@devron.myhome.or.jp> <alpine.LFD.2.00.0909031353360.15956@eeepc.linux-foundation.org> <87ab1bmqpr.fsf@devron.myhome.or.jp>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <87ab1bmqpr.fsf-x/W9pkDDSe1TgC2z9Sl/nXf5DAMn2ifp@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: OGAWA Hirofumi <hirofumi-UIVanBePwB70ZhReMnHkpc8NsWr+9BEh@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Mikael Pettersson <mikpe-1zs4UD6AkMk@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alan Cox <alan-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>, Greg KH <gregkh-l3A5Bk7waGM@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>



On Fri, 4 Sep 2009, OGAWA Hirofumi wrote:
> 
> Yes. However, pty_write() checks tty_buffer instead of receive_room. So
> I thought, the change of write side is mainly buffer size (receive_room
> size + tty_buffer size).

The problem has never been the write side. That side works - just with 
extra buffering.

> It will stop after filling tty_buffer, not receive_room.

Yes.

> And (I hope) the read side guarantees to consume both buffers. If it is
> right, I guessed the change is timing issues with more larger buffer
> size.

That's the change. The read side only consumes the buffers it _sees_. And 
it doesn't look at the buffers that the write side has written, only at 
the 'received' buffers. That's why we had to add that 'tty_flush_to_ldisc' 
so that the buffers that got written were properly moved to the receive 
side.

And that's the part that I suspect is broken - ie tty_flush_to_ldisc 
doesn't always guarantee that it moves all the written stuff to the 
receive side.

Before, this wasn't an issue, because the writer always filled up the 
receive buffers directly, so there was never any flushing issues.

> Another possibility in my guess is the change of pty_flush_buffer() and
> pty_chars_in_buffer().  I'm not sure at all though, especially, I'm
> suspecting pty_flush_buffer() may change the behaviors.

I don't think 'pty_flush_buffer()' is ever called in any normal 
circumstances. Afaik, it's only called for a TIOCFLUSH ioctl (or whatever 
it's called) when the user asks for all the contents to be thrown away.

> FWIW, meanwhile, I'll just try to see the root-cause of this as
> another/fallback solution.

Absolutely. If you can find some other possibility, that would be great. 
I'm not really sure how that 'receive_room == 0' case would ever happen in 
practice, so my patch was really based on the assumption that the bug is 
in the flushing code.

The bug could easily be elsewhere.

		Linus
