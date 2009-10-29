From: Tejun Heo <tj-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: [Bug #14467] Linker errors on ia64 with NR_CPUS=4096
Date: Thu, 29 Oct 2009 15:48:03 +0100
Message-ID: <4AE9AB23.8010207@kernel.org>
References: <Sj-rRjx6TwF.A.djE.vqe5KB@chimera> <6dRYo8ss7vL.A.nnF.Cre5KB@chimera> <alpine.DEB.1.10.0910271623210.20363@V090114053VZO-1> <alpine.LSU.2.00.0910271922490.19847@wotan.suse.de> <alpine.DEB.1.10.0910291435420.18197@V090114053VZO-1>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.DEB.1.10.0910291435420.18197@V090114053VZO-1>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Jeff Mahoney <jeffm-IBi9RG/b67k@public.gmane.org>, "Luck, Tony" <tony.luck-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>, Peter Zijlstra <peterz-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>

Christoph Lameter wrote:
>> There already are two patches for this acked by Ingo/Tejun, which Tejun is
>> going to take through his tree tomorrow.
>>
>> 	http://lkml.org/lkml/2009/10/27/132
> 
> per cpu alloc from an atomic context without passing gfp flags through to
> the page allocator? That does not look right. Sure wish that the percpu
> allocator would be working from atomic contexts for other cases.

It's just for sched_init() which has irq off but is not really in
atomic context and does GFP_KERNEL allocations.  The following comment
has been added to the first patch to explain it.

+ * allocations are done using GFP_KERNEL with pcpu_lock released.  In
+ * general, percpu memory can't be allocated with irq off but
+ * irqsave/restore are still used in alloc path so that it can be used
+ * from early init path - sched_init() specifically.

Thanks.

-- 
tejun
