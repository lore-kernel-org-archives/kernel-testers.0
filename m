From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #12806] i915 broken STR
Date: Tue, 10 Mar 2009 14:56:47 +0100
Message-ID: <200903101456.48444.rjw@sisk.pl>
References: <KiHv0irKPzE.A.l3.hUarJB@chimera> <200903072228.47358.rjw@sisk.pl> <1236651832.10190.20.camel@gaiman>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1236651832.10190.20.camel@gaiman>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Eric Anholt <eric-WhKQ6XTQaPysTnJN9+BGXg@public.gmane.org>
Cc: Harvey Harrison <harvey.harrison-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Dave Airlie <airlied-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>

On Tuesday 10 March 2009, Eric Anholt wrote:
> On Sat, 2009-03-07 at 22:28 +0100, Rafael J. Wysocki wrote:
> > On Saturday 07 March 2009, Harvey Harrison wrote:
> > > On Tue, 2009-03-03 at 20:25 +0100, Rafael J. Wysocki wrote:
> > > > This message has been generated automatically as a part of a report
> > > > of recent regressions.
> > > > 
> > > > The following bug entry is on the current list of known regressions
> > > > from 2.6.28.  Please verify if it still should be listed and let me know
> > > > (either way).
> > > > 
> > > > 
> > > > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12806
> > > > Subject		: i915 broken STR
> > > > Submitter	: Harvey Harrison <harvey.harrison-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > > > Date		: 2009-02-28 4:20 (4 days old)
> > > > First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=5669fcacc58bf3a7386057addffd280d75380858
> > > > References	: http://marc.info/?l=linux-kernel&m=123579487801064&w=4
> > > > 
> > > > 
> > > 
> > > This looks to have been a case of old-userspace..upgrading to
> > > xorg-intel-video 2.6.1 (ubuntu Jaunty Alpha5) fixes STR here.
> > 
> > Well, thanks, but I'm not really sure if this is a good news.
> > 
> > Jesse, Eric, does it mean we now break resume on anything earlier than 2.6.1
> > on the Harvey's hardware?
> 
> There's not much information (dmesg, Xorg.0.log) with this bug -- I'm
> guessing he's using KMS, given that that commit was where the problems
> started.  If so, yes, you really do need good userland for KMS to work.

BTW, Is suspend generally supposed to work with KMS and the 2.6.1 (or later) X
driver?

Rafael
