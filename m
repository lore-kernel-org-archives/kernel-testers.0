From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #14951] lockdep possible recursive lock in slab parent->list->rlock
Date: Mon, 4 Jan 2010 21:18:53 +0100
Message-ID: <201001042118.53662.rjw@sisk.pl>
References: <LptzGUUXbTK.A.MSF.ymhOLB@chimera> <NJVdobuNFNK.A.pdF.3mhOLB@chimera> <84144f021001030336y30444880vb6b9c251eb8a049a@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <84144f021001030336y30444880vb6b9c251eb8a049a-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andi Kleen <andi-Vw/NltI1exuRpAAqCnN02g@public.gmane.org>

On Sunday 03 January 2010, Pekka Enberg wrote:
> Hi Rafael,
> 
> On Tue, Dec 29, 2009 at 5:10 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> >
> > The following bug entry is on the current list of known regressions
> > from 2.6.32.  Please verify if it still should be listed and let me know
> > (either way).
> >
> >
> > Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=14951
> > Subject         : lockdep possible recursive lock in slab parent->list->rlock
> > Submitter       : Andi Kleen <andi-Vw/NltI1exuRpAAqCnN02g@public.gmane.org>
> > Date            : 2009-12-27 12:06 (3 days old)
> > References      : http://marc.info/?l=linux-kernel&m=126191560531463&w=4
> > Handled-By      : Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
> > Patch           : http://patchwork.kernel.org/patch/69829/
> 
> This bug is fixed by the following commit in Linus' tree:
> 
> http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commitdiff;h=00afa758067ac1c947149ef766adcdfe30c44d7d

Thanks, closed.

Rafael
