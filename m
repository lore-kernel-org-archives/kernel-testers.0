From: Frederic Weisbecker <fweisbec-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #12465] KVM guests stalling on 2.6.28 (bisected)
Date: Tue, 24 Mar 2009 12:44:12 +0100
Message-ID: <20090324114409.GB6058@nowhere>
References: <qm8_cedJGaP.A.-NH.CPCvJB@chimera> <1237107837.27699.27.camel@kulgan.wumi.org.au> <49BE20B2.9070804@redhat.com> <1237207595.4964.31.camel@kulgan.wumi.org.au> <20090316200736.GD8393@nowhere> <1237244137.4964.54.camel@kulgan.wumi.org.au> <20090318001955.GB5143@nowhere> <1237338986.4801.11.camel@kulgan.wumi.org.au> <1237411441.5211.5.camel@kulgan.wumi.org.au> <1237611639.4933.4.camel@kulgan.wumi.org.au>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:received:date:from:to:cc
         :subject:message-id:references:mime-version:content-type
         :content-disposition:in-reply-to:user-agent;
        bh=ciLrWvxXAg0+dLrV4yeDefriHdPwe5cHH/erzgubWg8=;
        b=WUY5ZH7rTE88FPsIpZQWZrxiaJ+Mt7YX0inKHhydhPpKuOdpU/AWnbkpVkNeNmwQiN
         GlzkuOirqz1TlOqcgOp57XjKHCCfcL81vB5VtLs9/xzU+WlbjW2zdH3UhdbZOj0FEPkc
         FNjjBGQHqIqo+4iNqF+5OL3gyey6/etFATNQw=
Content-Disposition: inline
In-Reply-To: <1237611639.4933.4.camel-9TBizaOOD0ujuAshGpSIhRCuuivNXqWP@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Kevin Shanahan <kmshanah-biM/RbsGxha6c6uEtOJ/EA@public.gmane.org>
Cc: Avi Kivity <avi-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Mike Galbraith <efault-Mmb7MZpHnFY@public.gmane.org>, Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>

On Sat, Mar 21, 2009 at 03:30:39PM +1030, Kevin Shanahan wrote:
> On Thu, 2009-03-19 at 07:54 +1030, Kevin Shanahan wrote:
> > On Wed, 2009-03-18 at 11:46 +1030, Kevin Shanahan wrote:
> > > On Wed, 2009-03-18 at 01:20 +0100, Frederic Weisbecker wrote:
> > > > Ok, I've made a small script based on yours which could do this job.
> > > > You will just have to set yourself a threshold of latency
> > > > that you consider as buggy. I don't remember the latency you observed.
> > > > About 5 secs right?
> > > > 
> > > > It's the "thres" variable in the script.
> > > > 
> > > > The resulting trace should be a mixup of the function graph traces
> > > > and scheduler events which look like this:
> > > > 
> > > >  gnome-screensav-4691  [000]  6716.774277:   4691:120:S ==> [000]     0:140:R <idle>
> > > >   xfce4-terminal-4723  [001]  6716.774303:   4723:120:R   + [001]  4289:120:S Xorg
> > > >   xfce4-terminal-4723  [001]  6716.774417:   4723:120:S ==> [001]  4289:120:R Xorg
> > > >             Xorg-4289  [001]  6716.774427:   4289:120:S ==> [001]     0:140:R <idle>
> > > > 
> > > > + is a wakeup and ==> is a context switch.
> > > > 
> > > > The script will loop trying some pings and will only keep the trace that matches
> > > > the latency threshold you defined.
> > > > 
> > > > Tell if the following script work for you.
> > 
> > ...
> > 
> > > Either way, I'll try to get some results in my maintenance window
> > > tonight.
> > 
> > Testing did not go so well. I compiled and booted
> > 2.6.29-rc8-tip-02630-g93c4989, but had some problems with the system
> > load when I tried to start tracing - it shot up to around 16-20 or so. I
> > started shutting down VMs to try and get it under control, but before I
> > got back to tracing again the machine disappeared off the network -
> > unresponsive to ping.
> > 
> > When I got in this morning, there was nothing on the console, nothing in
> > the logs to show what went wrong. I will try again, but my next chance
> > will probably be Saturday. Stay tuned.
> 
> Okay, new set of traces have been uploaded to:
> 
>   http://disenchant.net/tmp/bug-12465/trace-3/
> 
> These were done on the latest tip, which I pulled down this morning:
> 2.6.29-rc8-tip-02744-gd9937cb.
> 
> The system load was very high again when I first tried to trace with
> sevarl guests running, so I ended up only having the one guest running
> and thankfully the bug was still reproducable that way.
> 
> Fingers crossed this set of traces is able to tell us something.
> 
> Regards,
> Kevin.
> 
> 

Sorry, I've been late to answer.
As I explained in my previous mail, you trace is only
a snapshot that happened in 10 msec.

I experimented different sizes for the ring buffer but even
a 1 second trace require 20 Mo of memory. And a so huge trace
would be impractical.

I think we should keep the trace filters we had previously.
If you don't minde, could you please retest against latest -tip
the following updated patch? Iadded the filters, fixed the python
subshell and also flushed the buffer more nicely according to
a recent feature in -tip:

echo > trace 

instead of switching to nop.
You will need to pull latest -tip again.

Thanks a lot Kevin!


#!/bin/bash

# Switch off all CPUs except for one to simplify the trace
echo 0 > /sys/devices/system/cpu/cpu1/online
echo 0 > /sys/devices/system/cpu/cpu2/online
echo 0 > /sys/devices/system/cpu/cpu3/online


# Make sure debugfs has been mounted
if [ ! -d /sys/kernel/debug/tracing ]; then
    mount -t debugfs debugfs /sys/kernel/debug
fi

# Set up the trace parameters
pushd /sys/kernel/debug/tracing || exit 1
echo 0 > tracing_enabled
echo function_graph > current_tracer
echo funcgraph-abstime > trace_options
echo funcgraph-proc    > trace_options

# Set here the kvm IP addr
addr="hermes-old"

# Set here a threshold of latency in sec
thres="5000"
found="False"
lat=0
prefix=/sys/kernel/debug/tracing

echo 1 > $prefix/events/sched/sched_wakeup/enable
echo 1 > $prefix/events/sched/sched_switch/enable

# Set the filter for functions to trace
echo ''         > set_ftrace_filter  # clear filter functions
echo '*sched*' >> set_ftrace_filter 
echo '*wake*'  >> set_ftrace_filter
echo '*kvm*'   >> set_ftrace_filter

# Reset the function_graph tracer
echo function_graph > $prefix/current_tracer

while [ "$found" != "True" ]
do
        # Flush the previous buffer
        echo trace > $prefix/trace

        echo 1 > $prefix/tracing_enabled
        lat=$(ping -c 1 $addr | grep rtt | grep -Eo " [0-9]+.[0-9]+")
        echo 0 > $prefix/tracing_enabled

	echo $lat
	found=$(python -c "print float(str($lat).strip())")
        sleep 0.01
done

echo 0 > $prefix/events/sched/sched_wakeup/enable
echo 0 > $prefix/events/sched/sched_switch/enable


echo "Found buggy latency: $lat"
echo "Please send the trace you will find on $prefix/trace"

