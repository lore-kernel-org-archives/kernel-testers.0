From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #13846] LEDs switched off permanently by power saving with rt61pci driver
Date: Mon, 10 Aug 2009 16:06:27 +0200
Message-ID: <200908101606.27144.rjw@sisk.pl>
References: <AuPdDySr74O.A.5LC.Pj1fKB@chimera> <u1L1PAbl8zG.A.EjD.3j1fKB@chimera> <200908101111.16762.chris2553@googlemail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200908101111.16762.chris2553-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: chris2553-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, linux-wireless-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On Monday 10 August 2009, Chris Clayton wrote:
> Hi Rafael,
> 
> On Sunday 09 August 2009, Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> >
> > The following bug entry is on the current list of known regressions
> > from 2.6.30.  Please verify if it still should be listed and let me know
> > (either way).
> >
> 
> Ivo sent a test patch for this and I tested it., but without success. I reported my findings but 
> didn't get a reply. See http://marc.info/?l=linux-wireless&m=124940189007154&w=4.
> 
> I suspect the failure is due to the same PS hardware probelms that were at the route of my original 
> report.. Unless one of the wireless folks say otherwise, I think we should close this on the basis 
> of busted hardware. I'm happy to simply eject the card and re-insert it now that I have some udev 
> scripts to tear down the wireless configuration on the ejection and set it uop again when the card 
> is re-inserted.

Thanks, closed.

Rafael
