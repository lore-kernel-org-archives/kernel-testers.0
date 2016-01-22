From: Guenter Roeck <linux-0h96xk9xTtrk1uMJSBkQmQ@public.gmane.org>
Subject: [PATCH -next] aio: Fix compile error due to unexpected use of cmpxchg()
Date: Fri, 22 Jan 2016 10:14:39 -0800
Message-ID: <1453486479-19347-1-git-send-email-linux@roeck-us.net>
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=roeck-us.net; s=default; h=Message-Id:Date:Subject:Cc:To:From;
	bh=R8skEedfV0iOhbNVisvrHQ8hkqw0by1DNtXyAg/nibo=; b=Lp5guLbBYYPWoo3YAlK4JccAP+
	abYo78+okQ+/hz0iIY0WGghyR3oGsrsIGm+vVKe48H/fBSKTX90fw7z5wnqkhYu4MsPhlpV9hSKrH
	XuSunW43mzzgKro6svDeOsLANK7cUtG9cvair2UycSlMWsnBjP4y8Wmz8XU1pG7iyC0sf/uHn8+3C
	dW/6wrIoboJEtjnOSS3Mmc2HQjByKZLekjMIKfDEtXVpglTK0Vk/kMcm8nvvpCXGmOhS7IHF2aXBW
	0Xix1oM9pZV1jsXa/HAf1lhy1hcY7pVKBKcwcaZLPqyVilJrpv7I9y4u8XuK6wpZ/F+0aHkgPN9Py
	4Kkoc2pQ==;
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Alexander Viro <viro-RmSDqhL/yNMiFSDQTTA3OLVCufUGDwFn@public.gmane.org>
Cc: linux-fsdevel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-aio-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Guenter Roeck <linux-0h96xk9xTtrk1uMJSBkQmQ@public.gmane.org>, Benjamin LaHaise <bcrl-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org>

cmpxchg() on some architectures (ia64) doesn't like functions as parameters.
This results in the following compile error on the affected architectures.

fs/aio.c: In function 'aio_thread_fn':
fs/aio.c:1499:1: error: cast specifies function type

Fixes: 6a81013efc40 ("aio: add support for IOCB_CMD_POLL via aio thread helper")
Cc: Benjamin LaHaise <bcrl-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org>
Signed-off-by: Guenter Roeck <linux-0h96xk9xTtrk1uMJSBkQmQ@public.gmane.org>
---
No idea if this is the correct or an acceptable fix.
If not, please consider this to be a bug report.

 fs/aio.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/fs/aio.c b/fs/aio.c
index 56bcdf4105f4..229a91e391df 100644
--- a/fs/aio.c
+++ b/fs/aio.c
@@ -1495,8 +1495,8 @@ static void aio_thread_fn(struct work_struct *work)
 	 * cancellation if it has not already occurred.
 	 */
 	old_cancel = cmpxchg(&iocb->ki_cancel,
-			     aio_thread_queue_iocb_cancel_early,
-			     aio_thread_queue_iocb_cancel);
+			     (kiocb_cancel_fn *)aio_thread_queue_iocb_cancel_early,
+			     (kiocb_cancel_fn *)aio_thread_queue_iocb_cancel);
 	if (old_cancel != KIOCB_CANCELLED)
 		ret = iocb->ki_work_fn(iocb);
 	else
-- 
2.1.4
