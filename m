From: Boyan <btanastasov-/E1597aS9LT10XsdtD+oqA@public.gmane.org>
Subject: Re: [Bug #14388] keyboard under X with 2.6.31
Date: Wed, 14 Oct 2009 22:59:41 +0300
Message-ID: <4AD62DAD.9010604@yahoo.co.uk>
References: <56acieJJ2fF.A.nEB.Hzl0KB@chimera> <L6tb-VyKHZK.A.PaB.Ozl0KB@chimera> <C4F8B19E-F4B4-47F3-AE5B-4581C8E3F3AE@gmail.com> <87ljjgfcbu.fsf@spindle.srvr.nix> <alpine.LFD.2.01.0910121703390.3438@localhost.localdomain> <alpine.LFD.2.01.0910122004200.3438@localhost.localdomain> <4AD3F769.5080405@gmail.com> <alpine.LNX.2.01.0910130405200.9297@dyndns.pervalidus.net> <4AD437F9.9020708@yahoo.co.uk> <alpine.LFD.2.01.0910130745550.3438@localhost.localdomain> <4AD4DE4C.4010402@yahoo.co.uk> <alpine.LFD.2.01.0910131317360.26777@localhost.localdomain> <4AD4F548.2030506@microgate.com> <alpine.LFD.2.01.0910131514100.3404@localhost.localdomain> <1255478932.19056.24.camel@localhost.localdomain> <4AD51D6B.7010509@microgate.com> <alpine.LFD.2.01.0910131744590.3404@localhost.localdomain> <2009101412584
 6.1a3c8d40@lxorguk.ukuu.org.uk> <alpine.LFD.2.01.0910140804180.6146@localhost.localdomain> <alpine.LFD.2.01.0910140925440.6146@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.LFD.2.01.0910140925440.6146-bi+AKbBUZKY6gyzm1THtWbp2dZbC/Bob@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: Alan Cox <alan-qBU/x9rampVanCEyBjwyrvXRex20P6io@public.gmane.org>, Oleg Nesterov <oleg-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Paul Fulghum <paulkf-CZzk0lvu1V9l57MIdRCFDg@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Dmitry Torokhov <dmitry.torokhov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ed Tomlinson <edt-Yad3+ZauZac@public.gmane.org>, hirofumi-UIVanBePwB70ZhReMnHkpc8NsWr+9BEh@public.gmane.org

Linus Torvalds wrote:
> 
> On Wed, 14 Oct 2009, Linus Torvalds wrote:
>> But it's certainly true that it just never happened before. At least for 
>> the !low_latency case, I'm not so sure about the low_latency=1 case, but I 
>> haven't checked either - it would depend on any higher-level 
>> serialization.
> 
> Btw, we _could_ try to solve this by adding some workqueue function to 
> "run delayed work now", and then always doing the 'flush_to_ldisc()' 
> through the workqueue logic.
> 
> So this is an "alternate patch": instead of making flush_to_ldisc() be 
> safe to re-enter, we try to make sure it's always called through the whole 
> workqueue logic and thus serialized by that.
> 
> Of course, keventd itself is multi-threaded, so I'm not entirely sure even 
> -that- guarantees that one 'flush_to_ldisc()' couldn't be pending on one 
> CPU while it is then scheduled and then run on another CPU concurrently 
> too. The WORK_STRUCT_PENDING bit guarantees exclusion from the lists and 
> from being pending, but the work might be both pending and _running_ at 
> the same time, afaik.
> 
> I'm adding Oleg to the Cc, because he's the workqueue-master. Oleg?
> 
> The patch below is - surprise, surprise - entirely untested. I'm not sure 
> my 'flush_delayed_work()' implementation is entirely kosher. But it looks 
> like it might work, and it did compile for me (technically this is on top 
> of my flush_to_ldisc() patch, but they should be independent of each 
> other).
> 
> 			Linus
> 
> ---
>  drivers/char/tty_buffer.c |    2 +-
>  include/linux/workqueue.h |    1 +
>  kernel/workqueue.c        |   18 ++++++++++++++++++
>  3 files changed, 20 insertions(+), 1 deletions(-)
> 
> diff --git a/drivers/char/tty_buffer.c b/drivers/char/tty_buffer.c
> index 0296612..66fa4e1 100644
> --- a/drivers/char/tty_buffer.c
> +++ b/drivers/char/tty_buffer.c
> @@ -468,7 +468,7 @@ static void flush_to_ldisc(struct work_struct *work)
>   */
>  void tty_flush_to_ldisc(struct tty_struct *tty)
>  {
> -	flush_to_ldisc(&tty->buf.work.work);
> +	flush_delayed_work(&tty->buf.work);
>  }
>  
>  /**
> diff --git a/include/linux/workqueue.h b/include/linux/workqueue.h
> index 7ef0c7b..cf24c20 100644
> --- a/include/linux/workqueue.h
> +++ b/include/linux/workqueue.h
> @@ -207,6 +207,7 @@ extern int queue_delayed_work_on(int cpu, struct workqueue_struct *wq,
>  
>  extern void flush_workqueue(struct workqueue_struct *wq);
>  extern void flush_scheduled_work(void);
> +extern void flush_delayed_work(struct delayed_work *work);
>  
>  extern int schedule_work(struct work_struct *work);
>  extern int schedule_work_on(int cpu, struct work_struct *work);
> diff --git a/kernel/workqueue.c b/kernel/workqueue.c
> index addfe2d..ccefe57 100644
> --- a/kernel/workqueue.c
> +++ b/kernel/workqueue.c
> @@ -640,6 +640,24 @@ int schedule_delayed_work(struct delayed_work *dwork,
>  EXPORT_SYMBOL(schedule_delayed_work);
>  
>  /**
> + * flush_delayed_work - block until a dwork_struct's callback has terminated
> + * @dwork: the delayed work which is to be flushed
> + *
> + * Any timeout is cancelled, and any pending work is run immediately.
> + */
> +void flush_delayed_work(struct delayed_work *dwork)
> +{
> +	if (del_timer(&dwork->timer)) {
> +		struct cpu_workqueue_struct *cwq;
> +		cwq = wq_per_cpu(keventd_wq, get_cpu());
> +		__queue_work(cwq, &dwork->work);
> +		put_cpu();
> +	}
> +	flush_work(&dwork->work);
> +}
> +EXPORT_SYMBOL(flush_delayed_work);
> +
> +/**
>   * schedule_delayed_work_on - queue work in global workqueue on CPU after delay
>   * @cpu: cpu to use
>   * @dwork: job to be done
> 

Works for me. I couldn't reproduce the problem with only this patch on
top of  2.6.31.4.
