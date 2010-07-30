From: FUJITA Tomonori <fujita.tomonori-Zyj7fXuS5i5L9jVzuh4AOg@public.gmane.org>
Subject: Re: [Bug #15977] WARNING: at lib/dma-debug.c:866 check_for_stack
Date: Fri, 30 Jul 2010 15:58:04 +0900
Message-ID: <20100730155605S.fujita.tomonori@lab.ntt.co.jp>
References: <wQMMFC59mnE.A.v-E.iUYSMB@chimera>
	<PRbv8sgxY6G.A.ksG.eWYSMB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <PRbv8sgxY6G.A.ksG.eWYSMB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: rjw-KKrjLPT3xs0@public.gmane.org, mchehab-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, zdenek.kabelac-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, greg-U8xfFu+wG4EAvxtiuMwx3w@public.gmane.org

On Fri, 23 Jul 2010 14:15:49 +0200 (CEST)
"Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.33 and 2.6.34.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.33 and 2.6.34.  Please verify if it still should
> be listed and let the tracking team know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15977
> Subject		: WARNING: at lib/dma-debug.c:866 check_for_stack
> Submitter	: Zdenek Kabelac <zdenek.kabelac-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2010-05-14 8:56 (71 days old)
> Message-ID	: <AANLkTikyx2eaxaiUCFDSfpmn1UG0t2GOxArz6F4wp1LJ-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
> References	: http://marc.info/?l=linux-kernel&m=127382742729825&w=2

looks like easy to fix this. But seems that linux-next still has the
bug. Or a fix was already posted somewhere else?

=
From: FUJITA Tomonori <fujita.tomonori-Zyj7fXuS5i5L9jVzuh4AOg@public.gmane.org>
Subject: [PATCH] DVB: dib0700: fix the usage of stack buffers for DMA

We can't use a stack buffer for DMA.

This should fix:

http://bugzilla.kernel.org/show_bug.cgi?id=15977

Signed-off-by: FUJITA Tomonori <fujita.tomonori-Zyj7fXuS5i5L9jVzuh4AOg@public.gmane.org>
---
 drivers/media/dvb/dvb-usb/dib0700_core.c |   15 ++++++++++++---
 1 files changed, 12 insertions(+), 3 deletions(-)

diff --git a/drivers/media/dvb/dvb-usb/dib0700_core.c b/drivers/media/dvb/dvb-usb/dib0700_core.c
index 7deade7..54a0d2c 100644
--- a/drivers/media/dvb/dvb-usb/dib0700_core.c
+++ b/drivers/media/dvb/dvb-usb/dib0700_core.c
@@ -301,14 +301,23 @@ struct i2c_algorithm dib0700_i2c_algo = {
 int dib0700_identify_state(struct usb_device *udev, struct dvb_usb_device_properties *props,
 			struct dvb_usb_device_description **desc, int *cold)
 {
-	u8 b[16];
-	s16 ret = usb_control_msg(udev, usb_rcvctrlpipe(udev,0),
-		REQUEST_GET_VERSION, USB_TYPE_VENDOR | USB_DIR_IN, 0, 0, b, 16, USB_CTRL_GET_TIMEOUT);
+	void *b;
+	s16 ret;
+
+	b = kmalloc(16, GFP_KERNEL);
+	if (!b)
+		return -ENOMEM;
+
+	ret = usb_control_msg(udev, usb_rcvctrlpipe(udev,0),
+			      REQUEST_GET_VERSION, USB_TYPE_VENDOR | USB_DIR_IN,
+			      0, 0, b, 16, USB_CTRL_GET_TIMEOUT);
 
 	deb_info("FW GET_VERSION length: %d\n",ret);
 
 	*cold = ret <= 0;
 
+	kfree(b);
+
 	deb_info("cold: %d\n", *cold);
 	return 0;
 }
-- 
1.6.5
