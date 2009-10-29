From: Tejun Heo <tj-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: [Bug #14467] Linker errors on ia64 with NR_CPUS=4096
Date: Thu, 29 Oct 2009 16:11:12 +0100
Message-ID: <4AE9B090.9090107@kernel.org>
References: <Sj-rRjx6TwF.A.djE.vqe5KB@chimera> <6dRYo8ss7vL.A.nnF.Cre5KB@chimera> <alpine.DEB.1.10.0910271623210.20363@V090114053VZO-1> <alpine.LSU.2.00.0910271922490.19847@wotan.suse.de> <alpine.DEB.1.10.0910291435420.18197@V090114053VZO-1> <4AE9AB23.8010207@kernel.org> <alpine.DEB.1.10.0910291455400.19555@V090114053VZO-1>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.DEB.1.10.0910291455400.19555@V090114053VZO-1>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Jeff Mahoney <jeffm-IBi9RG/b67k@public.gmane.org>, "Luck, Tony" <tony.luck-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>, Peter Zijlstra <peterz-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>

Christoph Lameter wrote:
> On Thu, 29 Oct 2009, Tejun Heo wrote:
> 
>> It's just for sched_init() which has irq off but is not really in
>> atomic context and does GFP_KERNEL allocations.  The following comment
>> has been added to the first patch to explain it.
> 
> Uhmm.. Is the page allocator available at that point? If you are
> constricted to the reserved per cpu area then IA64 can still run out of
> space if its booted with 4096 actual cpus.

sched_init() is after mm_init() so it should work.

>> + * allocations are done using GFP_KERNEL with pcpu_lock released.  In
>> + * general, percpu memory can't be allocated with irq off but
>> + * irqsave/restore are still used in alloc path so that it can be used
>> + * from early init path - sched_init() specifically.
> 
> Maybe make the patch a bit more general so that it can operate in an
> atomic context and handles gfp flags nicely?

That would be nice but currently, we have no user which needs anything
other than GFP_KERNEL although lack of users could have been caused by
the lack of the functionality and the non-atomic irq disabled state is
an exception case which is handled differently by might_sleep() too.
So, I'm not sure whether adding GFP_* parameter would worth the
effort.  Also, adding that is a bit too late for 2.6.32 at this point.

Thanks.

-- 
tejun
