From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Subject: Re: [Bug #12667] Badness at kernel/time/timekeeping.c:98 in pmud
	(timekeeping_suspended)
Date: Mon, 9 Feb 2009 10:18:49 +0100
Message-ID: <20090209091849.GF31890@elte.hu>
References: <AIghyjFgMFP.A.uZD._10jJB@chimera> <sWhNs83kKPE.A.p4D.L20jJB@chimera> <878wognj00.fsf@burly.wgtn.ondioline.org>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <878wognj00.fsf-D7l3p2TGOOdLdt5/z87VRY6ehsQQaF5K@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Paul Collins <paul-dsjeNyW6Qm/D+ROgJ3VA+kB+6BGkLq7r@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>


* Paul Collins <paul-dsjeNyW6Qm/D+ROgJ3VA+kB+6BGkLq7r@public.gmane.org> wrote:

> "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> writes:
> 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12667
> > Subject		: Badness at kernel/time/timekeeping.c:98 in pmud (timekeeping_suspended)
> > Submitter	: Paul Collins <paul-dsjeNyW6Qm/D+ROgJ3VA+kB+6BGkLq7r@public.gmane.org>
> > Date		: 2009-01-21 7:15 (19 days old)
> > First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=1c5745aa380efb6417b5681104b007c8612fb496
> > References	: http://marc.info/?l=linux-kernel&m=123252215315106&w=4
> 
> I've just done ten suspend/resume cycles with 2.6.29-rc4 and this
> message was not logged, so it's either gone away or else become much
> more difficult to reproduce.

Various suspend handlers were enabling irqs spuriously - fixed by recent patches in 
-rc4. The warning above is consistent with the timekeeping code being surprised with 
a premature irqs-enable.

	Ingo
