From: Jens Axboe <jaxboe-5c4llco8/ftWk0Htik3J/w@public.gmane.org>
Subject: Re: [Bug #32982] Kernel locks up a few minutes after boot
Date: Tue, 19 Apr 2011 11:09:42 +0200
Message-ID: <4DAD5156.2050300@fusionio.com>
References: <OlQwC5HnRsN.A.ULB.OGuqNB@chimera> <_H4l51C1wXN.A.yDC.yGuqNB@chimera> <BANLkTimeaHwBiZoz=isCM=qtBxoxaBqDUw@mail.gmail.com> <BANLkTi=1jO73DXDTD50bVpU82qphVKmRCw@mail.gmail.com> <4DAC2429.5000105@fusionio.com> <BANLkTinCWWYqnksxevho9TN3u6ZC_Rjzwg@mail.gmail.com> <4DAC82E6.3020809@fusionio.com> <BANLkTimaekpwmK+z=ePE+XSP6GUteidwfw@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <BANLkTimaekpwmK+z=ePE+XSP6GUteidwfw-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Bart Van Assche <bvanassche-HInyCGIudOg@public.gmane.org>
Cc: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Neil Brown <neilb-l3A5Bk7waGM@public.gmane.org>

On 2011-04-18 20:32, Bart Van Assche wrote:
> On Mon, Apr 18, 2011 at 8:28 PM, Jens Axboe <jaxboe-5c4llco8/ftWk0Htik3J/w@public.gmane.org> wrote:
>> On 2011-04-18 20:21, Bart Van Assche wrote:
>>> a performance regression in the block layer not related to the md
>>> issue. If I run a small block IOPS test on a block device created by
>>> ib_srp (NOOP scheduler) I see about 11% less IOPS than with 2.6.38.3
>>> (155.000 IOPS with 2.6.38.3 and 140.000 IOPS with 2.6.39-rc3+).
>>
>> That's not good. What's the test case?
> 
> Nothing more than a fio IOPS test:
> 
> fio --bs=512 --ioengine=libaio --buffered=0 --rw=read --thread
> --iodepth=64 --numjobs=2 --loops=10000 --group_reporting --size=1G
>     --gtod_reduce=1 --name=iops-test --filename=/dev/${dev} --invalidate=1

Bart, can you try the below:

diff --git a/block/blk-core.c b/block/blk-core.c
index 5fa3dd2..9b41da1 100644
--- a/block/blk-core.c
+++ b/block/blk-core.c
@@ -307,11 +307,7 @@ void __blk_run_queue(struct request_queue *q)
 	 * Only recurse once to avoid overrunning the stack, let the unplug
 	 * handling reinvoke the handler shortly if we already got there.
 	 */
-	if (!queue_flag_test_and_set(QUEUE_FLAG_REENTER, q)) {
-		q->request_fn(q);
-		queue_flag_clear(QUEUE_FLAG_REENTER, q);
-	} else
-		queue_delayed_work(kblockd_workqueue, &q->delay_work, 0);
+	q->request_fn(q);
 }
 EXPORT_SYMBOL(__blk_run_queue);
 

-- 
Jens Axboe
