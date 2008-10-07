From: Nick Piggin <nickpiggin@yahoo.com.au>
Subject: Re: [Bug #11569] Don't complain about disabled irqs when the system has paniced
Date: Wed, 8 Oct 2008 02:44:06 +1100
Message-ID: <200810080244.06958.nickpiggin@yahoo.com.au>
References: <0pOgGB.A.uLG.E475IB@wind> <yWwteD.A.qTH.6475IB@wind> <20081006060238.GB3180@one.firstfloor.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1753755AbYJGPok@vger.kernel.org>
In-Reply-To: <20081006060238.GB3180@one.firstfloor.org>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Andi Kleen <andi@firstfloor.org>
Cc: "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>

On Monday 06 October 2008 17:02, Andi Kleen wrote:
> On Sat, Oct 04, 2008 at 07:32:54PM +0200, Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> >
> > The following bug entry is on the current list of known regressions
> > from 2.6.26.  Please verify if it still should be listed and let me know
> > (either way).
> >
> >
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11569
> > Subject		: Don't complain about disabled irqs when the system has paniced
> > Submitter	: Andi Kleen <andi@firstfloor.org>
> > Date		: 2008-09-02 13:49 (33 days old)
> > References	: http://marc.info/?l=linux-kernel&m=122036356127282&w=4
>
> The problem is actually worse than this description suggests. I updated
> the bugzilla entry now.
>
> The new smp_call_function() that is called from panic is quite unsuitable
> for this task:
> - It allocates memory (not a good idea in panic0
> - It complains about interrupt off
> - This whole thing breaks at least machine checks

Why doesn't it use something like nmi_shootdown_cpus on panic rather than
the (I guess less reliable and longer latency) smp_send_stop?
