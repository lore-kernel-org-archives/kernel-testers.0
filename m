From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: Re: [Bug #11989] Suspend failure on NForce4-based boards due to chanes in stop_machine
Date: Mon, 10 Nov 2008 15:47:20 +0100
Message-ID: <200811101547.21325.rjw@sisk.pl>
References: <YrUCLn0F-xH.A.fhE.E4zFJB@chimera> <wnN9HICUAgP.A.00E.N4zFJB@chimera> <20081110120401.GA15518@osiris.boeblingen.de.ibm.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1755487AbYKJOm4@vger.kernel.org>
In-Reply-To: <20081110120401.GA15518@osiris.boeblingen.de.ibm.com>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Heiko Carstens <heiko.carstens@de.ibm.com>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Rusty Russell <rusty@rustcorp.com.au>

On Monday, 10 of November 2008, Heiko Carstens wrote:
> On Sun, Nov 09, 2008 at 06:59:16PM +0100, Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.27.  Please verify if it still should be listed and let me know
> > (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11989
> > Subject		: Suspend failure on NForce4-based boards due to chanes in stop_machine
> > Submitter	: Rafael J. Wysocki <rjw@sisk.pl>
> > Date		: 2008-11-03 0:28 (7 days old)
> > First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=c9583e55fa2b08a230c549bd1e3c0bde6c50d9cc
> > References	: http://marc.info/?l=linux-kernel&m=122567187604356&w=4
> 
> Hi Rafael,

Hi,

> could you provide more informations for this, please?
> 
> What is your kernel configuration?

Available at: http://www.sisk.pl/kernel/debug/mainline/2.6.28-rc3/kitty-config

> Do you have any binary only modules (nvidia?) loaded?

No, I don't.

> Is it possible to recreate the bug by e.g. just doing something like
> 
> echo 0 > /sys/devices/system/cpu/cpu1/online

I haven't checked (yet), I'll do that later today and let you know.

> (or any other online cpu)? Or does it trigger any lockdep warnings?

Thanks,
Rafael
