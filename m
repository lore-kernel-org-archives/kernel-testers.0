From: Jos van der Ende <seraph-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org>
Subject: Re: [Bug #12947] r128: system hangs when X is started with DRI
 enabled
Date: Mon, 27 Apr 2009 20:12:29 +0200
Message-ID: <20090427201229.3491928a.seraph@xs4all.nl>
References: <tur5OtdUm3E.A.r2B.7oE9JB@chimera>
	<egHshlwQQFE.A.ITD.zpE9JB@chimera>
	<20090426170729.3489b482.angel@pearlgates.net>
	<200904261943.45126.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200904261943.45126.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, DRI <dri-devel-5NWGOfrQmneRv+LV9MX5uipxlwaOVQ5f@public.gmane.org>, Jos van der Ende <seraph-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org>

On Sun, 26 Apr 2009 19:43:44 +0200
"Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> On Sunday 26 April 2009, Angel wrote:
> > On Sun, 26 Apr 2009 11:46:26 +0200 (CEST)
> > 
> > I've tested with kernel 2.6.29.1. The problem still persists. While everything works fine with 2.6.28 or lower, starting X (both 1.3 and 1.5) with DRI enabled on a 2.6.29 kernel results in a garbled screen and unresponsive keyboard.
> 
> Thanks for the update.
> 
> Can you also test 2.6.30-rc3, please?

Sure. Still broken in exactly the same way. (Garbled screen, non-working keyboard. System can still be ssh-ed into.)


-- 
Jos van der Ende <seraph-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org>
