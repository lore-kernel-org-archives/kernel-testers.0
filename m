From: Grant Coady <grant_lkml-rGYn+TmxqGy6c6uEtOJ/EA@public.gmane.org>
Subject: Re: [Bug #11278] 2.6.27-rc2: Very odd top: '5124095h kthreadd' display
Date: Sun, 10 Aug 2008 10:37:29 +1000
Message-ID: <otds94lkpmrooo1s9c0he3j3pral8fmojl@4ax.com>
References: <VYYCiQF4qDI.A.BPH.KCjnIB@albercik> <cX_-nNkxKaF.A.WR.xCjnIB@albercik>
Reply-To: Grant Coady <gcoady.lk-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <cX_-nNkxKaF.A.WR.xCjnIB@albercik>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Sun, 10 Aug 2008 00:43:52 +0200 (CEST), "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

>This message has been generated automatically as a part of a report
>of recent regressions.
>
>The following bug entry is on the current list of known regressions
>from 2.6.26.  Please verify if it still should be listed and let me know
>(either way).
>
>
>Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11278
>Subject		: 2.6.27-rc2: Very odd top: '5124095h kthreadd' display
>Submitter	: Grant Coady <grant_lkml-rGYn+TmxqGy6c6uEtOJ/EA@public.gmane.org>
>Date		: 2008-08-07 7:03 (3 days old)
>References	: http://marc.info/?l=linux-kernel&m=121809267318795&w=4
>

Patch from Peter Z. fixed it for me, so it may be removed now.

Grant.
