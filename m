From: Paul Collins <paul-dsjeNyW6Qm/D+ROgJ3VA+kB+6BGkLq7r@public.gmane.org>
Subject: Re: [Bug #12667] Badness at kernel/time/timekeeping.c:98 in pmud (timekeeping_suspended)
Date: Mon, 16 Feb 2009 20:17:22 +1300
Message-ID: <87hc2u26m5.fsf@burly.wgtn.ondioline.org>
References: <AIghyjFgMFP.A.uZD._10jJB@chimera>
	<sWhNs83kKPE.A.p4D.L20jJB@chimera>
	<878wognj00.fsf@burly.wgtn.ondioline.org>
	<200902142342.59186.rjw@sisk.pl>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200902142342.59186.rjw-KKrjLPT3xs0@public.gmane.org> (Rafael J. Wysocki's message of
	"Sat, 14 Feb 2009 23:42:58 +0100")
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>, benh-XVmvHMARGAS8U2dJNN8I7kB+6BGkLq7r@public.gmane.org

"Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> writes:

> On Monday 09 February 2009, Paul Collins wrote:
>> "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> writes:
>> 
>> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12667
>> > Subject		: Badness at kernel/time/timekeeping.c:98 in pmud (timekeeping_suspended)
>> > Submitter	: Paul Collins <paul-dsjeNyW6Qm/D+ROgJ3VA+kB+6BGkLq7r@public.gmane.org>
>> > Date		: 2009-01-21 7:15 (19 days old)
>> > First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=1c5745aa380efb6417b5681104b007c8612fb496
>> > References	: http://marc.info/?l=linux-kernel&m=123252215315106&w=4
>> 
>> I've just done ten suspend/resume cycles with 2.6.29-rc4 and this
>> message was not logged, so it's either gone away or else become much
>> more difficult to reproduce.
>
> Thanks, I've closed the bug.

It turns out I didn't test this properly.  The warning is only triggered
when I close and open the lid, not when I run 'snooze' to suspend and
hit Return to resume, as I did for my so-called testing of 2.6.29-rc4.

Whatever is triggering the warning is still present in 2.6.29-rc5.

-- 
Paul Collins
Wellington, New Zealand

Dag vijandelijk luchtschip de huismeester is dood
