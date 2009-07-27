From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: Re: [Bug 13306] hibernate slow on _second_ run
Date: Mon, 27 Jul 2009 23:09:49 +0200
Message-ID: <200907272309.49762.rjw@sisk.pl>
References: <DizPU9GBfHF.A.kgF.iWObKB@chimera> <H5-1lZIIeYK.A.hw.MZObKB@chimera> <1248682592.19945.26.camel@johannes.local>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1754859AbZG0VJU@vger.kernel.org>
In-Reply-To: <1248682592.19945.26.camel@johannes.local>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Johannes Berg <johannes@sipsolutions.net>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, bugzilla-daemon@bugzilla.kernel.org

On Monday 27 July 2009, Johannes Berg wrote:
> On Sun, 2009-07-26 at 22:45 +0200, Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a report
> > of regressions introduced between 2.6.29 and 2.6.30.
> > 
> > The following bug entry is on the current list of known regressions
> > introduced between 2.6.29 and 2.6.30.  Please verify if it still should
> > be listed and let me know (either way).
> 
> The problem persists in 31-rc3.

Thanks for the update.

Unfortunately, I have no idea about what's wrong here.

Generally, there are three possible areas the problem may be related to:
(1) interrupts,
(2) CPU hotplug,
(3) ordering of the platform callbacks,

but I can't say much more than that.
