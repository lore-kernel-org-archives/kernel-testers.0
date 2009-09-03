From: Mikael Pettersson <mikpe-1zs4UD6AkMk@public.gmane.org>
Subject: Re: [Bug #14015] pty regressed again, breaking expect and gcc's testsuite
Date: Thu, 3 Sep 2009 23:00:01 +0200
Message-ID: <19104.11857.497247.438179@pilspetsen.it.uu.se>
References: <riPp5fx5ECC.A.2IG.qsGlKB@chimera>
	<19099.52899.620345.326521@pilspetsen.it.uu.se>
	<19100.31254.666066.755541@pilspetsen.it.uu.se>
	<200909012042.59856.rjw@sisk.pl>
	<alpine.LFD.2.00.0909021429360.3590@eeepc.linux-foundation.org>
	<87pra89sgp.fsf@devron.myhome.or.jp>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <87pra89sgp.fsf-x/W9pkDDSe1TgC2z9Sl/nXf5DAMn2ifp@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: OGAWA Hirofumi <hirofumi-UIVanBePwB70ZhReMnHkpc8NsWr+9BEh@public.gmane.org>
Cc: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Mikael Pettersson <mikpe-1zs4UD6AkMk@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alan Cox <alan-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>, Greg KH <gregkh-l3A5Bk7waGM@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>

OGAWA Hirofumi writes:
 > Well, anyway, I'd like to reproduce this on my machine. Could you tell
 > me the version of tools? I guess gcc testsuite using the gcc's source
 > (svn revision?), expect, dejagnu, tcl. (BTW, I'm using debian
 > testing. If it can be reproduced on kvm, I can install distro version
 > which you are using)

Nothing fancy needed. You can use the gcc-4.4.1 release tarball and any recent
gcc-4.3 weekly snapshot tarball, like 4.3-20090830.

I've always seen the bogus errors in the C or C++ testsuites, so to save
some time you can just --enable-languages=c,c++ when building gcc.

The machines I've been running the testsuites on are a mix of architectures
running older or stability-oriented distros:

M1: i686 PC, Fedora Core 6, dejagnu-1.4.4-5.1, expect-5.43.0-5.1, tcl-8.4.13-3.fc6
M2: powerpc64 (G5), YellowDog 6.2, dejagnu-1.4.4-5.1, expect-5.43.0-5.1, tcl-8.4.13-3
M3: ARM, FC8-based, dejagnu-1.4.4-12.fc8, expect-5.43.0-9.fc8, tcl-8.4.17-1.fc8

/Mikael
