From: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Subject: Re: [Bug #11342] Linux 2.6.27-rc3: kernel BUG at mm/vmalloc.c -
 bisected
Date: Tue, 26 Aug 2008 13:45:35 -0700 (PDT)
Message-ID: <20080826.134535.193703558.davem@davemloft.net>
References: <20080826072220.GB31876@elte.hu>
	<20080826.004607.253712060.davem@davemloft.net>
	<48B4542A.1050004@sgi.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <48B4542A.1050004-sJ/iWh9BUns@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: travis-sJ/iWh9BUns@public.gmane.org
Cc: mingo-X9Un+BFzKDI@public.gmane.org, torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, Alan.Brunelle-VXdhtT5mjnY@public.gmane.org, tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, arjan-VuQAYsv1563Yd54FQh9/CA@public.gmane.org, rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org

From: Mike Travis <travis-sJ/iWh9BUns@public.gmane.org>
Date: Tue, 26 Aug 2008 12:06:18 -0700

> David Miller wrote:
> > The only case that didn't work was due to a limitation in
> > arch interfaces for the new generic smp_call_function() code.
> > It passes a cpumask_t instead of a pointer to one via
> > arch_send_call_function_ipi().
> > 
> > But other than that, the whole sparc64 SMP stuff uses cpumask_t
> > pointers only.
> > 
> > What it comes down to is that you have to do the "self cpu"
> > and other tests in the cross-call dispatch routines themselves,
> > instead of at the top-level working on cpumask_t objects.
> > 
> > Otherwise you have to modify cpumask_t objects and thus pluck
> > them onto the stack where they take up silly amounts of space.
> 
> Yes, I had proposed either modifying, or supplementing a new
> smp_call function to pass the cpumask_t as a pointer (similar
> to set_cpus_allowed_ptr.)  But an ABI change such as this was
> not well received at the time.

What it seems to come down to is that any cpumask_t not inside of
a dynamically allocated object should be marked const.

And that is something we can enforce at compile time.

Linus has just suggested dynamically allocating cpumask_t's
for such cases but I don't see that as the fix either.

Just mark them const and enforce that cpumask_t objects can only
be modified when they appear in dynamically allocated objects.

You really don't need to modify the ones that passed around functions
anyways.  The only code that wants to change bits in these things is
the cpu cross-call dispatch stuff, and that cpu choice logic can just
live where it belongs down in the cross-call dispatch code.
