From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #13072] forcedeth seems to switch off eth on shutdown
Date: Sun, 7 Jun 2009 22:50:39 +0200
Message-ID: <200906072250.39558.rjw@sisk.pl>
References: <sIiXQlfwS3D.A.81.dj7KKB@chimera> <AN6kEAA5GQ.A.ELC.ck7KKB@chimera> <4A2BF577.1050003@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <4A2BF577.1050003-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Robert Hancock <hancockrwd-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: LKML <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Daniel Bierstedt <public-daniel.bierstedt-Mmb7MZpHnFY-1dZseelyfdZg9hUCZPvPmw@public.gmane.org>

On Sunday 07 June 2009, Robert Hancock wrote:
> 
> Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a report
> > of regressions introduced between 2.6.28 and 2.6.29.
> > 
> > The following bug entry is on the current list of known regressions
> > introduced between 2.6.28 and 2.6.29.  Please verify if it still should
> > be listed and let me know (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13072
> > Subject		: forcedeth seems to switch off eth on shutdown
> > Submitter	: Daniel Bierstedt <daniel.bierstedt-Mmb7MZpHnFY-XMD5yJDbdMReXY1tMh2IBg@public.gmane.org>
> > Date		: 2009-04-12 07:00 (57 days old)
> 
> Seems like it should be fixed by:
> 
> http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=5a9a8e32ebe269c71d8d3e78f9435fe7729f38e9

Thanks, I've closed the bug.

Rafael
