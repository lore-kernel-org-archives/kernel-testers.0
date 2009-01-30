From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [linux-pm] Suspend regression, hang after matroxfb
Date: Fri, 30 Jan 2009 22:15:27 +0100
Message-ID: <200901302215.28057.rjw@sisk.pl>
References: <20090129125855.GA4597@alice> <200901292312.44884.rjw@sisk.pl> <20090130124643.GA8394@alice>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090130124643.GA8394@alice>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Eric Sesterhenn <snakebyte-Mmb7MZpHnFY@public.gmane.org>
Cc: linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org, vandrove-hnqZr3NxcozrBKCeMvbIDA@public.gmane.org, Kernel Testers <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Friday 30 January 2009, Eric Sesterhenn wrote:
> * Rafael J. Wysocki (rjw-KKrjLPT3xs0@public.gmane.org) wrote:
> > On Thursday 29 January 2009, Eric Sesterhenn wrote:
> > > hi,
> > > 
> > > on this box standby worked with 2.6.28, but is broken with 2.6.29-rc3.
> > > 
> > > Dmesg of startup
> > > http://www.cccmz.de/~snakebyte/200.log
> > > .config
> > > http://www.cccmz.de/~snakebyte/config_200
> > > 
> > > When testing the devices 
> > > 
> > > root@computer-desktop:/sys/power# echo devices > pm_test 
> > 
> > What happens if you replace 'devices' with 'core' ?
> 
> no change, it hangs after matroxfb
> 
> root@computer-desktop:/sys/power# echo core > pm_test 
> root@computer-desktop:/sys/power# echo standby > state
> 
[--snip--]
> 
> > If the same, what happens without the matroxfb driver?
> 
> It gets a bit further, suspend seems to complete,
> but hangs during resume

Please check if the appended patch helps.

Thanks,
Rafael

---
 drivers/pci/pci-driver.c |   13 +++++--------
 1 file changed, 5 insertions(+), 8 deletions(-)

Index: linux-2.6/drivers/pci/pci-driver.c
===================================================================
--- linux-2.6.orig/drivers/pci/pci-driver.c
+++ linux-2.6/drivers/pci/pci-driver.c
@@ -445,11 +445,11 @@ static void pci_pm_default_suspend_gener
 	pci_save_state(pci_dev);
 }
 
-static void pci_pm_default_suspend(struct pci_dev *pci_dev)
+static void pci_pm_default_suspend(struct pci_dev *pci_dev, bool prepare)
 {
 	pci_pm_default_suspend_generic(pci_dev);
 
-	if (!pci_is_bridge(pci_dev))
+	if (prepare && !pci_is_bridge(pci_dev))
 		pci_prepare_to_sleep(pci_dev);
 
 	pci_fixup_device(pci_fixup_suspend, pci_dev);
@@ -509,7 +509,7 @@ static int pci_pm_suspend(struct device 
 	}
 
 	if (!error)
-		pci_pm_default_suspend(pci_dev);
+		pci_pm_default_suspend(pci_dev, drv && drv->pm);
 
 	return error;
 }
@@ -669,16 +669,13 @@ static int pci_pm_poweroff(struct device
 	if (pci_has_legacy_pm_support(pci_dev))
 		return pci_legacy_suspend(dev, PMSG_HIBERNATE);
 
-	if (!drv || !drv->pm)
-		return 0;
-
-	if (drv->pm->poweroff) {
+	if (drv && drv->pm && drv->pm->poweroff) {
 		error = drv->pm->poweroff(dev);
 		suspend_report_result(drv->pm->poweroff, error);
 	}
 
 	if (!error)
-		pci_pm_default_suspend(pci_dev);
+		pci_pm_default_suspend(pci_dev, drv && drv->pm);
 
 	return error;
 }
