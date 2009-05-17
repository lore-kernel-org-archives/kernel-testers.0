From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #13118] iptables very slow after commit 784544739a25c30637397ace5489eeb6e15d7d49
Date: Sun, 17 May 2009 12:26:33 +0200
Message-ID: <200905171226.34104.rjw@sisk.pl>
References: <_AjETDMbIoL.A.DcH.RYzDKB@chimera> <385Pu-agh7M.A.geC.vZzDKB@chimera> <b6a2187b0905162306u17c07753w8af53b6ed807cf1d@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <b6a2187b0905162306u17c07753w8af53b6ed807cf1d-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Jeff Chua <jeff.chua.linux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Eric Dumazet <dada1-fPLkHRcR87vqlBn2x/YWAg@public.gmane.org>, Patrick McHardy <kaber-dcUjhNyLwpNeoWH0uzbU5w@public.gmane.org>, Stephen Hemminger <shemminger-ZtmgI6mnKB3QT0dZR+AlfA@public.gmane.org>

On Sunday 17 May 2009, Jeff Chua wrote:
> On Sun, May 17, 2009 at 3:20 AM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> 
> > Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=13118
> > Subject         : iptables very slow after commit 784544739a25c30637397ace5489eeb6e15d7d49
> > Submitter       : Jeff Chua <jeff.chua.linux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > Date            : 2009-04-10 16:05 (37 days old)
> > References      : http://lkml.org/lkml/2009/4/10/111
> >                  http://lkml.org/lkml/2009/4/25/83
> > Handled-By      : Eric Dumazet <dada1-fPLkHRcR87vqlBn2x/YWAg@public.gmane.org>
> 
> Fixed as of Apr 28.
> 
> commit 942e4a2bd680c606af0211e64eb216be2e19bf61
> Author: Stephen Hemminger <shemminger-ZtmgI6mnKB3QT0dZR+AlfA@public.gmane.org>
> Date:   Tue Apr 28 22:36:33 2009 -0700
> 
>     netfilter: revised locking for x_tables

Thanks, closed.

Best,
Rafael
