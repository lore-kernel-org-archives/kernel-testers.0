From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: [Bug #14388] keyboard under X with 2.6.31
Date: Wed, 14 Oct 2009 11:51:23 -0700 (PDT)
Message-ID: <alpine.LFD.2.01.0910141131050.6146@localhost.localdomain>
References: <4AD4DE4C.4010402@yahoo.co.uk> <alpine.LFD.2.01.0910131317360.26777@localhost.localdomain> <4AD4F548.2030506@microgate.com> <alpine.LFD.2.01.0910131514100.3404@localhost.localdomain> <1255478932.19056.24.camel@localhost.localdomain>
 <4AD51D6B.7010509@microgate.com> <alpine.LFD.2.01.0910131744590.3404@localhost.localdomain> <20091014125846.1a3c8d40@lxorguk.ukuu.org.uk> <alpine.LFD.2.01.0910140804180.6146@localhost.localdomain> <alpine.LFD.2.01.0910140925440.6146@localhost.localdomain>
 <20091014182037.GA10076@redhat.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20091014182037.GA10076-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Oleg Nesterov <oleg-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Cc: Alan Cox <alan-qBU/x9rampVanCEyBjwyrvXRex20P6io@public.gmane.org>, Paul Fulghum <paulkf-CZzk0lvu1V9l57MIdRCFDg@public.gmane.org>, Boyan <btanastasov-/E1597aS9LT10XsdtD+oqA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Dmitry Torokhov <dmitry.torokhov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ed Tomlinson <edt-Yad3+ZauZac@public.gmane.org>, OGAWA Hirofumi <hirofumi-UIVanBePwB70ZhReMnHkpc8NsWr+9BEh@public.gmane.org>



On Wed, 14 Oct 2009, Oleg Nesterov wrote:
> 
> >  void tty_flush_to_ldisc(struct tty_struct *tty)
> >  {
> > -	flush_to_ldisc(&tty->buf.work.work);
> > +	flush_delayed_work(&tty->buf.work);
> >  }
> 
> Can't comment this change because I don't understand the problem.

The work function is "flush_to_ldisc()", and what we want to make sure of 
is that the work has been called. We used to just call the work function 
directly - but that meant that now one CPU might be running that "direct" 
call, while another CPU might be running flush_to_ldisc through keventd.

So this makes the "flush_to_ldisc()" is now instead always called through 
keventd (but there's still a possibility that two keventd threads run it 
concurrently - although that is going to be _very_ rare).

> 
> > + * flush_delayed_work - block until a dwork_struct's callback has terminated
> > + * @dwork: the delayed work which is to be flushed
> > + *
> > + * Any timeout is cancelled, and any pending work is run immediately.
> > + */
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
> 
> I think this is correct. If del_timer() succeeds, we "own" _PENDING bit and
> dwork->work must not be queued. But afaics this helper needs del_timer_sync(),
> otherwise I am not sure about the "flush" part.

Hmm. I wanted to avoid del_timer_sync(), because it's so expensive for the 
case when the timer isn't running at all, but I do think you're correct.

If the del_timer() fails, the timer might still be running on another CPU 
right at that moment, but not quite have queued the work yet. And then 
we'd potentially get the wrong 'cwq' in flush_work() (we'd use the 'saved' 
work), and not wait for it.

I wonder if we could mark the case of "workqueue is on timer" by setting 
the "work->entry" list to some special value. That way

	list_empty(&work->entry)

would always mean "it's neither pending _nor_ scheduled", and 
flush_delayed_work() could have a fast-case check that at the top:

	if (list_empty(&work->entry))
		return;

or similar. When we do the 'insert_work()' in the timer function, the 
'list_empty()' invariant wouldn't change, so you could do that locklessly.

Of course, I've just talked about how much I hate subtle locking in the 
tty layer. This would be subtle, but we could document it, and it would be 
in the core kernel rather than a driver layer. 

> And just in case... Of course, if dwork was pending and running on another CPU,
> then flush_delayed_work(dwork) can return before the running callback terminates.
> But I guess this is what we want.

No, we want to wait for the callback to terminate, so we do want to hit 
that 'flush_work()' case.

> As for tty_flush_to_ldisc(), what if tty->buf.work.work was not scheduled?
> In this case flush_delayed_work() does nothing. Is it OK?

Yes. In fact, it would be a bonus over our current "we always call that 
flush function whether it was scheduled or not" code.

			Linus
