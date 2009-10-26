From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: Re: [Bug #14389] Build system issue
Date: Mon, 26 Oct 2009 21:59:35 +0100
Message-ID: <200910262159.35378.rjw@sisk.pl>
References: <Sj-rRjx6TwF.A.djE.vqe5KB@chimera> <6dRYo8ss7vL.A.OJG.Zre5KB@chimera> <20091026200555.GB24682@elte.hu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1752218AbZJZU5o@vger.kernel.org>
In-Reply-To: <20091026200555.GB24682@elte.hu>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Ingo Molnar <mingo@elte.hu>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Pavel Machek <pavel@ucw.cz>, Peter Zijlstra <peterz@infradead.org>, Sam Ravnborg <sam@ravnborg.org>

On Monday 26 October 2009, Ingo Molnar wrote:
> 
> * Rafael J. Wysocki <rjw@sisk.pl> wrote:
> 
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.31.  Please verify if it still should be listed and let me know
> > (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14389
> > Subject		: Build system issue
> > Submitter	: Peter Zijlstra <peterz@infradead.org>
> > Date		: 2009-10-09 8:58 (18 days old)
> > First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=575543347b5baed0ca927cb90ba8807396fe9cc9
> > References	: http://marc.info/?l=linux-kernel&m=125507914909152&w=4
> > 
> 
> This should be fixed upstream by:
> 
>  2331d1a: kbuild: revert "save ARCH & CROSS_COMPILE ..."

Thanks, closing.

Rafael
