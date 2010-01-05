From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #14893] Tasks stuck on I/O on armel with 2.6.32-rc8
Date: Tue, 5 Jan 2010 22:30:42 +0100
Message-ID: <201001052230.42567.rjw@sisk.pl>
References: <oBElxfTZdhL.A.bx.-vhOLB@chimera> <srmJ8vMxKPH.A.LFC.UwhOLB@chimera> <4B42972B.6030801@fifthhorseman.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <4B42972B.6030801-QLrU/DhXBlmnlhUoGqYIEF6hYfS7NtTn@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Daniel Kahn Gillmor <dkg-QLrU/DhXBlmnlhUoGqYIEF6hYfS7NtTn@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Tuesday 05 January 2010, Daniel Kahn Gillmor wrote:
> Hi Rafael--
> 
> On 12/29/2009 10:28 AM, Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a report
> > of regressions introduced between 2.6.31 and 2.6.32.
> > 
> > The following bug entry is on the current list of known regressions
> > introduced between 2.6.31 and 2.6.32.  Please verify if it still should
> > be listed and let me know (either way).
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14893
> > Subject		: Tasks stuck on I/O on armel with 2.6.32-rc8
> > Submitter	: Daniel Kahn Gillmor <dkg-QLrU/DhXBlmnlhUoGqYIEF6hYfS7NtTn@public.gmane.org>
> > Date		: 2009-11-24 23:05 (36 days old)
> > References	: http://marc.info/?l=linux-kernel&m=125910438530554&w=4
> 
> The machine in question has been up continuously (though not under heavy
> load) since it was rebooted after the reported failure.  it has even
> withstood additional mpd index updates, all running the same kernel it
> crashed with before.
> 
> So i can't say that the problem is resolved, but i haven't replicated it
> either.  Wish i had more interesting details to report.

I'm going to close it as "unreprodicible", then.  Please reopen if you're able
to reproduce it after all.

> Thanks for doing followup/triage like this.

Well, you're welcome. :-)

Rafael
