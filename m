From: Hugh Dickins <hugh.dickins-IWqWACnzNjwqdlJmJB21zg@public.gmane.org>
Subject: Re: [Bug #15033] drm: gem_object_free without struct_mutex
Date: Mon, 11 Jan 2010 23:15:50 +0000 (GMT)
Message-ID: <alpine.LSU.2.00.1001112304480.6409@sister.anvils>
References: <wnS54-l8PVO.A.TlF.oMlSLB@chimera> <omZ8aBZReyD.A.zcG.3MlSLB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <omZ8aBZReyD.A.zcG.3MlSLB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Hugh Dickins <hugh.dickins-IWqWACnzNjwqdlJmJB21zg@public.gmane.org>, Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>, Chris Wilson <chris-Y6uKTt2uX1cEflXRtASbqLVCufUGDwFn@public.gmane.org>

On Sun, 10 Jan 2010, Rafael J. Wysocki wrote:
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15033
> Subject		: drm: gem_object_free without struct_mutex
> Submitter	: Hugh Dickins <hugh.dickins-IWqWACnzNjwqdlJmJB21zg@public.gmane.org>
> Date		: 2009-12-30 19:45 (12 days old)
> References	: http://marc.info/?l=linux-kernel&m=126220236201529&w=4
> Handled-By	: Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>

Thanks, Rafael: please close it now.  I just checked latest -git
and it is now fixed (but not fixed in 2.6.33-rc3) - thanks, Chris.

Hugh
