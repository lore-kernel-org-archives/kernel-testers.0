From: Pete Zaitcev <zaitcev-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Subject: Re: 2.6.30-rc6: usb printer does not work
Date: Thu, 28 May 2009 12:20:54 -0600
Message-ID: <20090528122054.2c837ccd.zaitcev@redhat.com>
References: <20090528170726.GA13714@orion>
	<20090528111831.a35c5184.zaitcev@redhat.com>
	<a4423d670905281044n5e2480a1g98fc6fb5ceb845cd@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <a4423d670905281044n5e2480a1g98fc6fb5ceb845cd-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, zaitcev-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org

On Thu, 28 May 2009 21:44:05 +0400, Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:

> >> kernel is 2.6.30-rc6-00065-g3633832
> >>
> >> It worked sometime ago, I do not remember,
> >> perhaps it was 2.6.29.
> >
> > Can you verify it?

> It works with 2.6.29 indeed.

Thanks. Just to make sure that it's the culprit, can you back out
the patch for the usblp from the 2.6.30-rc6-00065-g3633832, whatever
that is? We only had one since 2.6.29 (attached).

Also, I'd like to see a usbmon trace. I don't want to create more
quirks, so perhaps we can work out some kind of compromise that lets
BJC-3000 work with the general code. Failing that, we'll add a quirk
and that would hopefuly restore your case (HP CP1215, I take it).

-- Pete

--- linux-2.6.29/drivers/usb/class/usblp.c	2009-05-28 12:07:06.000000000 -0600
+++ linux-2.6/drivers/usb/class/usblp.c	2009-04-05 11:27:00.000000000 -0600
@@ -880,16 +880,19 @@ static int usblp_wwait(struct usblp *usb
 		if (rc <= 0)
 			break;
 
-		if (usblp->flags & LP_ABORT) {
-			if (schedule_timeout(msecs_to_jiffies(5000)) == 0) {
+		if (schedule_timeout(msecs_to_jiffies(1500)) == 0) {
+			if (usblp->flags & LP_ABORT) {
 				err = usblp_check_status(usblp, err);
 				if (err == 1) {	/* Paper out */
 					rc = -ENOSPC;
 					break;
 				}
+			} else {
+				/* Prod the printer, Gentoo#251237. */
+				mutex_lock(&usblp->mut);
+				usblp_read_status(usblp, usblp->statusbuf);
+				mutex_unlock(&usblp->mut);
 			}
-		} else {
-			schedule();
 		}
 	}
 	set_current_state(TASK_RUNNING);
--
To unsubscribe from this list: send the line "unsubscribe linux-usb" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
