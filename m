From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #14902] Boot ends not on tty1
Date: Tue, 5 Jan 2010 22:32:58 +0100
Message-ID: <201001052232.58559.rjw@sisk.pl>
References: <oBElxfTZdhL.A.bx.-vhOLB@chimera> <srmJ8vMxKPH.A.WjB.MwhOLB@chimera> <20100105085743.GA13491@upset.ux.pdb.fsc.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20100105085743.GA13491-x1yfUCpSWc7Qq2sUoCM6xuTW4wlIGRCZ@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Andreas Friedrich <andreas.friedrich-RJz4owOZxyXQFUHtdCDX3A@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Wolfgang Erig <Wolfgang.Erig-RJz4owOZxyXQFUHtdCDX3A@public.gmane.org>

On Tuesday 05 January 2010, Andreas Friedrich wrote:
> Hi Rafael,
> 
> On Di, Dez 29, 2009 at 04:28:54 +0100, Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a report
> > of regressions introduced between 2.6.31 and 2.6.32.
> > 
> > The following bug entry is on the current list of known regressions
> > introduced between 2.6.31 and 2.6.32.  Please verify if it still should
> > be listed and let me know (either way).
> 
> the problem was gone after the latest Debian lenny and etch upgrades
> (one of libexpat1, libltdl3, libpq4/5 does the fix). I think that the 
> kernel change which came with e11c675ede0d42a405ae595528bf0b29ce1ae56f
> is now supported in Debian, so it is no longer a kernel issue.
> 
> Please remove the error from the regression list.

Thanks, closing.

Rafael
