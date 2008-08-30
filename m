From: Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>
Subject: Re: [regression] usb: sometimes dead keyboard after boot (was: new
 errors during device detection)
Date: Fri, 29 Aug 2008 22:48:46 -0400 (EDT)
Message-ID: <Pine.LNX.4.44L0.0808292246520.17486-100000@netrider.rowland.org>
References: <Pine.LNX.4.44L0.0808291209260.4447-100000@netrider.rowland.org>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <Pine.LNX.4.44L0.0808291209260.4447-100000-pYrvlCTfrz9XsRXLowluHWD2FQJk+8+b@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>
Cc: Kernel development list <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, USB list <linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Fri, 29 Aug 2008, Alan Stern wrote:

> > Does this sound at all logical and feasible?
> 
> The first proposal is feasible; I can write a patch to implement it.  
> How much it will end up helping anything isn't clear, though.

Here's the promised patch.  Be warned, I haven't tested it at all.

Alan Stern


Index: usb-2.6/drivers/usb/core/hcd.h
===================================================================
--- usb-2.6.orig/drivers/usb/core/hcd.h
+++ usb-2.6/drivers/usb/core/hcd.h
@@ -486,4 +486,7 @@ static inline void usbmon_urb_complete(s
  */
 extern struct rw_semaphore ehci_cf_port_reset_rwsem;
 
+/* This is also for use by khubd and ehci-hcd. */
+extern void usb_wait_for_khubd_idle(void);
+
 #endif /* __KERNEL__ */
Index: usb-2.6/drivers/usb/core/hub.c
===================================================================
--- usb-2.6.orig/drivers/usb/core/hub.c
+++ usb-2.6/drivers/usb/core/hub.c
@@ -3097,6 +3097,16 @@ loop:
         } /* end while (1) */
 }
 
+/* Let ehci-hcd know when khubd is idle */
+static int khubd_active;
+static DECLARE_WAIT_QUEUE_HEAD(khubd_wqh);
+
+void usb_wait_for_khubd_idle(void)
+{
+	wait_event(khubd_wqh, !khubd_active);
+}
+EXPORT_SYMBOL_GPL(usb_wait_for_khubd_idle);
+
 static int hub_thread(void *__unused)
 {
 	/* khubd needs to be freezable to avoid intefering with USB-PERSIST
@@ -3107,7 +3117,11 @@ static int hub_thread(void *__unused)
 	set_freezable();
 
 	do {
+		khubd_active = 1;
 		hub_events();
+		khubd_active = 0;
+		wake_up_all(&khubd_wqh);
+
 		wait_event_freezable(khubd_wait,
 				!list_empty(&hub_event_list) ||
 				kthread_should_stop());
Index: usb-2.6/drivers/usb/host/ehci-hcd.c
===================================================================
--- usb-2.6.orig/drivers/usb/host/ehci-hcd.c
+++ usb-2.6/drivers/usb/host/ehci-hcd.c
@@ -604,7 +604,13 @@ static int ehci_run (struct usb_hcd *hcd
 	 * guarantees that no resets are in progress.  After we set CF,
 	 * a short delay lets the hardware catch up; new resets shouldn't
 	 * be started before the port switching actions could complete.
+	 *
+	 * In an attempt to avoid unwanted initialization error messages
+	 * for devices attached to companion controllers, we will wait
+	 * until khubd is idle before beginning.  This isn't truly a
+	 * general solution but it should help during system bootup.
 	 */
+	usb_wait_for_khubd_idle();
 	down_write(&ehci_cf_port_reset_rwsem);
 	hcd->state = HC_STATE_RUNNING;
 	ehci_writel(ehci, FLAG_CF, &ehci->regs->configured_flag);
