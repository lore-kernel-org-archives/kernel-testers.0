From: Mike Travis <travis-sJ/iWh9BUns@public.gmane.org>
Subject: Re: [Bug #11342] Linux 2.6.27-rc3: kernel BUG at mm/vmalloc.c - bisected
Date: Wed, 27 Aug 2008 07:48:55 -0700
Message-ID: <48B56957.8070909@sgi.com>
References: <200808271654.32721.nickpiggin@yahoo.com.au>	<20080827.000506.177643294.davem@davemloft.net>	<200808271747.14690.nickpiggin@yahoo.com.au> <20080827.014457.140528687.davem@davemloft.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20080827.014457.140528687.davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Cc: nickpiggin-/E1597aS9LT0CCvOHzKKcA@public.gmane.org, davej-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org, torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, Alan.Brunelle-VXdhtT5mjnY@public.gmane.org, mingo-X9Un+BFzKDI@public.gmane.org, tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, arjan-VuQAYsv1563Yd54FQh9/CA@public.gmane.org, rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org, suresh.b.siddha-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, tony.luck-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, steiner-sJ/iWh9BUns@public.gmane.org, cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org

David Miller wrote:
> From: Nick Piggin <nickpiggin-/E1597aS9LT0CCvOHzKKcA@public.gmane.org>
> Date: Wed, 27 Aug 2008 17:47:14 +1000
> 
>> Yeah, I see. That's stupid isn't it? (Well, I guess it was completely
>> sane when cpumasks were word sized ;))
>>
>> Hopefully that accounts for a significant chunk...
> 
> There is a lot of indirect costs that are hard to see as well.
> 
> Two things a lot of these cross-call dispatch paths do is:
> 
> 1) Clear self-cpu
> 
> 2) AND with cpus_online
> 
> #1 can normally be a simple bit clear, but some places can also
> implement this with something like "cpus_andn(X, cpumask_of_cpu(cpu))"
> 
> It's simply easier to move those two things down to the bottom of
> the APIC programming code, they just loop over the cpumask doing
> an expensive APIC I/O operation anyways, might as well overlap it
> with these "skip self-cpu" and "skip not-online cpus" checks.
> 
> And oh yeah we get the stack wastage fixed too, isn't what what we
> were talking about? :-)

Yes, the most time consuming part was determining whether a kmalloc
could safely be used in the context of the function, and what to
do about the out-of-memory problem.  Pushing that down to something
like:  for_each_cpu_thats_online(cpu, *maskptr) would remove the need for
many of the temp masks.  A simple if (cpu != me) would take care of
excluding self.  It might have better interaction with cpu hotplug
as well, since the online map would be checked just before the call
to that cpu is made.

Thanks,
Mike
