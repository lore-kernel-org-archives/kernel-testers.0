From: Christoph Hellwig <hch-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>
Subject: Re: [Bug #32982] Kernel locks up a few minutes after boot
Date: Tue, 19 Apr 2011 12:48:15 -0400
Message-ID: <20110419164815.GA30616@infradead.org>
References: <OlQwC5HnRsN.A.ULB.OGuqNB@chimera>
 <_H4l51C1wXN.A.yDC.yGuqNB@chimera>
 <BANLkTimeaHwBiZoz=isCM=qtBxoxaBqDUw@mail.gmail.com>
 <BANLkTi=1jO73DXDTD50bVpU82qphVKmRCw@mail.gmail.com>
 <4DAC2429.5000105@fusionio.com>
 <BANLkTinCWWYqnksxevho9TN3u6ZC_Rjzwg@mail.gmail.com>
 <4DAC82E6.3020809@fusionio.com>
 <BANLkTimaekpwmK+z=ePE+XSP6GUteidwfw@mail.gmail.com>
 <4DAD5156.2050300@fusionio.com>
 <4DAD6EF2.5070405@fusionio.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <4DAD6EF2.5070405-5c4llco8/ftWk0Htik3J/w@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Jens Axboe <jaxboe-5c4llco8/ftWk0Htik3J/w@public.gmane.org>
Cc: Bart Van Assche <bvanassche-HInyCGIudOg@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Neil Brown <neilb-l3A5Bk7waGM@public.gmane.org>

> +		blk_run_queue_async(sdev->request_queue);

This doesn't even have to be async except when scsi drivers call
cmd->scsi_done directly.  It seems like if this always went through the
softirq (or kblockd) we could still run it in context for the others.

> +	/*
> +	 * This get/put dance makes no sense
> +	 */
>  	get_device(&rport->dev);
> -
> -	spin_lock_irqsave(rport->rqst_q->queue_lock, flags);
> -	flagset = test_bit(QUEUE_FLAG_REENTER, &rport->rqst_q->queue_flags) &&
> -		  !test_bit(QUEUE_FLAG_REENTER, &rport->rqst_q->queue_flags);
> -	if (flagset)
> -		queue_flag_set(QUEUE_FLAG_REENTER, rport->rqst_q);
> -	__blk_run_queue(rport->rqst_q);
> -	if (flagset)
> -		queue_flag_clear(QUEUE_FLAG_REENTER, rport->rqst_q);
> -	spin_unlock_irqrestore(rport->rqst_q->queue_lock, flags);
> -
> +	blk_run_queue_async(rport->rqst_q);

And the QUEUE_FLAG_REENTER mess here never made sense either as it
tested for a bit beeing set and not set at the same time.  So this one
actually should be able to be replaced by a plain blk_run_queue.
