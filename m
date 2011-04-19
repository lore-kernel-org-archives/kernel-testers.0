From: Bart Van Assche <bvanassche@acm.org>
Subject: Re: [Bug #32982] Kernel locks up a few minutes after boot
Date: Tue, 19 Apr 2011 18:13:17 +0200
Message-ID: <BANLkTimLOgY1opmAt+rxmYtLa-6adL98wg@mail.gmail.com>
References: <OlQwC5HnRsN.A.ULB.OGuqNB@chimera> <_H4l51C1wXN.A.yDC.yGuqNB@chimera>
 <BANLkTimeaHwBiZoz=isCM=qtBxoxaBqDUw@mail.gmail.com> <BANLkTi=1jO73DXDTD50bVpU82qphVKmRCw@mail.gmail.com>
 <4DAC2429.5000105@fusionio.com> <BANLkTinCWWYqnksxevho9TN3u6ZC_Rjzwg@mail.gmail.com>
 <4DAC82E6.3020809@fusionio.com> <BANLkTimaekpwmK+z=ePE+XSP6GUteidwfw@mail.gmail.com>
 <4DAD5156.2050300@fusionio.com> <4DAD6EF2.5070405@fusionio.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:sender:in-reply-to:references:from
         :date:x-google-sender-auth:message-id:subject:to:cc:content-type
         :content-transfer-encoding;
        bh=5nbl/9yICpREYrjikcj1jF1m+btzQZa5X3wruni70yw=;
        b=gc5WP5olDsqL6u6GJqEXWabkuzJsR273O2v9xgi+SgUrnxipQLG2fGHvubwdz0c1Fr
         TehkR6Oahim2CLvkkcSBIliuOxvSqLkpbHzoUCPjo3N7VoiW5JUwxf4FFVN4vP+asykr
         SLn8bykn1UZzBspJny0FbTR/2Z+qTEuYybP/w=
In-Reply-To: <4DAD6EF2.5070405@fusionio.com>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Jens Axboe <jaxboe@fusionio.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Florian Mickler <florian@mickler.org>, Neil Brown <neilb@suse.de>, David Dillow <dave@thedillows.org>

On Tue, Apr 19, 2011 at 1:16 PM, Jens Axboe <jaxboe@fusionio.com> wrote=
:
> On 2011-04-19 11:09, Jens Axboe wrote:
> > On 2011-04-18 20:32, Bart Van Assche wrote:
> >> On Mon, Apr 18, 2011 at 8:28 PM, Jens Axboe <jaxboe@fusionio.com> =
wrote:
> >>> On 2011-04-18 20:21, Bart Van Assche wrote:
> >>>> a performance regression in the block layer not related to the m=
d
> >>>> issue. If I run a small block IOPS test on a block device create=
d by
> >>>> ib_srp (NOOP scheduler) I see about 11% less IOPS than with 2.6.=
38.3
> >>>> (155.000 IOPS with 2.6.38.3 and 140.000 IOPS with 2.6.39-rc3+).
> >>>
> >>> That's not good. What's the test case?
> >>
> >> Nothing more than a fio IOPS test:
> >>
> >> fio --bs=3D512 --ioengine=3Dlibaio --buffered=3D0 --rw=3Dread --th=
read
> >> --iodepth=3D64 --numjobs=3D2 --loops=3D10000 --group_reporting --s=
ize=3D1G
> >> =A0 =A0 --gtod_reduce=3D1 --name=3Diops-test --filename=3D/dev/${d=
ev} --invalidate=3D1
> >
> > Bart, can you try the below:
>
> Here's a more complete variant. James, lets get rid of this REENTER
> crap. It's completely bogus and triggers falsely for a variety of
> reasons. The below will work, but there may be room for improvement o=
n
> the SCSI side.
>
> diff --git a/block/blk-core.c b/block/blk-core.c
> index 5fa3dd2..4e49665 100644
> --- a/block/blk-core.c
> +++ b/block/blk-core.c
> @@ -303,15 +303,7 @@ void __blk_run_queue(struct request_queue *q)
> =A0 =A0 =A0 =A0if (unlikely(blk_queue_stopped(q)))
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0return;
>
> - =A0 =A0 =A0 /*
> - =A0 =A0 =A0 =A0* Only recurse once to avoid overrunning the stack, =
let the unplug
> - =A0 =A0 =A0 =A0* handling reinvoke the handler shortly if we alread=
y got there.
> - =A0 =A0 =A0 =A0*/
> - =A0 =A0 =A0 if (!queue_flag_test_and_set(QUEUE_FLAG_REENTER, q)) {
> - =A0 =A0 =A0 =A0 =A0 =A0 =A0 q->request_fn(q);
> - =A0 =A0 =A0 =A0 =A0 =A0 =A0 queue_flag_clear(QUEUE_FLAG_REENTER, q)=
;
> - =A0 =A0 =A0 } else
> - =A0 =A0 =A0 =A0 =A0 =A0 =A0 queue_delayed_work(kblockd_workqueue, &=
q->delay_work, 0);
> + =A0 =A0 =A0 q->request_fn(q);
> =A0}
> =A0EXPORT_SYMBOL(__blk_run_queue);
>
> @@ -328,6 +320,7 @@ void blk_run_queue_async(struct request_queue *q)
> =A0 =A0 =A0 =A0if (likely(!blk_queue_stopped(q)))
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0queue_delayed_work(kblockd_workqueue, =
&q->delay_work, 0);
> =A0}
> +EXPORT_SYMBOL(blk_run_queue_async);
>
> =A0/**
> =A0* blk_run_queue - run a single device queue
> diff --git a/block/blk.h b/block/blk.h
> index c9df8fc..6126346 100644
> --- a/block/blk.h
> +++ b/block/blk.h
> @@ -22,7 +22,6 @@ void blk_rq_timed_out_timer(unsigned long data);
> =A0void blk_delete_timer(struct request *);
> =A0void blk_add_timer(struct request *);
> =A0void __generic_unplug_device(struct request_queue *);
> -void blk_run_queue_async(struct request_queue *q);
>
> =A0/*
> =A0* Internal atomic flags for request handling
> diff --git a/drivers/scsi/scsi_lib.c b/drivers/scsi/scsi_lib.c
> index ab55c2f..e9901b8 100644
> --- a/drivers/scsi/scsi_lib.c
> +++ b/drivers/scsi/scsi_lib.c
> @@ -411,8 +411,6 @@ static void scsi_run_queue(struct request_queue *=
q)
> =A0 =A0 =A0 =A0list_splice_init(&shost->starved_list, &starved_list);
>
> =A0 =A0 =A0 =A0while (!list_empty(&starved_list)) {
> - =A0 =A0 =A0 =A0 =A0 =A0 =A0 int flagset;
> -
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0/*
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 * As long as shost is accepting comma=
nds and we have
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 * starved queues, call blk_run_queue.=
 scsi_request_fn
> @@ -435,20 +433,7 @@ static void scsi_run_queue(struct request_queue =
*q)
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0continue;
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0}
>
> - =A0 =A0 =A0 =A0 =A0 =A0 =A0 spin_unlock(shost->host_lock);
> -
> - =A0 =A0 =A0 =A0 =A0 =A0 =A0 spin_lock(sdev->request_queue->queue_lo=
ck);
> - =A0 =A0 =A0 =A0 =A0 =A0 =A0 flagset =3D test_bit(QUEUE_FLAG_REENTER=
, &q->queue_flags) &&
> - =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 !test_b=
it(QUEUE_FLAG_REENTER,
> - =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 &sdev->request_queue->queue_flags);
> - =A0 =A0 =A0 =A0 =A0 =A0 =A0 if (flagset)
> - =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 queue_flag_set(QUEUE_FL=
AG_REENTER, sdev->request_queue);
> - =A0 =A0 =A0 =A0 =A0 =A0 =A0 __blk_run_queue(sdev->request_queue);
> - =A0 =A0 =A0 =A0 =A0 =A0 =A0 if (flagset)
> - =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 queue_flag_clear(QUEUE_=
=46LAG_REENTER, sdev->request_queue);
> - =A0 =A0 =A0 =A0 =A0 =A0 =A0 spin_unlock(sdev->request_queue->queue_=
lock);
> -
> - =A0 =A0 =A0 =A0 =A0 =A0 =A0 spin_lock(shost->host_lock);
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 blk_run_queue_async(sdev->request_queue=
);
> =A0 =A0 =A0 =A0}
> =A0 =A0 =A0 =A0/* put any unprocessed entries back */
> =A0 =A0 =A0 =A0list_splice(&starved_list, &shost->starved_list);
> diff --git a/drivers/scsi/scsi_transport_fc.c b/drivers/scsi/scsi_tra=
nsport_fc.c
> index 28c3350..815069d 100644
> --- a/drivers/scsi/scsi_transport_fc.c
> +++ b/drivers/scsi/scsi_transport_fc.c
> @@ -3816,28 +3816,17 @@ fail_host_msg:
> =A0static void
> =A0fc_bsg_goose_queue(struct fc_rport *rport)
> =A0{
> - =A0 =A0 =A0 int flagset;
> - =A0 =A0 =A0 unsigned long flags;
> -
> =A0 =A0 =A0 =A0if (!rport->rqst_q)
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0return;
>
> + =A0 =A0 =A0 /*
> + =A0 =A0 =A0 =A0* This get/put dance makes no sense
> + =A0 =A0 =A0 =A0*/
> =A0 =A0 =A0 =A0get_device(&rport->dev);
> -
> - =A0 =A0 =A0 spin_lock_irqsave(rport->rqst_q->queue_lock, flags);
> - =A0 =A0 =A0 flagset =3D test_bit(QUEUE_FLAG_REENTER, &rport->rqst_q=
->queue_flags) &&
> - =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 !test_bit(QUEUE_FLAG_REENTER, &rpor=
t->rqst_q->queue_flags);
> - =A0 =A0 =A0 if (flagset)
> - =A0 =A0 =A0 =A0 =A0 =A0 =A0 queue_flag_set(QUEUE_FLAG_REENTER, rpor=
t->rqst_q);
> - =A0 =A0 =A0 __blk_run_queue(rport->rqst_q);
> - =A0 =A0 =A0 if (flagset)
> - =A0 =A0 =A0 =A0 =A0 =A0 =A0 queue_flag_clear(QUEUE_FLAG_REENTER, rp=
ort->rqst_q);
> - =A0 =A0 =A0 spin_unlock_irqrestore(rport->rqst_q->queue_lock, flags=
);
> -
> + =A0 =A0 =A0 blk_run_queue_async(rport->rqst_q);
> =A0 =A0 =A0 =A0put_device(&rport->dev);
> =A0}
>
> -
> =A0/**
> =A0* fc_bsg_rport_dispatch - process rport bsg requests and dispatch =
to LLDD
> =A0* @q: =A0 =A0 =A0 =A0 rport request queue
> diff --git a/include/linux/blkdev.h b/include/linux/blkdev.h
> index cbbfd98..2ad95fa 100644
> --- a/include/linux/blkdev.h
> +++ b/include/linux/blkdev.h
> @@ -388,20 +388,19 @@ struct request_queue
> =A0#define =A0 =A0 =A0 =A0QUEUE_FLAG_SYNCFULL =A0 =A0 3 =A0 =A0 =A0 /=
* read queue has been filled */
> =A0#define QUEUE_FLAG_ASYNCFULL =A0 4 =A0 =A0 =A0 /* write queue has =
been filled */
> =A0#define QUEUE_FLAG_DEAD =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A05 =A0 =A0 =A0=
 /* queue being torn down */
> -#define QUEUE_FLAG_REENTER =A0 =A0 6 =A0 =A0 =A0 /* Re-entrancy avoi=
dance */
> -#define QUEUE_FLAG_ELVSWITCH =A0 7 =A0 =A0 =A0 /* don't use elevator=
, just do FIFO */
> -#define QUEUE_FLAG_BIDI =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A08 =A0 =A0 =A0=
 /* queue supports bidi requests */
> -#define QUEUE_FLAG_NOMERGES =A0 =A0 9 =A0 =A0 =A0/* disable merge at=
tempts */
> -#define QUEUE_FLAG_SAME_COMP =A0 10 =A0 =A0 =A0/* force complete on =
same CPU */
> -#define QUEUE_FLAG_FAIL_IO =A0 =A0 11 =A0 =A0 =A0/* fake timeout */
> -#define QUEUE_FLAG_STACKABLE =A0 12 =A0 =A0 =A0/* supports request s=
tacking */
> -#define QUEUE_FLAG_NONROT =A0 =A0 =A013 =A0 =A0 =A0/* non-rotational=
 device (SSD) */
> +#define QUEUE_FLAG_ELVSWITCH =A0 6 =A0 =A0 =A0 /* don't use elevator=
, just do FIFO */
> +#define QUEUE_FLAG_BIDI =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A07 =A0 =A0 =A0=
 /* queue supports bidi requests */
> +#define QUEUE_FLAG_NOMERGES =A0 =A0 8 =A0 =A0 =A0/* disable merge at=
tempts */
> +#define QUEUE_FLAG_SAME_COMP =A0 9 =A0 =A0 =A0 /* force complete on =
same CPU */
> +#define QUEUE_FLAG_FAIL_IO =A0 =A0 10 =A0 =A0 =A0/* fake timeout */
> +#define QUEUE_FLAG_STACKABLE =A0 11 =A0 =A0 =A0/* supports request s=
tacking */
> +#define QUEUE_FLAG_NONROT =A0 =A0 =A012 =A0 =A0 =A0/* non-rotational=
 device (SSD) */
> =A0#define QUEUE_FLAG_VIRT =A0 =A0 =A0 =A0QUEUE_FLAG_NONROT /* paravi=
rt device */
> -#define QUEUE_FLAG_IO_STAT =A0 =A0 15 =A0 =A0 =A0/* do IO stats */
> -#define QUEUE_FLAG_DISCARD =A0 =A0 16 =A0 =A0 =A0/* supports DISCARD=
 */
> -#define QUEUE_FLAG_NOXMERGES =A0 17 =A0 =A0 =A0/* No extended merges=
 */
> -#define QUEUE_FLAG_ADD_RANDOM =A018 =A0 =A0 =A0/* Contributes to ran=
dom pool */
> -#define QUEUE_FLAG_SECDISCARD =A019 =A0 =A0 =A0/* supports SECDISCAR=
D */
> +#define QUEUE_FLAG_IO_STAT =A0 =A0 13 =A0 =A0 =A0/* do IO stats */
> +#define QUEUE_FLAG_DISCARD =A0 =A0 14 =A0 =A0 =A0/* supports DISCARD=
 */
> +#define QUEUE_FLAG_NOXMERGES =A0 15 =A0 =A0 =A0/* No extended merges=
 */
> +#define QUEUE_FLAG_ADD_RANDOM =A016 =A0 =A0 =A0/* Contributes to ran=
dom pool */
> +#define QUEUE_FLAG_SECDISCARD =A017 =A0 =A0 =A0/* supports SECDISCAR=
D */
>
> =A0#define QUEUE_FLAG_DEFAULT =A0 =A0 ((1 << QUEUE_FLAG_IO_STAT) | =A0=
 =A0 =A0 =A0 =A0 =A0\
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 (1 <<=
 QUEUE_FLAG_STACKABLE) =A0 =A0| =A0 =A0 =A0 \
> @@ -699,6 +698,7 @@ extern void blk_sync_queue(struct request_queue *=
q);
> =A0extern void __blk_stop_queue(struct request_queue *q);
> =A0extern void __blk_run_queue(struct request_queue *q);
> =A0extern void blk_run_queue(struct request_queue *);
> +extern void blk_run_queue_async(struct request_queue *q);
> =A0extern int blk_rq_map_user(struct request_queue *, struct request =
*,
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 struct rq_map_dat=
a *, void __user *, unsigned long,
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 gfp_t);

Hello Jens,

The same test with an initiator running 2.6.39-rc4 +
git://git.kernel.dk/linux-2.6-block.git for-linus + the above patch
yields about 155.000 IOPS on my test setup, or the same performance as
with 2.6.38.3. I'm running the above patch through an I/O stress test
now.

Bart.
