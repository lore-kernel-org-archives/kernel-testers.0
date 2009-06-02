From: Jos van der Ende <seraph-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org>
Subject: Re: [Bug #12947] r128: system hangs when X is started with DRI
 enabled
Date: Tue, 2 Jun 2009 21:11:07 +0200
Message-ID: <20090602211107.388693ef.seraph@xs4all.nl>
References: <THxQaUP0K2D.A.QkF.UVbIKB@chimera>
	<PkPeJtNB3KO.A.CSH.sWbIKB@chimera>
	<20090531105227.178e5397.angel@pearlgates.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090531105227.178e5397.angel-CPAcdlEyg76BYrYycbcsJg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org" <venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, DRI <dri-devel-5NWGOfrQmneRv+LV9MX5uipxlwaOVQ5f@public.gmane.org>

> The bug fix in question is this one:
> http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=42beefc00

I did some final testing today.

The problem with the black screen I was having with 2.6.30 seems to have been solved in rc7, X works flawlessly there.

2.6.29.4 and 2.6.29-gentoo-r5 also work just fine with Dave's bug fix in place.


Thanks to everyone who helped! :-)


-- 
Jos van der Ende <seraph-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org>
