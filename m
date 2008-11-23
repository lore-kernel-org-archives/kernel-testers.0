From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #11965] regression introduced by - timers: fix itimer/many thread hang
Date: Sun, 23 Nov 2008 13:43:49 +0100
Message-ID: <200811231343.50307.rjw@sisk.pl>
References: <sBqd4qMeLzC.A.mgB.B7HKJB@chimera> <vyitTh0pP2N.A.t7C.D8HKJB@chimera> <20081123073929.GA23229@elte.hu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20081123073929.GA23229-X9Un+BFzKDI@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Doug Chapman <doug.chapman-VXdhtT5mjnY@public.gmane.org>, Frank Mayhar <fmayhar-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>, Oleg Nesterov <oleg-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Peter Zijlstra <peterz-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>

On Sunday, 23 of November 2008, Ingo Molnar wrote:
> 
> * Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> 
> > This message has been generated automatically as a part of a report 
> > of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions 
> > from 2.6.27.  Please verify if it still should be listed and let me 
> > know (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11965
> > Subject		: regression introduced by - timers: fix itimer/many thread hang
> > Submitter	: Doug Chapman <doug.chapman-VXdhtT5mjnY@public.gmane.org>
> > Date		: 2008-11-06 11:03 (17 days old)
> > First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=f06febc96ba8e0af80bcc3eaec0a109e88275fac
> > References	: http://marc.info/?l=linux-kernel&m=122596943416648&w=4
> > Handled-By	: Frank Mayhar <fmayhar-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
> > 		  Peter Zijlstra <peterz-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>
> > 		  Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
> 
> the hang is fixed by:
> 
>   commit ad474caca3e2a0550b7ce0706527ad5ab389a4d4
>   Author: Oleg Nesterov <oleg-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
>   Date:   Mon Nov 10 15:39:30 2008 +0100
> 
>     fix for account_group_exec_runtime(), make sure ->signal can't be freed under rq->lock

Thanks for the info and thanks for closing the bug. :-)

Rafael
