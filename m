From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [linux-pm] [regression] "drm/i915: implement new pm ops" disables irq on aborted s2disk
Date: Wed, 3 Feb 2010 23:44:41 +0100
Message-ID: <201002032344.41915.rjw@sisk.pl>
References: <4B695BA0.4000007@tuffmail.co.uk>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <4B695BA0.4000007-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org
Cc: Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>, Zhenyu Wang <zhenyuw-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>, Eric Anholt <eric-WhKQ6XTQaPysTnJN9+BGXg@public.gmane.org>, dri-devel-5NWGOfrQmneRv+LV9MX5uipxlwaOVQ5f@public.gmane.org, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Wednesday 03 February 2010, Alan Jenkins wrote:
> Hi
> 
> I found this regression on my EeePC 701 with modesetting enabled.  When 
> I hibernate using s2disk, I can abort the hibernation by pressing the 
> backspace key.  Doing so breaks X on 2.6.32-rc6 (but not 2.6.32).

Yeah.

To be honest, I knew that's going to happen, but didn't have the time to take
care of it.

The problem is that i915 does literally _nothing_ in its .thaw() callback,
although it should at least reverse whatever .freeze() did to the hardware
(and memory allocations and so on), so that the adapter is functional
after creating the image.

Fixing this requires some thought, though, because at the moment .freeze()
thinks it's .suspend(), which is not the case as this report clearly shows.
So, in fact i915_pci_suspend() has to be split into the .freeze() part and
the poweroff part cleanly and that's not  so simple (at least to me).

Hopefully I'll have some time to work on this during the weekend.

Rafael
