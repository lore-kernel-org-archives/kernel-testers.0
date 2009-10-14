From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: [Bug #14388] keyboard under X with 2.6.31
Date: Wed, 14 Oct 2009 13:55:41 -0700 (PDT)
Message-ID: <alpine.LFD.2.01.0910141344250.6146@localhost.localdomain>
References: <4AD4F548.2030506@microgate.com> <alpine.LFD.2.01.0910131514100.3404@localhost.localdomain> <1255478932.19056.24.camel@localhost.localdomain> <4AD51D6B.7010509@microgate.com> <alpine.LFD.2.01.0910131744590.3404@localhost.localdomain>
 <20091014125846.1a3c8d40@lxorguk.ukuu.org.uk> <alpine.LFD.2.01.0910140804180.6146@localhost.localdomain> <alpine.LFD.2.01.0910140925440.6146@localhost.localdomain> <20091014182037.GA10076@redhat.com> <alpine.LFD.2.01.0910141131050.6146@localhost.localdomain>
 <20091014195215.GA12936@redhat.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20091014195215.GA12936-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Oleg Nesterov <oleg-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Cc: Alan Cox <alan-qBU/x9rampVanCEyBjwyrvXRex20P6io@public.gmane.org>, Paul Fulghum <paulkf-CZzk0lvu1V9l57MIdRCFDg@public.gmane.org>, Boyan <btanastasov-/E1597aS9LT10XsdtD+oqA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Dmitry Torokhov <dmitry.torokhov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ed Tomlinson <edt-Yad3+ZauZac@public.gmane.org>, OGAWA Hirofumi <hirofumi-UIVanBePwB70ZhReMnHkpc8NsWr+9BEh@public.gmane.org>



On Wed, 14 Oct 2009, Oleg Nesterov wrote:

> On 10/14, Linus Torvalds wrote:
> >
> > On Wed, 14 Oct 2009, Oleg Nesterov wrote:
> > >
> > > >  void tty_flush_to_ldisc(struct tty_struct *tty)
> > > >  {
> > > > -	flush_to_ldisc(&tty->buf.work.work);
> > > > +	flush_delayed_work(&tty->buf.work);
> > > >  }
> > >
> > > Can't comment this change because I don't understand the problem.
> >
> > The work function is "flush_to_ldisc()", and what we want to make sure of
> > is that the work has been called.
> 
> Thanks... This contradicts with
> 
> > > As for tty_flush_to_ldisc(), what if tty->buf.work.work was not scheduled?
> > > In this case flush_delayed_work() does nothing. Is it OK?
> >
> > Yes. In fact, it would be a bonus over our current "we always call that
> > flush function whether it was scheduled or not" code.
> 
> But I guess I understand what you meant.

Yeah. Basically, we want to make sure that it has been called *since it 
was scheduled*. In case it has already been called and is no longer 
pending at all, not calling it again is fine.

It's just that we didn't have any way to do that "force the pending 
delayed work to be scheduled", so instead we ran the scheduled function by 
hand synchronously. Which then seems to have triggered other problems.

> > If the del_timer() fails, the timer might still be running on another CPU
> > right at that moment, but not quite have queued the work yet. And then
> > we'd potentially get the wrong 'cwq' in flush_work() (we'd use the 'saved'
> > work), and not wait for it.
> 
> Or we can get the right cwq, but since the work is not queued and it is not
> cwq->current_work, flush_work() correctly assumes there is nothing to do.

Yes.

> > I wonder if we could mark the case of "workqueue is on timer" by setting
> > the "work->entry" list to some special value. That way
> >
> > 	list_empty(&work->entry)
> >
> > would always mean "it's neither pending _nor_ scheduled", and
> > flush_delayed_work() could have a fast-case check that at the top:
> >
> > 	if (list_empty(&work->entry))
> > 		return;
> 
> Yes, but we already have this - delayed_work_pending(). If it is
> false, it is neither pending nor scheduled. But it may be running,
> we can check cwq->current_work.

Yes. But I was more worried about the locks that "del_timer_sync()" does: 
the timer locks are more likely to be contended than the workqueue locks.

Maybe. I dunno.

> > > And just in case... Of course, if dwork was pending and running on another CPU,
> > > then flush_delayed_work(dwork) can return before the running callback terminates.
> > > But I guess this is what we want.
> >
> > No, we want to wait for the callback to terminate, so we do want to hit
> > that 'flush_work()' case.
> 
> Hmm. Now I am confused.
> 
> OK. Lets suppose dwork's callback is running on CPU 0.
> 
> A thread running on CPU 1 does queue_delayed_work(dwork, delay).
> 
> Now, flush_workqueue() will flush the 2nd "queue_delayed_work" correctly,
> but it can return before "running on CPU 0" completes.

Well, this is actually similar to the larger issue of "the tty layer 
doesn't want to ever run two works concurrently". So we already hit the 
concurrency bug.

That said, I had an earlier patch that should make that concurrency case 
be ok (you were not cc'd on that, because that was purely internal to the 
tty layer). And I think we want to do that regardless, especially since it 
_can_ happen with workqueues too (although I suspect it's rare enough in 
practice that nobody cares).

And to some degree, true races are ok. If somebody is writing data on 
another CPU at the same time as we are trying to flush it, not getting the 
flush is fine. The case we have really cared about we had real 
synchronization between the writer and the reader (ie the writer who added 
the delayed work will have done a wakeup and other things to let the 
reader know).

The reason for flushing it was that without the flush, the reader wouldn't 
necessarily see the data even though it's "old" by then - a delay of a 
jiffy is a _loong_ time.. So the flush doesn't need to be horribly exact, 
and after we have flushed, we will take locks that should serialize with 
the flusher.

So I don't think it really matters in practice, but I do think that we 
have that nasty hole in workqueues in general with overlapping work. I 
wish I could think of a way to fix it.

			Linus
