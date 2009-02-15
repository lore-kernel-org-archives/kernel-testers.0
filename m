From: Damien Wyart <damien.wyart-GANU6spQydw@public.gmane.org>
Subject: Re: [Bug #12650] Strange load average and ksoftirqd behavior with
	2.6.29-rc2-git1
Date: Sun, 15 Feb 2009 11:43:27 +0100
Message-ID: <20090215104327.GB2320@localhost.localdomain>
References: <juADNmcceYF.A.mdD.Mr0lJB@chimera> <rjPbZ5GRJPO.A.1kE.ur0lJB@chimera> <20090215080941.GA2295@localhost.localdomain> <20090215090026.GA31147@elte.hu> <20090215095128.GA3234@localhost.localdomain> <20090215101351.GA23274@elte.hu> <20090215103445.GA2335@localhost.localdomain> <20090215104245.GA2320@localhost.localdomain>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20090215104245.GA2320-bi+AKbBUZKY6gyzm1THtWbp2dZbC/Bob@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

* Damien Wyart <damien.wyart-GANU6spQydw@public.gmane.org> [2009-02-15 11:42]:
> > > Note that if the box you test this on is multi-core or HT, then interpreting
> > > traces is easier if there's just a single CPU to look at. In that case i'd 
> > > suggest to reproduce with just a single core, by turning the second one off:

> > >    echo 0 > /sys/devices/system/cpu/cpu1/online

> > > Or, if the problem only occurs with two cpus, restrict tracing to CPU#1:

> > >    echo 2 > /debug/tracing/tracing_cpumask 

> > The box I test on is HT, so I tried the first suggestion and it made the
> > problem much less visible (but not completely absent).

> > So I used "echo 1 > /sys/devices/system/cpu/cpu1/online" to go back to
> > HT mode and then it made the problem much more visible on CPU#1:
> > ksoftirqd/1 is running a lot and ksoftirqd/0 is almost normal. The load
> > average is about 0.80 and the total running time for ksoftirqd/1 is
> > almost one minute (and I booted on rc5 ten minutes ago)!

> > So I followed the tracing steps in the tutorial (with the 1 sec sleep),
> > which gave me this:
> > http://damien.wyart.free.fr/trace_2.6.29-rc5_ksoftirqd_prob.txt.gz

> Of course, I used your first suggestion (tracing on CPU#1) to get this
                         ^^^^^
                         second !

> trace.

-- 
Damien
