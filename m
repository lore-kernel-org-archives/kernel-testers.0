From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #13069] regression in 2.6.29-git3 on SH/Dreamcast
Date: Sun, 17 May 2009 12:28:03 +0200
Message-ID: <200905171228.04027.rjw@sisk.pl>
References: <EJaiQ4Wfaz.A.3YG.4v85JB@chimera> <1240594638.4777.1.camel@localhost.localdomain> <84144f020905170112l789e9ec0p2bf6bb71879579e1@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <84144f020905170112l789e9ec0p2bf6bb71879579e1-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
Cc: Adrian McMenamin <adrian-TSF8l6Tg6ad3zSCowOiEO2GXanvQGlWp@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Manuel Lauss <mano-nEyxjcs6f3Vin2gBucwGBecsttgLyre6@public.gmane.org>

On Sunday 17 May 2009, Pekka Enberg wrote:
> On Thu, 2009-04-16 at 23:45 +0200, Rafael J. Wysocki wrote:
> >> This message has been generated automatically as a part of a report
> >> of recent regressions.
> >>
> >> The following bug entry is on the current list of known regressions
> >> from 2.6.29.  Please verify if it still should be listed and let me know
> >> (either way).
> >>
> >>
> >> Bug-Entry     : http://bugzilla.kernel.org/show_bug.cgi?id=13069
> >> Subject               : regression in 2.6.29-git3 on SH/Dreamcast
> >> Submitter     : Adrian McMenamin <adrian-TSF8l6Tg6afpT6hvJLqO3U8SxdOydiOw@public.gmane.org>
> >> Date          : 2009-03-29 19:04 (19 days old)
> >> References    : http://marc.info/?l=linux-kernel&m=123835353115372&w=4
> 
> On Fri, Apr 24, 2009 at 8:37 PM, Adrian McMenamin
> <adrian-TSF8l6Tg6ad3zSCowOiEO2GXanvQGlWp@public.gmane.org> wrote:
> > At this point it *looks* as though it was simply a question of
> > insufficient memory to boot, but I think it needs further testing.
> > Nobody else seems to have picked it up though.
> 
> Yeah, it looks like there's not enough memory to boot. It could well
> be that the kernel memory footprint got bigger but I don't think the
> bisected commit is at fault here. Perhaps we should just close the
> bug?

Done.

Thanks,
Rafael
