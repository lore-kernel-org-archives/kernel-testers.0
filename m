From: Marc Dionne <marc.c.dionne-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #13423] JMicron SATA controller not available
Date: Sun, 07 Jun 2009 11:23:16 -0400
Message-ID: <4A2BDB64.6020404@gmail.com>
References: <bCxQpon4SCJ.A.RrF.yY7KKB@chimera>
 <D9VoutSOyXP.A.2oG.IZ7KKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-reply-to: <D9VoutSOyXP.A.2oG.IZ7KKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Yu Zhao <yu.zhao-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

On 06/07/2009 05:52 AM, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.29.  Please verify if it still should be listed and let me know
> (either way).
>
>
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13423
> Subject		: JMicron SATA controller not available
> Submitter	: Marc Dionne<marc.c.dionne-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2009-05-26 22:56 (13 days old)
> References	: http://lkml.org/lkml/2009/5/26/687
> Handled-By	: Yu Zhao<yu.zhao-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
> Patch		: http://lkml.org/lkml/2009/5/27/402

I verified that the bug is still there in mainline from this morning.

The fix is part of this pull request:
	http://lkml.org/lkml/2009/6/6/148
so hopefully it will make it in before the final release.

Marc
