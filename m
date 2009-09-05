From: Mikael Pettersson <mikpe-1zs4UD6AkMk@public.gmane.org>
Subject: Re: [Bug #14015] pty regressed again, breaking expect and gcc's
 testsuite
Date: Sat, 5 Sep 2009 12:46:29 +0200
Message-ID: <19106.16773.461397.654704@pilspetsen.it.uu.se>
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
	<alpine.LFD.2.00.0909040917120.4537@eeepc.linux-foundation.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.LFD.2.00.0909040917120.4537-OZUqEyPC5NRQetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: Mikael Pettersson <mikpe-1zs4UD6AkMk@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alan Cox <alan-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>, Greg KH <gregkh-l3A5Bk7waGM@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, OGAWA Hirofumi <hirofumi-UIVanBePwB70ZhReMnHkpc8NsWr+9BEh@public.gmane.org>

Linus Torvalds writes:
 > 
 > 
 > On Fri, 4 Sep 2009, Linus Torvalds wrote:
 > > 
 > > I'm sure you already figured the obvious meaning out, but here's a fixed 
 > > version.
 > 
 > And here's another patch that may also fix this, simply by virtue of 
 > writing the "\r\n" as a single string, rather than as two characters. That 
 > way, we should never get into the situation that th '\r' allocates a new 
 > buffer (larger than one character), and then the later '\n' writing 
 > decides that we've filled up.

Thanks, I'm testing this and the pty_write() fix on i686 and ppc64 now.

Sometimes the bug is difficult to trigger, so I may need to do loads of
testing with different gcc versions before I dare to say that it's fixed.

/Mikael
