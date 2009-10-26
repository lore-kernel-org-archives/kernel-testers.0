From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #14375] Intel(R) I/OAT DMA Engine init failed
Date: Mon, 26 Oct 2009 23:12:21 +0100
Message-ID: <200910262312.21298.rjw@sisk.pl>
References: <Sj-rRjx6TwF.A.djE.vqe5KB@chimera> <6dRYo8ss7vL.A.bIH.qre5KB@chimera> <a4423d670910261457o2e1ccb7t768199dfd9985270@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <a4423d670910261457o2e1ccb7t768199dfd9985270-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Dan Williams <dan.j.williams-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

On Monday 26 October 2009, Alexander Beregalov wrote:
> 2009/10/26 Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>:
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> >
> > The following bug entry is on the current list of known regressions
> > from 2.6.31.  Please verify if it still should be listed and let me know
> > (either way).
> >
> >
> > Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=14375
> > Subject         : Intel(R) I/OAT DMA Engine init failed
> > Submitter       : Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > Date            : 2009-10-02 9:46 (25 days old)
> > References      : http://marc.info/?l=linux-kernel&m=125447680016160&w=4
> > Handled-By      : Dan Williams <dan.j.williams-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
> > Patch           : http://patchwork.kernel.org/patch/51808/
> 
> When I patch reiserfs the bug goes to libata, it means ioatdma works
> and libata does not. It looks like inaccurate work with memory
> somewhere, but I do not know how to find it.
> I cannot reproduce it since 2.6.32-rc3 and I do not see any bugs since then.

Since you can't reproduce it with -rc3 and later, I'm going to close it now.
Please reopen if the problem reappears.

Best,
Rafael
