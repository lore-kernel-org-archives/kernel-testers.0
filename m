From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #13126] BUG: MAX_LOCKDEP_ENTRIES too low! when mounting rootfs
Date: Tue, 26 May 2009 01:19:37 +0200
Message-ID: <200905260119.38144.rjw@sisk.pl>
References: <ZPPBiNHr1LC.A.9ZH.K9bGKB@chimera> <uSztiUhmDDC.A.I2B.y-bGKB@chimera> <1243239718.26820.647.camel@twins>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1243239718.26820.647.camel@twins>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Peter Zijlstra <peterz-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Philip Copeland <bryce-RmSDqhL/yNMiFSDQTTA3OLVCufUGDwFn@public.gmane.org>

On Monday 25 May 2009, Peter Zijlstra wrote:
> On Sun, 2009-05-24 at 21:11 +0200, Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.29.  Please verify if it still should be listed and let me know
> > (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13126
> > Subject		: BUG: MAX_LOCKDEP_ENTRIES too low! when mounting rootfs
> > Submitter	: Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > Date		: 2009-04-15 12:43 (40 days old)
> > References	: http://marc.info/?l=linux-kernel&m=123979949820538&w=4
> 
> -rc7 includes:
> 
> Ingo Molnar (1):
>       lockdep: increase MAX_LOCKDEP_ENTRIES and MAX_LOCKDEP_CHAINS
> 
> Which can be found with commit id: 
>    d80c19df5fcceb8c741e96f09f275c2da719efef

Thanks, closed.

Rafael
