From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #16197] [BUG on 2.6.35-rc2] sysfs: cannot create duplicate filename '/devices/pci0000:00/0000:00:11.0/0000:02:03.0/slot'
Date: Fri, 9 Jul 2010 22:52:17 +0200
Message-ID: <201007092252.17784.rjw@sisk.pl>
References: <-IGZ64uxA6G.A.P0H.bLmNMB@chimera> <TXb9XdQzJoD.A.5eD.pNmNMB@chimera> <20100708173344.2d108ffd@virtuousgeek.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20100708173344.2d108ffd-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Alex Chiang <achiang-Z7WLFzj8eWMS+FvcfC7Uqw@public.gmane.org>, Ryan Wang <openspace.wang-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Friday, July 09, 2010, Jesse Barnes wrote:
> On Fri,  9 Jul 2010 01:41:34 +0200 (CEST)
> "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> 
> > This message has been generated automatically as a part of a summary report
> > of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.34.  Please verify if it still should be listed and let the tracking team
> > know (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=16197
> > Subject		: [BUG on 2.6.35-rc2] sysfs: cannot create duplicate filename '/devices/pci0000:00/0000:00:11.0/0000:02:03.0/slot'
> > Submitter	: Ryan Wang <openspace.wang-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > Date		: 2010-06-07 0:23 (32 days old)
> > Message-ID	: <AANLkTincwMZPnYW3S4uz4k2GOn52RpgBIBRfzyD010Yo-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
> > References	: http://marc.info/?l=linux-kernel&m=127587022219378&w=2
> 
> I thought this one was closed with the revert of the slot symlink?

You're right, closing.

Thanks,
Rafael
