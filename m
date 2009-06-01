From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #13306] hibernate slow on _second_ run
Date: Mon, 1 Jun 2009 22:48:48 +0200
Message-ID: <200906012248.49304.rjw@sisk.pl>
References: <4to6E2myxvG.A.muC.aIbIKB@chimera> <200906012226.46086.rjw@sisk.pl> <1243888860.5299.32.camel@johannes.local>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1243888860.5299.32.camel-YfaajirXv2244ywRPIzf9A@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Monday 01 June 2009, Johannes Berg wrote:
> On Mon, 2009-06-01 at 22:26 +0200, Rafael J. Wysocki wrote:
> > On Sunday 31 May 2009, Johannes Berg wrote:
> > > On Sat, 2009-05-30 at 21:37 +0200, Rafael J. Wysocki wrote:
> > > > This message has been generated automatically as a part of a report
> > > > of recent regressions.
> > > > 
> > > > The following bug entry is on the current list of known regressions
> > > > from 2.6.29.  Please verify if it still should be listed and let me know
> > > > (either way).
> > > > 
> > > > 
> > > > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13306
> > > > Subject		: hibernate slow on _second_ run
> > > > Submitter	: Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>
> > > > Date		: 2009-05-14 09:34 (17 days old)
> > > 
> > > I'm trying to get an ftrace profile that covers the point in question,
> > > but it might take me a couple of days.
> > 
> > Did it work?
> 
> No, it's now hanging 20 seconds much later, after returning to
> userspace :( But the dmesg log still has a hang of ~20.5 seconds just
> like before, between two kernel messages...

Hmm.  Can you try to comment out suspend_device_irqs() and resume_device_irqs()
in drivers/base/power/main.c and see what happens?

Rafael
