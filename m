From: Arjan van de Ven <arjan@infradead.org>
Subject: Re: [Bug #13185] New x86 warning
Date: Sun, 26 Apr 2009 09:47:18 -0700
Message-ID: <20090426094718.20a5c0f6@infradead.org>
References: <47KgT3nlbjD.A.lnB.jc48JB@chimera>
	<Fg2zLW93smL.A.07B.qc48JB@chimera>
	<20090426093103.GA19267@elte.hu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1755693AbZDZQpq@vger.kernel.org>
In-Reply-To: <20090426093103.GA19267@elte.hu>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ingo Molnar <mingo@elte.hu>
Cc: "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Andi Kleen <andi@firstfloor.org>, Jeff Garzik <jeff@garzik.org>

On Sun, 26 Apr 2009 11:31:03 +0200
Ingo Molnar <mingo@elte.hu> wrote:

> 
> * Rafael J. Wysocki <rjw@sisk.pl> wrote:
> 
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.29.  Please verify if it still should be listed and let me
> > know (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13185
> > Subject		: New x86 warning
> > Submitter	: Jeff Garzik <jeff@garzik.org>
> > Date		: 2009-04-22 6:46 (4 days old)
> > References	:
> > http://marc.info/?l=linux-kernel&m=124038280020950&w=4
> 
> I saw this warning with certain GCC versions for several kernel 
> cycles, so it's not any recent change that triggers this and it is 
> not a regression.
> 
> GCC is simply wrong here - i have posted a workaround for that but 
> it is too ugly to be merged upstream.

http://gcc.gnu.org/bugzilla/show_bug.cgi?id=37921

is the filing in the gcc bugzilla btw
