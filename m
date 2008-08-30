From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: Linux 2.6.27-rc5: System boot regression caused by commit
 a2bd7274b47124d2fc4dfdb8c0591f545ba749dd
Date: Fri, 29 Aug 2008 23:11:55 -0700 (PDT)
Message-ID: <alpine.LFD.1.10.0808292253100.3290@nehalem.linux-foundation.org>
References: <alpine.LFD.1.10.0808281555230.3300@nehalem.linux-foundation.org>  <alpine.LFD.1.10.0808291704070.3300@nehalem.linux-foundation.org>  <86802c440808291711t32d3e76dsf804856b0a8f4939@mail.gmail.com>  <alpine.LFD.1.10.0808291733260.3300@nehalem.linux-foundation.org>
  <alpine.LFD.1.10.0808291751480.3300@nehalem.linux-foundation.org>  <86802c440808291830t4547140dx9b12353649edd975@mail.gmail.com>  <alpine.LFD.1.10.0808291919080.3300@nehalem.linux-foundation.org>  <alpine.LFD.1.10.0808291954410.3300@nehalem.linux-foundation.org>
  <86802c440808292007t3588edfnef95b723320ff023@mail.gmail.com>  <alpine.LFD.1.10.0808292017440.5010@nehalem.linux-foundation.org> <86802c440808292222r21886f88n29804d14eabb4606@mail.gmail.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <86802c440808292222r21886f88n29804d14eabb4606-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>, Tejun Heo <htejun-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, David Witbrodt <dawitbro-rphTv4pjVZMJGwgDXS7ZQA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Kernel Testers <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>



On Fri, 29 Aug 2008, Yinghai Lu wrote:
> 
> please check
> 
>   __request_region: conflict: (reserved) [dd000000, efffffff], res:
> (qla2xxx) [ddffc000, ddffffff]
> busy flag
> qla2xxx 0000:83:00.0: BAR 1: can't reserve mem region [0xddffc000-0xddffffff]

Ok, this is actually when the driver wants to reserve the BAR, and then it 
norices that there is an existing "reservation" there.

So yes, drivers will care - they literally will think that somebody else 
owns their resource if they have a BUSY resource inside of them. So this 
is a driver protecting against another driver.

The sad part is that it looks like it's entirely due to the PCI code 
trying to emulate an ISA driver model, and use a flat resource space - so 
it hits the upper resources first.

Does this patch make a difference? It actually removes a fair chunk of 
code, by just saying "we really don't care if the resource is IO or MEM, 
we just want to reserve space inside of it, regardless of type".

Untested - obviously.

		Linus

---
 drivers/pci/pci.c |   26 +++++++++-----------------
 1 files changed, 9 insertions(+), 17 deletions(-)

diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index c9884bb..a3de4fe 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -1304,15 +1304,11 @@ pci_get_interrupt_pin(struct pci_dev *dev, struct pci_dev **bridge)
 void pci_release_region(struct pci_dev *pdev, int bar)
 {
 	struct pci_devres *dr;
+	struct resource *res = pdev->resource + bar;
 
 	if (pci_resource_len(pdev, bar) == 0)
 		return;
-	if (pci_resource_flags(pdev, bar) & IORESOURCE_IO)
-		release_region(pci_resource_start(pdev, bar),
-				pci_resource_len(pdev, bar));
-	else if (pci_resource_flags(pdev, bar) & IORESOURCE_MEM)
-		release_mem_region(pci_resource_start(pdev, bar),
-				pci_resource_len(pdev, bar));
+	__release_region(res, pci_resource_start(pdev, bar), pci_resource_len(pdev, bar));
 
 	dr = find_pci_dr(pdev);
 	if (dr)
@@ -1336,20 +1332,16 @@ void pci_release_region(struct pci_dev *pdev, int bar)
 int pci_request_region(struct pci_dev *pdev, int bar, const char *res_name)
 {
 	struct pci_devres *dr;
+	struct resource *res = pdev->resource + bar;
 
 	if (pci_resource_len(pdev, bar) == 0)
 		return 0;
-		
-	if (pci_resource_flags(pdev, bar) & IORESOURCE_IO) {
-		if (!request_region(pci_resource_start(pdev, bar),
-			    pci_resource_len(pdev, bar), res_name))
-			goto err_out;
-	}
-	else if (pci_resource_flags(pdev, bar) & IORESOURCE_MEM) {
-		if (!request_mem_region(pci_resource_start(pdev, bar),
-				        pci_resource_len(pdev, bar), res_name))
-			goto err_out;
-	}
+
+	if (!res->parent)
+		goto err_out;
+
+	if (!__request_region(res, pci_resource_start(pdev, bar), pci_resource_len(pdev, bar), res_name))
+		goto err_out;
 
 	dr = find_pci_dr(pdev);
 	if (dr)
