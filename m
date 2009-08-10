From: Gene Heskett <gene.heskett-H+0wwilmMs3R7s880joybQ@public.gmane.org>
Subject: Re: [Bug #13899] Oops from tar, 2.6.31-rc5, 32 bit on quad core phenom.
Date: Sun, 09 Aug 2009 23:42:43 -0400
Message-ID: <200908092342.43656.gene.heskett@verizon.net>
References: <AuPdDySr74O.A.5LC.Pj1fKB@chimera>
 <u1L1PAbl8zG.A.1SD.pj1fKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-reply-to: <u1L1PAbl8zG.A.1SD.pj1fKB@chimera>
Content-disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Sunday 09 August 2009, Rafael J. Wysocki wrote:
>This message has been generated automatically as a part of a report
>of recent regressions.
>
>The following bug entry is on the current list of known regressions
>from 2.6.30.  Please verify if it still should be listed and let me know
>(either way).
>
>
>Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13899
>Subject		: Oops from tar, 2.6.31-rc5, 32 bit on quad core phenom.
>Submitter	: Gene Heskett <gene.heskett-H+0wwilmMs3R7s880joybQ@public.gmane.org>
>Date		: 2009-08-01 13:04 (9 days old)
>References	: http://marc.info/?l=linux-kernel&m=124913190304149&w=4

Yes, it is still doing it to rc5 but only on the first invocation after the 
bootup.  Strangely, it apparently has no other effect, either on the machine, 
or how amanda itself works.

-- 
Cheers, Gene
"There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo. Please use in that order."
-Ed Howdershelt (Author)
The NRA is offering FREE Associate memberships to anyone who wants them.
<https://www.nrahq.org/nrabonus/accept-membership.asp>

If I set here and stare at nothing long enough, people might think
I'm an engineer working on something.
		-- S.R. McElroy
