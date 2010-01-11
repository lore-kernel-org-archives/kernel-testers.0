From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #15033] drm: gem_object_free without struct_mutex
Date: Tue, 12 Jan 2010 00:50:09 +0100
Message-ID: <201001120050.09451.rjw@sisk.pl>
References: <wnS54-l8PVO.A.TlF.oMlSLB@chimera> <omZ8aBZReyD.A.zcG.3MlSLB@chimera> <alpine.LSU.2.00.1001112304480.6409@sister.anvils>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.LSU.2.00.1001112304480.6409-T/S/X05ZC3jbmfIwyoSfiQ@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Hugh Dickins <hugh.dickins-IWqWACnzNjwqdlJmJB21zg@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>, Chris Wilson <chris-Y6uKTt2uX1cEflXRtASbqLVCufUGDwFn@public.gmane.org>

On Tuesday 12 January 2010, Hugh Dickins wrote:
> On Sun, 10 Jan 2010, Rafael J. Wysocki wrote:
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15033
> > Subject		: drm: gem_object_free without struct_mutex
> > Submitter	: Hugh Dickins <hugh.dickins-IWqWACnzNjwqdlJmJB21zg@public.gmane.org>
> > Date		: 2009-12-30 19:45 (12 days old)
> > References	: http://marc.info/?l=linux-kernel&m=126220236201529&w=4
> > Handled-By	: Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>
> 
> Thanks, Rafael: please close it now.  I just checked latest -git
> and it is now fixed (but not fixed in 2.6.33-rc3) - thanks, Chris.

Thanks, closed.

Rafael
