From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Subject: Re: [Bug #13107] LTP 20080131 causes defunct processes w/2.6.30-rc1
Date: Tue, 19 May 2009 11:16:31 +0200
Message-ID: <20090519091631.GB31404@elte.hu>
References: <_AjETDMbIoL.A.DcH.RYzDKB@chimera> <385Pu-agh7M.A.K7C._ZzDKB@chimera> <alpine.LFD.2.01.0905171206330.3301@localhost.localdomain> <20090518144132.GA18607@redhat.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20090518144132.GA18607-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Oleg Nesterov <oleg-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Cc: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Kumar Gala <galak-XVmvHMARGAS8U2dJNN8I7kB+6BGkLq7r@public.gmane.org>, Sukadev Bhattiprolu <sukadev-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>, Roland McGrath <roland-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>


* Oleg Nesterov <oleg-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org> wrote:

> Sorry for delay, I had a vacation.
> 
> On 05/17, Linus Torvalds wrote:
> >
> > On Sat, 16 May 2009, Rafael J. Wysocki wrote:
> > >
> > > This message has been generated automatically as a part of a report
> > > of recent regressions.
> > >
> > > The following bug entry is on the current list of known regressions
> > > from 2.6.29.  Please verify if it still should be listed and let me know
> > > (either way).
> > >
> > >
> > > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13107
> > > Subject		: LTP 20080131 causes defunct processes w/2.6.30-rc1
> > > Submitter	: Kumar Gala <galak-XVmvHMARGAS8U2dJNN8I7kB+6BGkLq7r@public.gmane.org>
> > > Date		: 2009-04-09 15:43 (38 days old)
> > > First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=b3bfa0cba867f23365b81658b47efd906830879b
> > > References	: http://marc.info/?l=linux-kernel&m=123929187208953&w=4
> > > 		  http://lkml.org/lkml/2009/4/10/193
> > > Handled-By	: Sukadev Bhattiprolu <sukadev-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
> >
> > I think we have to revert that thing. I haven't heard of any fixes to that
> > commit.
> 
> I thought this was already resolved.
> 
> And I don't think the kernel is buggy, this is expected behaviour. 
> With this commit (actually, there were several patches) /sbin/init 
> respects SIGSTOP if the caller has rights to send it, this change 
> is intentional. I'd even say this is fix.
> 
> Note that even root can't stop init, SIGSTOP should be sent from 
> the parent namespace, or from ptracer. And ptracer could obviously 
> ptrace_stop() init even before this patch.

There's one important aspect here: _if_ a change results in 
user-space visible behavioral change, it does not matter how correct 
it is in the grand scheme of things. (beyond plain bugfixes solving 
crashes, etc.) What matters is whether there's any app out there 
that might possibly rely on the old behavior.

The LTP testcase might be synthetic, and it could be fixed and the 
commit might even end up being correct - but some thought should be 
expended on compatibility and real-life impact (and scope) here - 
not just on strict 'correctness'.

	Ingo
