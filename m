From: ebiederm-aS9lmoZGLiVWk0Htik3J/w@public.gmane.org (Eric W. Biederman)
Subject: Re: [Bug #15319] [BUG]: Possibe recursive locking detected in sysfs
Date: Thu, 25 Mar 2010 20:59:30 -0700
Message-ID: <m1vdcjohr1.fsf@fess.ebiederm.org>
References: <QQGfxbJf48H.A.NFD.uNopLB@chimera>
	<hTwaxgnIZ2O.A.iYE.FPopLB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <hTwaxgnIZ2O.A.iYE.FPopLB@chimera> (Rafael J. Wysocki's message of "Sun\, 21 Mar 2010 21\:30\:49 +0100 \(CET\)")
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, John Kacur <jkacur-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>

"Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> writes:

> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.32 and 2.6.33.
>
> The following bug entry is on the current list of known regressions
> introduced between 2.6.32 and 2.6.33.  Please verify if it still should
> be listed and let the tracking team know (either way).
>
>
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15319
> Subject		: [BUG]: Possibe recursive locking detected in sysfs
> Submitter	: John Kacur <jkacur-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
> Date		: 2010-02-11 17:11 (39 days old)
> Message-ID	: <520f0cf11002110911t3f125649v73062e9851e2cfb3-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
> References	: http://marc.info/?l=linux-kernel&m=126590832432598&w=2
> Handled-By	: Eric Biederman <ebiederm-BGArkANP9klv6pq1l3V1OdBPR1lH4CV8@public.gmane.org>

The false positives I introduced should be fixed as of 2.6.34-rc2.
If this bug still shows up in 2.6.34-rcX it indicates a real bug.

Eric
