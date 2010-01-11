From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #15037] BUG during shutdown - bisected to commit e2912009
Date: Mon, 11 Jan 2010 21:10:46 +0100
Message-ID: <201001112110.46837.rjw@sisk.pl>
References: <wnS54-l8PVO.A.TlF.oMlSLB@chimera> <omZ8aBZReyD.A.0FG.xMlSLB@chimera> <6041d2001001110512p58e84103n53cf3729b28a5313@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <6041d2001001110512p58e84103n53cf3729b28a5313-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Marc Dionne <marc.c.dionne-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Xiaotian Feng <dfeng-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Mike Galbraith <efault-Mmb7MZpHnFY@public.gmane.org>, Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>

On Monday 11 January 2010, Marc Dionne wrote:
> On Sun, Jan 10, 2010 at 5:32 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> >
> > The following bug entry is on the current list of known regressions
> > from 2.6.32.  Please verify if it still should be listed and let me know
> > (either way).
> >
> >
> > Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=15037
> > Subject         : BUG during shutdown - bisected to commit e2912009
> > Submitter       : Marc Dionne <marc.c.dionne-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > Date            : 2010-01-02 0:27 (9 days old)
> > References      : http://marc.info/?l=linux-kernel&m=126239207631034&w=4
> > Handled-By      : Xiaotian Feng <dfeng-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
> > Patch           : http://patchwork.kernel.org/patch/71537/
> 
> I verified that the BUG still occurs with current git.
> The referenced patch does fix the issue for me, but it hasn't made its
> way into mainline yet.

Thanks for the update.

Rafael
