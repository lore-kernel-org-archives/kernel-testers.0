From: OGAWA Hirofumi <hirofumi-UIVanBePwB70ZhReMnHkpc8NsWr+9BEh@public.gmane.org>
Subject: Re: [Bug #14015] pty regressed again, breaking expect and gcc's testsuite
Date: Sun, 06 Sep 2009 07:46:51 +0900
Message-ID: <87y6ot3t7o.fsf@devron.myhome.or.jp>
References: <riPp5fx5ECC.A.2IG.qsGlKB@chimera>
	<19099.52899.620345.326521@pilspetsen.it.uu.se>
	<19100.31254.666066.755541@pilspetsen.it.uu.se>
	<200909012042.59856.rjw@sisk.pl>
	<alpine.LFD.2.00.0909021429360.3590@eeepc.linux-foundation.org>
	<19105.5352.28380.230615@pilspetsen.it.uu.se>
	<alpine.LFD.2.00.0909040729490.5232@eeepc.linux-foundation.org>
	<alpine.LFD.2.00.0909040739060.17375@eeepc.linux-foundation.org>
	<alpine.LFD.2.00.0909040753370.17375@eeepc.linux-foundation.org>
	<alpine.LFD.2.00.0909040804450.23850@eeepc.linux-foundation.org>
	<alpine.LFD.2.00.0909040910140.4537@eeepc.linux-foundation.org>
	<87pra55nsr.fsf@devron.myhome.or.jp>
	<20090905225642.79251527@lxorguk.ukuu.org.uk>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090905225642.79251527-qBU/x9rampVanCEyBjwyrvXRex20P6io@public.gmane.org> (Alan Cox's message
	of "Sat, 5 Sep 2009 22:56:42 +0100")
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Alan Cox <alan-qBU/x9rampVanCEyBjwyrvXRex20P6io@public.gmane.org>
Cc: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Mikael Pettersson <mikpe-1zs4UD6AkMk@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alan Cox <alan-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>, Greg KH <gregkh-l3A5Bk7waGM@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>

Alan Cox <alan-qBU/x9rampVanCEyBjwyrvXRex20P6io@public.gmane.org> writes:

>> So, it will use the 64kb limit at least few paths, and I'm not sure
>> though, non-n_tty path (e.g. ppp) doesn't use tty_write_room() check
>> always. It may not be consistent if we removed pty_space() in pty_write().
>
> The correct behaviour for most network protocols to overflow is to drop
> packets so the behaviour of not checking was intentional.

I see. I meant, ppp doesn't check (64kb) on write, but post-process(?)
checks (8kb). If there is this situation, I just worried it becomes the
cause of wrong behavior.

Thanks.
-- 
OGAWA Hirofumi <hirofumi-UIVanBePwB70ZhReMnHkpc8NsWr+9BEh@public.gmane.org>
