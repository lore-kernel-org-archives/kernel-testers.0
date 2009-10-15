From: Oleg Nesterov <oleg@redhat.com>
Subject: Re: [Bug #14388] keyboard under X with 2.6.31
Date: Thu, 15 Oct 2009 21:00:24 +0200
Message-ID: <20091015190024.GA31559@redhat.com>
References: <alpine.LFD.2.01.0910131317360.26777@localhost.localdomain> <4AD4F548.2030506@microgate.com> <alpine.LFD.2.01.0910131514100.3404@localhost.localdomain> <1255478932.19056.24.camel@localhost.localdomain> <4AD51D6B.7010509@microgate.com> <alpine.LFD.2.01.0910131744590.3404@localhost.localdomain> <20091014125846.1a3c8d40@lxorguk.ukuu.org.uk> <alpine.LFD.2.01.0910140804180.6146@localhost.localdomain> <alpine.LFD.2.01.0910140925440.6146@localhost.localdomain> <87aazsh80x.fsf@devron.myhome.or.jp>
Mime-Version: 1.0
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1762463AbZJOTF5@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <87aazsh80x.fsf@devron.myhome.or.jp>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, Alan Cox <alan@lxorguk.ukuu.org.uk>, Paul Fulghum <paulkf@microgate.com>, Boyan <btanastasov@yahoo.co.uk>, "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Dmitry Torokhov <dmitry.torokhov@gmail.com>, Ed Tomlinson <edt@aei.ca>

On 10/16, OGAWA Hirofumi wrote:
>
> > +void flush_delayed_work(struct delayed_work *dwork)
> > +{
> > +	if (del_timer(&dwork->timer)) {
> > +		struct cpu_workqueue_struct *cwq;
> > +		cwq = wq_per_cpu(keventd_wq, get_cpu());
> > +		__queue_work(cwq, &dwork->work);
> > +		put_cpu();
> > +	}
> > +	flush_work(&dwork->work);
> > +}
> > +EXPORT_SYMBOL(flush_delayed_work);
> > +
> > +/**
>
> Sorry if I'm missing the point. Doesn't this have (possible) race with
> schedule_delayed_work() (i.e. by tty writer)?
>
>              cpu0                                      cpu1
>
>     if (del_timer(&dwork->timer)) {

If dwork->timer is pending - _PENDING must be set.
If del_timer() succeeds, nobody else can clear this bit.

>                                             // cpu0 doesn't set _PENDING
>                                             schedule_delayed_work()

and in this case schedule_delayed_work()->queue_delayed_work_on()
can't succeed because it does test_and_set_bit(_PENDING).


But. Since this helper was merged, I think it should use del_timer_sync()
to be correct. Yes, it is slower, but otherwise flush is racy.

And I think it should return a bolean to match flush_work(). IOW,

	int flush_delayed_work(struct delayed_work *dwork)
	{
		int requeued = false;

		if (del_timer(&dwork->timer)) {
			struct cpu_workqueue_struct *cwq;
			cwq = wq_per_cpu(keventd_wq, get_cpu());
			__queue_work(cwq, &dwork->work);
			put_cpu();

			requeued = true;
		}

		return flush_work(&dwork->work) || requeued;
	}

Not that I think this is terribly important, but still.

I'll send the patch.

Oleg.
