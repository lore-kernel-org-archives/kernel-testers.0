From: Mikael Pettersson <mikpe-1zs4UD6AkMk@public.gmane.org>
Subject: Re: [Bug #14015] pty regressed again, breaking expect and gcc's
 testsuite
Date: Sun, 6 Sep 2009 00:42:15 +0200
Message-ID: <19106.59719.36991.788931@pilspetsen.it.uu.se>
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
	<19106.16773.461397.654704@pilspetsen.it.uu.se>
	<alpine.LFD.2.01.0909051256550.3414@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.LFD.2.01.0909051256550.3414-bi+AKbBUZKY6gyzm1THtWbp2dZbC/Bob@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: Mikael Pettersson <mikpe-1zs4UD6AkMk@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alan Cox <alan-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>, Greg KH <gregkh-l3A5Bk7waGM@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, OGAWA Hirofumi <hirofumi-UIVanBePwB70ZhReMnHkpc8NsWr+9BEh@public.gmane.org>

Linus Torvalds writes:
 > 
 > 
 > On Sat, 5 Sep 2009, Mikael Pettersson wrote:
 > > 
 > > Thanks, I'm testing this and the pty_write() fix on i686 and ppc64 now.
 > > 
 > > Sometimes the bug is difficult to trigger, so I may need to do loads of
 > > testing with different gcc versions before I dare to say that it's fixed.
 > 
 > Ok, I'm going to commit the two patches, because even if there is some 
 > other bug hiding too (and it doesn't fix your thing - although I think it 
 > will), this is definitely a real fix regardless.
 > 
 > And I want to do a -rc9 and let it get a couple of days of testing, since 
 > I got way more pull requests than I hoped for while I was off diving.

With these two fixes my i686 box finished all gcc bootstrap/regtest
cycles I had scheduled with no signs of pty errors. My ppc64 box
isn't done yet, but so far it's not seen any errors either. So I'm
reasonably optimistic about these fixes.

/Mikael
