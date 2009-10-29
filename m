From: Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: [Bug #14467] Linker errors on ia64 with NR_CPUS=4096
Date: Thu, 29 Oct 2009 14:39:19 -0400 (EDT)
Message-ID: <alpine.DEB.1.10.0910291435420.18197@V090114053VZO-1>
References: <Sj-rRjx6TwF.A.djE.vqe5KB@chimera> <6dRYo8ss7vL.A.nnF.Cre5KB@chimera> <alpine.DEB.1.10.0910271623210.20363@V090114053VZO-1> <alpine.LSU.2.00.0910271922490.19847@wotan.suse.de>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.LSU.2.00.0910271922490.19847-B4tOwbsTzaBolqkO4TVVkw@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Jeff Mahoney <jeffm-IBi9RG/b67k@public.gmane.org>, "Luck, Tony" <tony.luck-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>, Peter Zijlstra <peterz-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>, Tejun Heo <tj-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>

On Tue, 27 Oct 2009, Jiri Kosina wrote:

> On Tue, 27 Oct 2009, Christoph Lameter wrote:
>
> > The NR_CPUS array in the percpu section needs to be removed.
> >
> > A simple fix would be to allocate the rq_weight per cpu array
> > dynamically.
>
> There already are two patches for this acked by Ingo/Tejun, which Tejun is
> going to take through his tree tomorrow.
>
> 	http://lkml.org/lkml/2009/10/27/132

per cpu alloc from an atomic context without passing gfp flags through to
the page allocator? That does not look right. Sure wish that the percpu
allocator would be working from atomic contexts for other cases.

> 	http://lkml.org/lkml/2009/10/27/215

There is still heavy percpu use because of the patch for machines with
large numbers of processors. Another solution would be better that does
not require a N^2 sized array.
