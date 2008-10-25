From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #11833] 2.6.27-git8 compile error in drivers/mfd/wm8350-core.c
Date: Sun, 26 Oct 2008 01:13:35 +0200
Message-ID: <200810260113.35856.rjw@sisk.pl>
References: <nw2Y6lk-0lG.A.VUB.RV5AJB@chimera> <t1C3RWL0r7M.A.rkC.xV5AJB@chimera> <4903A598.7020706@imap.cc>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <4903A598.7020706-ZTO5kqT2PaM@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Tilman Schmidt <tilman-ZTO5kqT2PaM@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Sunday, 26 of October 2008, Tilman Schmidt wrote:
> Rafael J. Wysocki schrieb:
> > The following bug entry is on the current list of known regressions
> > from 2.6.27.  Please verify if it still should be listed and let me know
> > (either way).
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11833
> > Subject		: 2.6.27-git8 compile error in drivers/mfd/wm8350-core.c
> > Submitter	: Tilman Schmidt <tilman-ZTO5kqT2PaM@public.gmane.org>
> > Date		: 2008-10-19 18:17 (7 days old)
> > References	: http://marc.info/?l=linux-kernel&m=122444027920472&w=4
> 
> Fixed in 2.6.28-rc1 by commit c7752351c34d852ca0da697f812534101eecd82e:
> mfd: Don't use NO_IRQ in WM8350

Thanks, closed.

Rafael
