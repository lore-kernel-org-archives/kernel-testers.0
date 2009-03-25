From: Kevin Shanahan <kmshanah@ucwb.org.au>
Subject: Re: [Bug #12465] KVM guests stalling on 2.6.28 (bisected)
Date: Thu, 26 Mar 2009 10:10:32 +1030
Message-ID: <1238024432.8669.6.camel@kulgan>
References: <qm8_cedJGaP.A.-NH.CPCvJB@chimera>
	 <1237107837.27699.27.camel@kulgan.wumi.org.au>
	 <49BE20B2.9070804@redhat.com> <1237207595.4964.31.camel@kulgan.wumi.org.au>
	 <20090316200736.GD8393@nowhere>
	 <1237244137.4964.54.camel@kulgan.wumi.org.au>
	 <20090318001955.GB5143@nowhere>
	 <1237338986.4801.11.camel@kulgan.wumi.org.au>
	 <1237411441.5211.5.camel@kulgan.wumi.org.au>
	 <1237611639.4933.4.camel@kulgan.wumi.org.au>
	 <20090324114409.GB6058@nowhere>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1757421AbZCYXkz@vger.kernel.org>
In-Reply-To: <20090324114409.GB6058@nowhere>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Frederic Weisbecker <fweisbec@gmail.com>
Cc: Avi Kivity <avi@redhat.com>, "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Ingo Molnar <mingo@elte.hu>, Mike Galbraith <efault@gmx.de>, Peter Zijlstra <a.p.zijlstra@chello.nl>

On Tue, 2009-03-24 at 12:44 +0100, Frederic Weisbecker wrote:
> Sorry, I've been late to answer.
> As I explained in my previous mail, you trace is only
> a snapshot that happened in 10 msec.
> 
> I experimented different sizes for the ring buffer but even
> a 1 second trace require 20 Mo of memory. And a so huge trace
> would be impractical.
> 
> I think we should keep the trace filters we had previously.
> If you don't minde, could you please retest against latest -tip
> the following updated patch? Iadded the filters, fixed the python
> subshell and also flushed the buffer more nicely according to
> a recent feature in -tip:
> 
> echo > trace 
> 
> instead of switching to nop.
> You will need to pull latest -tip again.

Ok, thanks for that. I'll get a new -tip kernel ready to test tonight.
I'm not sure about the change to the python subshell though:

> while [ "$found" != "True" ]
> do
>         # Flush the previous buffer
>         echo trace > $prefix/trace
> 
>         echo 1 > $prefix/tracing_enabled
>         lat=$(ping -c 1 $addr | grep rtt | grep -Eo " [0-9]+.[0-9]+")
>         echo 0 > $prefix/tracing_enabled
> 
> 	echo $lat
> 	found=$(python -c "print float(str($lat).strip())")
>         sleep 0.01
> done

kmshanah@kulgan:~$ python -c "print float(str(1.234).strip())"
1.234

That's not going to evaluate to "True" at all is it? What happened to
the test against the latency threshold value? Did you mean something
like this?

kmshanah@kulgan:~$ python -c "print float(str(1.234).strip()) > 5000"
False
kmshanah@kulgan:~$ python -c "print float(str(5001.234).strip()) > 5000"
True

Cheers,
Kevin.

