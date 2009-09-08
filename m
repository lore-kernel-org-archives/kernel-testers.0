From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: [Bug #13819] system freeze when switching to console
Date: Tue, 8 Sep 2009 12:19:05 -0700 (PDT)
Message-ID: <alpine.LFD.2.01.0909081209260.7458@localhost.localdomain>
References: <2ehA7xoGvXL.A.4PB.3eBpKB@chimera>  <Vm51Upp4EV.A.r-D.mgBpKB@chimera> <1252427375.14735.130.camel@rc-desk>  <alpine.LFD.2.01.0909080943030.7458@localhost.localdomain> <1252431375.14735.139.camel@rc-desk>
 <alpine.LFD.2.01.0909081039300.7458@localhost.localdomain>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.LFD.2.01.0909081039300.7458-bi+AKbBUZKY6gyzm1THtWbp2dZbC/Bob@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: reinette chatre <reinette.chatre-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Eric Anholt <eric-WhKQ6XTQaPysTnJN9+BGXg@public.gmane.org>, "Ma, Ling" <ling.ma-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, "bugzilla-daemon-590EEB7GvNiWaY/ihj7yzEB+6BGkLq7r@public.gmane.org" <bugzilla-daemon-590EEB7GvNiWaY/ihj7yzEB+6BGkLq7r@public.gmane.org>



On Tue, 8 Sep 2009, Linus Torvalds wrote:
> 
> The code here is
> 
> 	  16:	48 8b 80 00 01 00 00 	mov    0x100(%rax),%rax
> 	  1d:	48 8b 50 08          	mov    0x8(%rax),%rdx
> 	  21:	48 85 d2             	test   %rdx,%rdx
> 	  24:	74 11                	je     0x37
> 	  26:	49 8b 44 24 78       	mov    0x78(%r12),%rax
> 	  2b:*	8b 80 84 00 00 00    	mov    0x84(%rax),%eax     <-- trapping instruction
> 	  31:	89 82 08 08 00 00    	mov    %eax,0x808(%rdx)
> 	  37:	f6 45 a0 02          	testb  $0x2,-0x60(%rbp)
> 
> and that "testb $0x2, -0x60(%rbp)" seems to be the
> 
> 	if (iir & I915_USER_INTERRUPT) {

Yeah, that seems to be the right thing.

So the actual faulting instruction is from this:

                if (dev->primary->master) {
                        master_priv = dev->primary->master->driver_priv;
                        if (master_priv->sarea_priv)
                                master_priv->sarea_priv->last_dispatch =
					READ_BREADCRUMB(dev_priv);

and it looks like %rax starts out being 'dev', then the

	mov    0x100(%rax),%rax

means that %rax is now 'dev->primary', and then

	mov    0x8(%rax),%rdx

moves 'dev->primary->master' into %rdx. It's not zero, so we then do that 
READ_BREADCRUMB(dev_priv), which expands to

	READ_HWSP(dev_priv, I915_BREADCRUMB_INDEX)

which in turn is

	(((volatile u32*)(dev_priv->hw_status_page))[reg])

and it looks like dev_priv->hw_status_page is NULL.

You can verify this by looking at teh exception address:

	BUG: unable to handle kernel NULL pointer dereference at 0000000000000084

and that '84' is I915_BREADCRUMB_INDEX*4 (0x21*4).

And the problem seems to be that we've cleared the hw_status_page pointer 
in i915_gem_cleanup_hws():

	dev_priv->hw_status_page = NULL;

and we did that in 

  i915_gem_idle() ->
    i915_gem_cleanup_ringbuffer() ->
      i915_gem_cleanup_hws()

so now since interrupts are still enabled, you'll get a NULL pointer 
dereference.

I think my patch is correct.

		Linus
