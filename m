From: Wang Chen <wangchen-BthXqXjhjHXQFUHtdCDX3A@public.gmane.org>
Subject: Re: [Bug #12419] possible circular locking dependency on i915 dma
Date: Mon, 16 Feb 2009 11:50:14 +0800
Message-ID: <4998E276.9010009@cn.fujitsu.com>
References: <juADNmcceYF.A.mdD.Mr0lJB@chimera> <rjPbZ5GRJPO.A.avG.Xt0lJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <rjPbZ5GRJPO.A.avG.Xt0lJB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Eric Anholt <eric-WhKQ6XTQaPysTnJN9+BGXg@public.gmane.org>, Dave Airlie <airlied-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>

Rafael J. Wysocki said the following on 2009-2-15 4:38:
> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.28.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12419
> Subject		: possible circular locking dependency on i915 dma
> Submitter	: Wang Chen <wangchen-BthXqXjhjHXQFUHtdCDX3A@public.gmane.org>
> Date		: 2009-01-08 14:11 (38 days old)
> References	: http://marc.info/?l=linux-kernel&m=123142399720125&w=4
> 
> 

Yes. It's still there in mainline.
I think the commit 546b0974c39657017407c86fe79811100b60700d
"i915: Use struct_mutex to protect ring in GEM mode." brought this regression.

The lockdep problem is as following:
thread-1
i915_cmdbuffer()
      |
      ---> lock(drm_device->struct_mutex)
                   |
		   V
	i915_dispatch_cmdbuffer()
		   |
		   ---->i915_emit_box()
                             |
                             ----->copy_from_user()
					|
					-----might_fault()
						|
						--->lock(mm->mmap_sem)

thread-2
dup_mm()
   |
   --->lock(mm->mmap_sem)
           |
	   V
	drm_vm_open()
	   |
	   -------> lock(drm_device->struct_mutex)

The different order to lock "mmap_sem" and "drm_dev->struct_mutex" introduces the problem.
But it seems no way to reverse the lock order in i915.
So how about refine the lock granularity of drm_dev->struct_mutex and exclude the mmap_sem
lock/unlock out of the drm_dev->struct_mutex lock/unlock range?
