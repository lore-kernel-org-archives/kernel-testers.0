From: Adrian McMenamin <adrian@newgolddream.dyndns.info>
Subject: Re: [Bug #13069] regression in 2.6.29-git3 on SH/Dreamcast
Date: Sun, 17 May 2009 11:38:35 +0100
Message-ID: <1242556715.4568.0.camel@localhost.localdomain>
References: <EJaiQ4Wfaz.A.3YG.4v85JB@chimera>
	 <nY3-4PrO6XH.A.QZB.ow85JB@chimera>
	 <1240594638.4777.1.camel@localhost.localdomain>
	 <84144f020905170112l789e9ec0p2bf6bb71879579e1@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1757396AbZEQKjM@vger.kernel.org>
In-Reply-To: <84144f020905170112l789e9ec0p2bf6bb71879579e1@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Pekka Enberg <penberg@cs.helsinki.fi>
Cc: "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Manuel Lauss <mano@roarinelk.homelinux.net>

On Sun, 2009-05-17 at 11:12 +0300, Pekka Enberg wrote:
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
> >> Submitter     : Adrian McMenamin <adrian@newgolddream.dyndns.info>
> >> Date          : 2009-03-29 19:04 (19 days old)
> >> References    : http://marc.info/?l=linux-kernel&m=123835353115372&w=4
> 
> On Fri, Apr 24, 2009 at 8:37 PM, Adrian McMenamin
> <adrian@newgolddream.info> wrote:
> > At this point it *looks* as though it was simply a question of
> > insufficient memory to boot, but I think it needs further testing.
> > Nobody else seems to have picked it up though.
> 
> Yeah, it looks like there's not enough memory to boot. It could well
> be that the kernel memory footprint got bigger but I don't think the
> bisected commit is at fault here. Perhaps we should just close the
> bug?

I think that is probably the best course of action for now, yes.
