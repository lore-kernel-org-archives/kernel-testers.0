From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #12038] Suspend regression in stable kernel 2.6.27.4 on Mac mini Core Duo
Date: Mon, 17 Nov 2008 23:23:29 +0100
Message-ID: <200811172323.30272.rjw@sisk.pl>
References: <VwdsQNEjR_C.A.CiD.9_FIJB@chimera> <Q7OAnAv0V3D.A.sUE.LAGIJB@chimera> <20081117220851.GA6314@dose.home.local>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20081117220851.GA6314-z7fNteJZwjmqk56C3691EA@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Tino Keitel <tino.keitel-Mmb7MZpHnFY@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Monday, 17 of November 2008, Tino Keitel wrote:
> On Sun, Nov 16, 2008 at 17:35:21 +0100, Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.27.  Please verify if it still should be listed and let me know
> > (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12038
> > Subject		: Suspend regression in stable kernel 2.6.27.4 on Mac mini Core Duo
> > Submitter	: Tino Keitel <tino.keitel-Mmb7MZpHnFY@public.gmane.org>
> > Date		: 2008-11-09 20:28 (8 days old)
> > First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=66036f5862883fcc9f7ff8550685a5a3de1a57e4
> > References	: http://marc.info/?l=linux-kernel&m=122626258429689&w=4
> > Handled-By	: Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>
> > Patch		: http://marc.info/?l=linux-kernel&m=122661443120581&w=4
> 
> The patch works fine here. I applied it to 2.6.27.5 and resume works.

Thanks for testing, I'm going to push it upstream shortly.

Best,
Rafael
