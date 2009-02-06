From: Roland Dreier <rdreier@cisco.com>
Subject: Re: [Bug #12491] i915 lockdep warning
Date: Fri, 06 Feb 2009 14:46:11 -0800
Message-ID: <adar62bchfw.fsf@cisco.com>
References: <kkuKoQJIW-D.A.61C.auYiJB@chimera>
	<pWZw1SZjMCH.A.ciH.4vYiJB@chimera> <adar62dltg1.fsf@cisco.com>
	<200902050203.40535.rjw@sisk.pl>
Mime-Version: 1.0
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1757829AbZBFWqX@vger.kernel.org>
In-Reply-To: <200902050203.40535.rjw@sisk.pl> (Rafael J. Wysocki's message of
	"Thu, 5 Feb 2009 02:03:39 +0100")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; l=239; t=1233960372; x=1234824372;
	c=relaxed/simple; s=sjdkim2002;
	h=Content-Type:From:Subject:Content-Transfer-Encoding:MIME-Version;
	d=cisco.com; i=rdreier@cisco.com;
	z=From:=20Roland=20Dreier=20<rdreier@cisco.com>
	|Subject:=20Re=3A=20[Bug=20#12491]=20i915=20lockdep=20warni
	ng
	|Sender:=20;
	bh=4bEoCKedKlPi2JomifCQIDUmxpJjSfT5y5+vvInyhDM=;
	b=AiqnPovEOGGDYzPyM4dwWidiv1S7+YWoeb+lB36Gyt79m8gHKcvwWP+gdb
	7wzA33J4Gbgrqt0m8xpjrxN2CgMLTEqS2tyPRyWJRYQneMAvdXNku4rq+uSY
	IF8MLJMvT2;
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Eric Anholt <eric@anholt.net>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, "Brandeburg, Jesse" <jesse.brandeburg@intel.com>, drivers_video-dri@kernel-bugs.osdl.org, Jesse Barnes <jbarnes@virtuousgeek.org>

 > i915: Fix potential AB-BA deadlock in i915_gem_execbuffer()

Jesse, Eric, or anybody -- does this look correct to you?  This seems to
be triggering for several people, eg
https://bugzilla.redhat.com/show_bug.cgi?id=481687

 - R.
