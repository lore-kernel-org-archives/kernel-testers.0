From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: BISECTED: 2.6.29-rc2 regression: hibernation hang on eeepc-701
Date: Thu, 22 Jan 2009 13:44:15 +0100
Message-ID: <200901221344.16178.rjw@sisk.pl>
References: <9b2b86520901180345j434eacbdn7386958991ee50b@mail.gmail.com> <497858E1.5070303@tuffmail.co.uk>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <497858E1.5070303-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Cc: kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org, Pavel Machek <pavel-AlSwsSmVLrQ@public.gmane.org>, Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>

On Thursday 22 January 2009, Alan Jenkins wrote:
> Alan Jenkins wrote:
> > Hibernation hangs just after writing the image.  With s2disk I can see
> > this from the console messages.  The same hang happens with kernel
> > swsusp ('echo disk | sudo tee /sys/power/state'), and I can see that
> > the image has been written from the HDD led.
> >
> > In either case, I can still hard-power-off and resume from hibernation.
> >
> > It doesn't hang if I use the shutdown method (either 'echo shutdown |
> > sudo tee /sys/power/disk' or  's2disk -P "shutdown method=shutdown"').
> >   
> 
> I've bisected this to commit 571ff7584bb9e05fca0eb79752ae55a46faf3a98. 
> It doesn't revert cleanly from RC2.
> 
> I think it's distinct from the other two reported suspend regressions. 
> I'm not using acpi-cpufreq, and the issue doesn't affect resume.

It looks distinct.

Do you suspend this box to RAM and does it work?

Please retest with the appended patch applied.

Thanks,
Rafael


---
 drivers/pci/pci-driver.c |    5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

Index: linux-2.6/drivers/pci/pci-driver.c
===================================================================
--- linux-2.6.orig/drivers/pci/pci-driver.c
+++ linux-2.6/drivers/pci/pci-driver.c
@@ -660,7 +660,10 @@ static int pci_pm_poweroff(struct device
 	if (pci_has_legacy_pm_support(pci_dev))
 		return pci_legacy_suspend(dev, PMSG_HIBERNATE);
 
-	if (drv && drv->pm && drv->pm->poweroff) {
+	if (!drv || !drv->pm)
+		return 0;
+
+	if (drv->pm->poweroff) {
 		error = drv->pm->poweroff(dev);
 		suspend_report_result(drv->pm->poweroff, error);
 	}
