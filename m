From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #14922] 2.6.32 seemed to have broken nVidia MCP7A sata controller
Date: Mon, 25 Jan 2010 21:47:25 +0100
Message-ID: <201001252147.25868.rjw@sisk.pl>
References: <pYFNu11z2aM.A.pJH.CZMXLB@chimera> <q60Z28d_9yH.A.aX.kZMXLB@chimera> <51f3faa71001241825yec6e37br8032b7a3730ce840@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <51f3faa71001241825yec6e37br8032b7a3730ce840-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Robert Hancock <hancockrwd-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>, Mike Cui <cuicui-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Monday 25 January 2010, Robert Hancock wrote:
> On Sun, Jan 24, 2010 at 4:23 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> > This message has been generated automatically as a part of a report
> > of regressions introduced between 2.6.31 and 2.6.32.
> >
> > The following bug entry is on the current list of known regressions
> > introduced between 2.6.31 and 2.6.32.  Please verify if it still should
> > be listed and let me know (either way).
> >
> >
> > Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=14922
> > Subject         : 2.6.32 seemed to have broken nVidia MCP7A sata controller
> > Submitter       : Mike Cui <cuicui-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > Date            : 2009-12-19 6:13 (37 days old)
> > References      : http://marc.info/?l=linux-ide&m=126120323407742&w=4
> > Handled-By      : Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>
> >                  Robert Hancock <hancockrwd-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> 
> It's a confirmed regression. Waiting on some lspci -nn output from the
> reporter. However, for now, disabling auto-activate optimization on
> all NVIDIA AHCIs may be the easiest option.

Thanks for the update.

Rafael
