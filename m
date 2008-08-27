From: Mike Travis <travis-sJ/iWh9BUns@public.gmane.org>
Subject: Re: [Bug #11342] Linux 2.6.27-rc3: kernel BUG at mm/vmalloc.c - bisected
Date: Wed, 27 Aug 2008 07:36:30 -0700
Message-ID: <48B5666E.2020509@sgi.com>
References: <20080826192848.GA20653@redhat.com>	<48B460FE.2020100@sgi.com>	<200808271654.32721.nickpiggin@yahoo.com.au> <20080827.000506.177643294.davem@davemloft.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20080827.000506.177643294.davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Cc: nickpiggin-/E1597aS9LT0CCvOHzKKcA@public.gmane.org, davej-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org, torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, Alan.Brunelle-VXdhtT5mjnY@public.gmane.org, mingo-X9Un+BFzKDI@public.gmane.org, tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, arjan-VuQAYsv1563Yd54FQh9/CA@public.gmane.org, rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org, suresh.b.siddha-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, tony.luck-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, steiner-sJ/iWh9BUns@public.gmane.org, cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org

David Miller wrote:
> From: Nick Piggin <nickpiggin-/E1597aS9LT0CCvOHzKKcA@public.gmane.org>
> Date: Wed, 27 Aug 2008 16:54:32 +1000
> 
>> 5% is a pretty nasty performance hit... what sort of benchmarks are we
>> talking about here?
>>
>> I just made some pretty crazy changes to the VM to get "only" around 5
>> or so % performance improvement in some workloads.
>>
>> What places are making heavy use of cpumasks that causes such a slowdown?
>> Hopefully callers can mostly be improved so they don't need to use cpumasks
>> for common cases.
> 
> It's almost certainly from the cross-call dispatch call chain.
> 
> As just one example, just to do a TLB flush mm->cpu_vm_mask probably
> gets passed around as an aggregate two or three times on the way down
> to the APIC programming code on x86.  That's two or three 512 byte
> copies on the stack :)
> 
> Look at the sparc64 SMP code for how I solved the problem there.

I will, thanks!

Mike
