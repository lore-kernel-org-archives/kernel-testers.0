From: Nick Piggin <nickpiggin@yahoo.com.au>
Subject: Re: [Bug #11342] Linux 2.6.27-rc3: kernel BUG at mm/vmalloc.c =?iso-8859-1?q?-=09bisected?=
Date: Wed, 27 Aug 2008 16:54:32 +1000
Message-ID: <200808271654.32721.nickpiggin@yahoo.com.au>
References: <48B29F7B.6080405@hp.com> <20080826192848.GA20653@redhat.com> <48B460FE.2020100@sgi.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1754100AbYH0Gyv@vger.kernel.org>
In-Reply-To: <48B460FE.2020100@sgi.com>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Mike Travis <travis@sgi.com>
Cc: Dave Jones <davej@redhat.com>, Linus Torvalds <torvalds@linux-foundation.org>, "Alan D. Brunelle" <Alan.Brunelle@hp.com>, Ingo Molnar <mingo@elte.hu>, Thomas Gleixner <tglx@linutronix.de>, "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Arjan van de Ven <arjan@linux.intel.com>, Rusty Russell <rusty@rustcorp.com.au>, "Siddha, Suresh B" <suresh.b.siddha@intel.com>, "Luck, Tony" <tony.luck@intel.com>, Jack Steiner <steiner@sgi.com>, Christoph Lameter <cl@linux-foundation.org>

On Wednesday 27 August 2008 06:01, Mike Travis wrote:
> Dave Jones wrote:
> ...
>
> > But yes, for this to be even remotely feasible, there has to be a
> > negligable performance cost associated with it, which right now, we
> > clearly don't have. Given that the number of people running 4096 CPU
> > boxes even in a few years time will still be tiny, punishing the common
> > case is obviously absurd.
> >
> > 	Dave
>
> I did do some fairly extensive benchmarking between configs of NR_CPUS =
> 128 and 4096 and most performance hits were in the neighborhood of < 5% on
> systems with 8 cpus and 4GB of memory (our most common test system).

5% is a pretty nasty performance hit... what sort of benchmarks are we
talking about here?

I just made some pretty crazy changes to the VM to get "only" around 5
or so % performance improvement in some workloads.

What places are making heavy use of cpumasks that causes such a slowdown?
Hopefully callers can mostly be improved so they don't need to use cpumasks
for common cases.

Until then, it would be kind of sad for a distro to ship a generic x86
kernel and lose 5% performance because it is set to 4096 CPUs...

But if I misunderstand and you're talking about specific microbenchmarks to
find the worst case for huge cpumasks, then I take that back.


> [But 
> changing cpumask_t's to be pointers instead of values will likely increase
> this.]  I've tried to be very sensitive to this issue with all my previous
> changes, so convincing the distros to set NR_CPUS=4096 would be as painless
> for them as possible. ;-)
>
> Btw, huge count cpu systems I don't think are that far away.  I believe the
> nextgen Larabbee chips will be geared towards HPC applications [instead of
> just GFX apps], and putting 4 of these chips on a motherboard would add up
> to 512 cpu threads (1024 if they support hyperthreading.)

It would be quite interesting if they make them cache coherent / MP capable.
Will they be?
