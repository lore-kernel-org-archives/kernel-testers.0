From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Subject: Re: [Bug #12650] Strange load average and ksoftirqd behavior with
	2.6.29-rc2-git1
Date: Sun, 15 Feb 2009 11:13:51 +0100
Message-ID: <20090215101351.GA23274@elte.hu>
References: <juADNmcceYF.A.mdD.Mr0lJB@chimera> <rjPbZ5GRJPO.A.1kE.ur0lJB@chimera> <20090215080941.GA2295@localhost.localdomain> <20090215090026.GA31147@elte.hu> <20090215095128.GA3234@localhost.localdomain>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20090215095128.GA3234-bi+AKbBUZKY6gyzm1THtWbp2dZbC/Bob@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Damien Wyart <damien.wyart-GANU6spQydw@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>


* Damien Wyart <damien.wyart-GANU6spQydw@public.gmane.org> wrote:

> > > Load average is between 0.30 and 0.60 when the machine is idle, the
> > > two ksoftirqd threads get a very high total running time in top.
> > > This is on a P4 machine. On a recent laptop, the load is not as
> > > high, but the ksoftirqd threads also get a very high total running
> > > time.
> 
> > Mind having a look at this anomaly with the function graph tracer? We are
> > interested in a representative trace that shows the weird ksoftirq activities.
> > [ which trace could possibly pinpoint their origin. ]
> 
> > Here's the tracing quickstart:
> 
> >    http://redhat.com/~mingo/tip.git/tracing-quickstart.txt
> 
> > Also attached below. Let me know if you have trouble getting a good trace,
> > or if any of the steps were non-intuitive or burdensome to you.
> 
> Thanks for your feedback & explanations; I will try to have a look at
> all this material asap, I think tomorrow.

Note that if the box you test this on is multi-core or HT, then interpreting
traces is easier if there's just a single CPU to look at. In that case i'd 
suggest to reproduce with just a single core, by turning the second one off:

   echo 0 > /sys/devices/system/cpu/cpu1/online

Or, if the problem only occurs with two cpus, restrict tracing to CPU#1:

   echo 2 > /debug/tracing/tracing_cpumask 

	Ingo
