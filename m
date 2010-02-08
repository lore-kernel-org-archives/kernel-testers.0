From: Chris Mason <chris.mason-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #15004] i915: *ERROR* Execbuf while wedged
Date: Mon, 8 Feb 2010 15:00:44 -0500
Message-ID: <20100208200044.GA2677@think>
References: <UgwvXSBS_tM.A.alD.1EiZLB@chimera>
 <de962C6zBxL.A.bvE.cFiZLB@chimera>
 <20100205110100.57852c31@jbarnes-piketon>
 <20100205190916.GD2858@think>
 <20100205111747.6619b09b@jbarnes-piketon>
 <20100208172410.GA11311@think>
 <20100208093551.58a10643@jbarnes-piketon>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20100208093551.58a10643@jbarnes-piketon>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Chris Wilson <chris-Y6uKTt2uX1cEflXRtASbqLVCufUGDwFn@public.gmane.org>, tomas m <tmezzadra-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Mon, Feb 08, 2010 at 09:35:51AM -0800, Jesse Barnes wrote:
> > 
> > Ok, updating to rc7 and updating my xf86 driver to 2.10 seems to have
> > fixed up my suspend/resume problems.  So, I should be able to trigger
> > the execbuf problem again.
> 
> I've heard some reports that the 2D driver introduces and fixes hangs,
> so it's possible 2.10 will fix both issues for you.
> 
> > Well, the rebooting isn't a huge deal, but if there's something I can
> > track/kick or force to core dump, would it help?
> 
> We do have a test in intel-gpu-tools that will instigate a hang, but it
> would be best to figure out what's causing it in your environment.
> 

[63516.632060] [drm:i915_hangcheck_elapsed] *ERROR* Hangcheck timer elapsed... GPU hung
[63516.632069] render error detected, EIR: 0x00000000
[63516.632092] [drm:i915_do_wait_request] *ERROR* i915_do_wait_request returns -5 (awaiting 2590581 at 2590579)

So, this popped up while surfing in firefox, which is usually where I
hit the execbuf errors.  X was totally stuck afterwards, but I could
switch to a vc and get the dmesg.

If there are specific procs that I can try to get traces of, just let
me know for next time.

-chris
