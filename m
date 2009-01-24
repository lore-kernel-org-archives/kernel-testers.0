From: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
Subject: Re: [Bug #12409] NULL pointer dereference at get_stats()
Date: Sat, 24 Jan 2009 09:39:03 +0900
Message-ID: <200901240939.EFD95330.VLFOStQHOFFMOJ@I-love.SAKURA.ne.jp>
References: <KTnguC9mFUC.A.VNB.TJRdJB@chimera>
	<cX2gZ6Cy9nC.A.N0B.pJRdJB@chimera>
	<20090121161828.GA2739@gambetta>
Mime-Version: 1.0
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1756106AbZAXAjU@vger.kernel.org>
In-Reply-To: <20090121161828.GA2739@gambetta>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: frederik.deweerdt@xprog.eu, rjw@sisk.pl
Cc: linux-kernel@vger.kernel.org, kernel-testers@vger.kernel.org

Hello.

Frederik Deweerdt wrote:
> On Mon, Jan 19, 2009 at 10:45:43PM +0100, Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a report
> > of regressions introduced between 2.6.27 and 2.6.28.
> > 
> > The following bug entry is on the current list of known regressions
> > introduced between 2.6.27 and 2.6.28.  Please verify if it still should
> > be listed and let me know (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12409
> > Subject		: NULL pointer dereference at get_stats()
> > Submitter	: Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>
> > Date		: 2008-12-30 12:53 (21 days old)
> > References	: http://marc.info/?l=linux-kernel&m=123064167008695&w=4
> > Handled-By	: Frederik Deweerdt <frederik.deweerdt@xprog.eu>
> > 
> > 
> Hello Rafael,
> 
> Not sure what the status should be for that one, it sure seems vmware
> related, and I don't have one handy.
> 
> Regards,
> Frederik
> 
The latest post regarding this problem starts at http://lkml.org/lkml/2009/1/4/349 .
It's not a VMware related problem.

A patch at http://lkml.org/lkml/2009/1/5/557 reported that "nolapic" option
doesn't prevent for_each_possible_cpu() from reaching CPU1, and per-CPU pointer
for CPU1 is NULL.



--- First call of for_each_possible_cpu() ---
Entering get_stats()
CPU=0
Leaving get_stats()

--- Second call of for_each_possible_cpu() ---
Entering get_stats()
CPU=0
CPU=1
lb_stats == NULL for CPU 1
Leaving get_stats()



Regards.
