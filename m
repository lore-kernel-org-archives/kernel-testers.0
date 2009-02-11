From: Roland Dreier <rdreier-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #12491] i915 lockdep warning
Date: Wed, 11 Feb 2009 10:14:13 -0800
Message-ID: <adaprho96yy.fsf@cisco.com>
References: <kkuKoQJIW-D.A.61C.auYiJB@chimera>
	<pWZw1SZjMCH.A.ciH.4vYiJB@chimera> <adar62dltg1.fsf@cisco.com>
	<200902050203.40535.rjw@sisk.pl> <adar62bchfw.fsf@cisco.com>
	<F169D4F5E1F1974DBFAFABF47F60C10A1DFD867C@orsmsx507.amr.corp.intel.com>
	<adabptfc90m.fsf@cisco.com> <1234312992.32506.30.camel@gaiman>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1234312992.32506.30.camel@gaiman> (Eric Anholt's message of
	"Tue, 10 Feb 2009 16:43:12 -0800")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; l=307; t=1234376088; x=1235240088;
	c=relaxed/simple; s=sjdkim3002;
	h=Content-Type:From:Subject:Content-Transfer-Encoding:MIME-Version;
	d=cisco.com; i=rdreier-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org;
	z=From:=20Roland=20Dreier=20<rdreier-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org>
	|Subject:=20Re=3A=20[Bug=20#12491]=20i915=20lockdep=20warni
	ng
	|Sender:=20;
	bh=fm7OyZ43GxB/xKIu1HrDJv/Z/8t3G7MrA8acXqvq2g0=;
	b=PzeVd3kFJ0TYZ3eisk4iZZMw5MhE6mwiUu/4Rubwi+mFx9CMq1M87F/7cI
	a1c2wtdvm3NGDS2Mrw7KbNkpJ/OuNrbF7gbxILAqNSZ4DSsFUFEMGxJ8lEph
	vTExVbPpaI;
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Eric Anholt <eric-WhKQ6XTQaPysTnJN9+BGXg@public.gmane.org>
Cc: "Brandeburg, Jesse" <jesse.brandeburg-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "drivers_video-dri@kernel-bugs.osdl.org" <drivers_video-dri-ztI5WcYan/vQLgFONoPN62D2FQJk+8+b@public.gmane.org>, Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>, intel-gfx-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org

 > This only fixes 1 of the about 4 of this type of deadlock, but it looks
 > like a fine fix for that and I've put it in my tree.  Thanks!

Heh, just fixing what I saw reported.  probably once this gets in the
harder reports will pop up because lockdep won't disable itself quite so
soon...

 - R.
