From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #11698] 2.6.27-rc7, freezes with &gt; 1 s2ram cycle
Date: Mon, 24 Nov 2008 22:19:29 +0100
Message-ID: <200811242219.29520.rjw@sisk.pl>
References: <0kQZaQnNVIL.A.BhG.FwIKJB@chimera> <V2w_GS-X2aE.A.rcH.ywIKJB@chimera> <1227560233.4881.4.camel@localhost>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1227560233.4881.4.camel@localhost>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Soeren Sonnenburg <kernel-YxZl4NRrHdw@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Monday, 24 of November 2008, Soeren Sonnenburg wrote:
> On Sat, 2008-11-22 at 21:59 +0100, Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a report
> > of regressions introduced between 2.6.26 and 2.6.27.
> > 
> > The following bug entry is on the current list of known regressions
> > introduced between 2.6.26 and 2.6.27.  Please verify if it still should
> > be listed and let me know (either way).
> 
> current mainstream hangs on *every* resume (Carlos observed the same
> hangs on wakeup from s2ram but while the cause for him were the wireless
> drivers it must be something else here)...
> 
> so this bug and the bug I am having is again hidden under something
> else. one thing I noticed: The machine resumes and numlock still works
> when using an external usb keyboard. still no display and also no second
> s2ram possible :(

Well, this sounds quite serious, but I have no idea what the problem may be.

Please have a look at, though:
http://bugzilla.kernel.org/show_bug.cgi?id=12031

Thanks,
Rafael
