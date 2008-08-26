From: Mike Travis <travis-sJ/iWh9BUns@public.gmane.org>
Subject: Re: [Bug #11342] Linux 2.6.27-rc3: kernel BUG at mm/vmalloc.c -	bisected
Date: Tue, 26 Aug 2008 13:01:02 -0700
Message-ID: <48B460FE.2020100@sgi.com>
References: <48B29F7B.6080405@hp.com> <48B2A421.7080705@hp.com> <alpine.LFD.1.10.0808251019380.3363@nehalem.linux-foundation.org> <alpine.LFD.1.10.0808251106270.3363@nehalem.linux-foundation.org> <48B313E0.1000501@hp.com> <alpine.LFD.1.10.0808251326500.3363@nehalem.linux-foundation.org> <alpine.LFD.1.10.0808251344250.3363@nehalem.linux-foundation.org> <alpine.LFD.1.10.0808251401590.3363@nehalem.linux-foundation.org> <48B452F3.9040304@sgi.com> <alpine.LFD.1.10.0808261205530.3363@nehalem.linux-foundation.org> <20080826192848.GA20653@redhat.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20080826192848.GA20653-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Dave Jones <davej-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Mike Travis <travis-sJ/iWh9BUns@public.gmane.org>, "Alan D. Brunelle" <Alan.Brunelle-VXdhtT5mjnY@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>

Dave Jones wrote:
...
> 
> But yes, for this to be even remotely feasible, there has to be a negligable
> performance cost associated with it, which right now, we clearly don't have.
> Given that the number of people running 4096 CPU boxes even in a few years time
> will still be tiny, punishing the common case is obviously absurd.
> 
> 	Dave
> 

I did do some fairly extensive benchmarking between configs of NR_CPUS = 128 and
4096 and most performance hits were in the neighborhood of < 5% on systems with
8 cpus and 4GB of memory (our most common test system).  [But changing cpumask_t's
to be pointers instead of values will likely increase this.]  I've tried to be
very sensitive to this issue with all my previous changes, so convincing the distros
to set NR_CPUS=4096 would be as painless for them as possible. ;-)

Btw, huge count cpu systems I don't think are that far away.  I believe the nextgen
Larabbee chips will be geared towards HPC applications [instead of just GFX apps],
and putting 4 of these chips on a motherboard would add up to 512 cpu threads (1024
if they support hyperthreading.)

Thanks,
Mike
