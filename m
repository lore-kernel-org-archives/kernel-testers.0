From: Christian Lamparter <chunkeey-S0/GAf8tV78@public.gmane.org>
Subject: [PATCH -stable] p54usb: fix traffic stalls / packet drop
Date: Tue, 20 Jan 2009 23:11:11 +0100
Message-ID: <200901202311.11854.chunkeey@web.de>
References: <KTnguC9mFUC.A.VNB.TJRdJB@chimera> <cX2gZ6Cy9nC.A.vUD.KKRdJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <cX2gZ6Cy9nC.A.vUD.KKRdJB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Greg KH gr <gregkh-l3A5Bk7waGM@public.gmane.org>, Artur Skawina <art.08.09-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>, Linux wireless <linux-wireless-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

All p54usb devices need a explicit termination packet, in oder to finish the pending transfer properly.
Else, the firmware could freeze, or simply drop the frame.

Signed-off-by: Christian Lamparter <chunkeey-S0/GAf8tV78@public.gmane.org>
Cc: stable <stable-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
---
Attached is the patch is for the stable series only.
Bugzilla reference: http://bugzilla.kernel.org/show_bug.cgi?id=12260
(wireless-testing needs a different one)

Rafael, I hope we can close this bug. Greg?
---
diff --git a/drivers/net/wireless/p54/p54usb.c b/drivers/net/wireless/p54/p54usb.c
index 75d749b..be40369 100644
--- a/drivers/net/wireless/p54/p54usb.c
+++ b/drivers/net/wireless/p54/p54usb.c
@@ -214,6 +214,8 @@ static void p54u_tx_3887(struct ieee80211_hw *dev, struct p54_control_hdr *data,
 	usb_fill_bulk_urb(data_urb, priv->udev,
 		usb_sndbulkpipe(priv->udev, P54U_PIPE_DATA), data, len,
 		free_on_tx ? p54u_tx_free_cb : p54u_tx_cb, dev);
+	addr_urb->transfer_flags |= URB_ZERO_PACKET;
+	data_urb->transfer_flags |= URB_ZERO_PACKET;
 
 	usb_submit_urb(addr_urb, GFP_ATOMIC);
 	usb_submit_urb(data_urb, GFP_ATOMIC);
@@ -251,6 +253,7 @@ static void p54u_tx_lm87(struct ieee80211_hw *dev,
 		usb_sndbulkpipe(priv->udev, P54U_PIPE_DATA), hdr,
 		len + sizeof(*hdr), free_on_tx ? p54u_tx_free_cb : p54u_tx_cb,
 		dev);
+	data_urb->transfer_flags |= URB_ZERO_PACKET;
 
 	usb_submit_urb(data_urb, GFP_ATOMIC);
 }
@@ -293,11 +296,13 @@ static void p54u_tx_net2280(struct ieee80211_hw *dev, struct p54_control_hdr *da
 	usb_fill_bulk_urb(int_urb, priv->udev,
 		usb_sndbulkpipe(priv->udev, P54U_PIPE_DEV), reg, sizeof(*reg),
 		p54u_tx_free_cb, dev);
+	int_urb->transfer_flags |= URB_ZERO_PACKET;
 	usb_submit_urb(int_urb, GFP_ATOMIC);
 
 	usb_fill_bulk_urb(data_urb, priv->udev,
 		usb_sndbulkpipe(priv->udev, P54U_PIPE_DATA), hdr, len + sizeof(*hdr),
 		free_on_tx ? p54u_tx_free_cb : p54u_tx_cb, dev);
+	data_urb->transfer_flags |= URB_ZERO_PACKET;
 	usb_submit_urb(data_urb, GFP_ATOMIC);
 }
 
