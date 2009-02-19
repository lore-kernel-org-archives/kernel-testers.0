From: FUJITA Tomonori <fujita.tomonori-Zyj7fXuS5i5L9jVzuh4AOg@public.gmane.org>
Subject: Re: [Bug #12612] hard lockup when interrupting cdda2wav
Date: Thu, 19 Feb 2009 22:49:44 +0900
Message-ID: <20090219224910U.fujita.tomonori@lab.ntt.co.jp>
References: <ROx6X68CGJG.A.NoH.m40lJB@chimera>
	<20090217171601.GA3351@horus.com>
	<200902172123.13052.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200902172123.13052.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: rjw-KKrjLPT3xs0@public.gmane.org
Cc: hias-vtPv7MOkFPkAvxtiuMwx3w@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, fujita.tomonori-Zyj7fXuS5i5L9jVzuh4AOg@public.gmane.org, James.Bottomley-d9PhHud1JfjCXq6kfMZ53/egYHeGw8Jk@public.gmane.org

On Tue, 17 Feb 2009 21:23:12 +0100
"Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> On Tuesday 17 February 2009, Matthias Reichl wrote:
> > The bug is still present in 2.6.28.5:
> > 
> > =============================================
> > [ INFO: possible recursive locking detected ]
> > 2.6.28.5-dbg #1
> > ---------------------------------------------
> > swapper/0 is trying to acquire lock:
> >  (&q->__queue_lock){.+..}, at: [<ffffffff8040e615>] blk_put_request+0x25/0x60
> > 
> > but task is already holding lock:
> >  (&q->__queue_lock){.+..}, at: [<ffffffff8040e4fa>] blk_end_io+0x5a/0xa0
> > 
> > other info that might help us debug this:
> > 1 lock held by swapper/0:
> >  #0:  (&q->__queue_lock){.+..}, at: [<ffffffff8040e4fa>] blk_end_io+0x5a/0xa0
> > 
> > stack backtrace:
> > Pid: 0, comm: swapper Not tainted 2.6.28.5-dbg #1
> > Call Trace:
> >  <IRQ>  [<ffffffff8026cd07>] __lock_acquire+0x1797/0x1930

There is a patch for this but it might take some time to push it into
mainline (I hope that James will move the pending sg fixes to
scsi-fixes tree but it might be too late):

http://marc.info/?l=linux-scsi&m=123436612119386&w=2

Sorry about that again.
