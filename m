From: Roland Dreier <rdreier-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #12600] i915 lockdep warning
Date: Sun, 08 Feb 2009 17:12:21 -0800
Message-ID: <adaljsgbeh6.fsf@cisco.com>
References: <AIghyjFgMFP.A.uZD._10jJB@chimera>
	<sWhNs83kKPE.A.xaG.-20jJB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <sWhNs83kKPE.A.xaG.-20jJB@chimera> (Rafael J. Wysocki's message
	of "Sun, 8 Feb 2009 20:21:42 +0100 (CET)")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; l=324; t=1234141942; x=1235005942;
	c=relaxed/simple; s=sjdkim2002;
	h=Content-Type:From:Subject:Content-Transfer-Encoding:MIME-Version;
	d=cisco.com; i=rdreier-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org;
	z=From:=20Roland=20Dreier=20<rdreier-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org>
	|Subject:=20Re=3A=20[Bug=20#12600]=20i915=20lockdep=20warni
	ng
	|Sender:=20;
	bh=eqOGeTLGlThF3ySHset0YKV+8kunRsgBoqRzB4vWvrs=;
	b=eXnRU64Vw+bUIywhPGNmHKtkJ148RxlPNu7GZgo1xiYiqKBEHmFAW36X8z
	VFtjpZuo/qZVUVW2q09IE8Zfy1eOijR1LZ+c5ODQCRK8rNbaz5IVSc1+l3+P
	mohMczUOqr;
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Bob Copeland <me-aXfl/3sk2vNUbtYUoyoikg@public.gmane.org>, "Brandeburg, Jesse" <jesse.brandeburg-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

 > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12600
 > Subject		: i915 lockdep warning
 > Submitter	: Brandeburg, Jesse <jesse.brandeburg-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
 > Date		: 2009-01-13 23:17 (27 days old)
 > References	: http://marc.info/?l=linux-kernel&m=123188898423532&w=4

Looks like a dup of 12491 to me.

 - R.
