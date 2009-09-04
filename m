From: Alan Cox <alan-qBU/x9rampVanCEyBjwyrvXRex20P6io@public.gmane.org>
Subject: Re: [Bug #14015] pty regressed again, breaking expect and gcc's
 testsuite
Date: Fri, 4 Sep 2009 16:28:07 +0100
Message-ID: <20090904162807.1dba7a32@lxorguk.ukuu.org.uk>
References: <riPp5fx5ECC.A.2IG.qsGlKB@chimera>
	<19099.52899.620345.326521@pilspetsen.it.uu.se>
	<19100.31254.666066.755541@pilspetsen.it.uu.se>
	<200909012042.59856.rjw@sisk.pl>
	<alpine.LFD.2.00.0909021429360.3590@eeepc.linux-foundation.org>
	<87pra89sgp.fsf@devron.myhome.or.jp>
	<alpine.LFD.2.00.0909031353360.15956@eeepc.linux-foundation.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.LFD.2.00.0909031353360.15956-OZUqEyPC5NRQetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: OGAWA Hirofumi <hirofumi-UIVanBePwB70ZhReMnHkpc8NsWr+9BEh@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Mikael Pettersson <mikpe-1zs4UD6AkMk@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alan Cox <alan-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>, Greg KH <gregkh-l3A5Bk7waGM@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>

> And if it _doesn't_ fix it, then I think we'll just have to revert the 
> commits in question. We won't have time to root-cause it if the above 
> isn't it.

In which case ppp will no longer work properly in some cases (ditto
other protocols) and things like the pppoe gateway wont work as they
don't in 2.6.30 - you need to go back to somewhere between 2.6.28/29 to
undo this, then apply the alternative locking patches to the
ppp/slip/ax25/etc ldiscs

Is the missing byte always part of the \r\n - that is handled slightly
specially by the n_tty ldisc code and has always been buggy if there is
flow control buffering - back to 1.3 and probably earlier. It happens on
real ttys too given sufficient flow control blockage because the char by
char opost stuff never did space/buffering checks. At least I don't think
the n_tty rework fixed it.
