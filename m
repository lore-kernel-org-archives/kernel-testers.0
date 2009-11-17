From: Theodore Tso <tytso-3s7WtUTddSA@public.gmane.org>
Subject: Re: [Bug #14354] Bad corruption with 2.6.32-rc1 and upwards
Date: Mon, 16 Nov 2009 21:02:02 -0500
Message-ID: <20091117020202.GA23066@mit.edu>
References: <GUZt44bIwCE.A.vLF.pSdALB@chimera> <xXQGFmujPl.A.6w.YUdALB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <xXQGFmujPl.A.6w.YUdALB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Aneesh Kumar K.V" <aneesh.kumar-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>, Frank Mayhar <fmayhar-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>, Holger Freyther <zecke-MQnelBtSfJRAfugRpC6u6w@public.gmane.org>

On Mon, Nov 16, 2009 at 11:37:39PM +0100, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.31.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14354
> Subject		: Bad corruption with 2.6.32-rc1 and upwards
> Submitter	: Holger Freyther <zecke-MQnelBtSfJRAfugRpC6u6w@public.gmane.org>
> Date		: 2009-10-09 15:42 (39 days old)

Um, this was marked as resolved, until you reopened it and then reset
the state to New.  Why did you do this?

It's fixed in mainline as of commit d4da6c9 when Linus reverted commit
d0646f7.  Users could still see it if they mount a file system with -o
journal_checksum, but (a) it's no longer the default, and (b)
corruption if you use the non-default journal_checksum mount option is
not a regression.

We have fixes to make journal_checksum safe queued for 2.6.33, but the
revert fixes the regression problem.

						- Ted
