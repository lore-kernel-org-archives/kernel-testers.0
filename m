From: Jesse Barnes <jbarnes@virtuousgeek.org>
Subject: Re: [Bug #13819] system freeze when switching to console
Date: Tue, 8 Sep 2009 16:05:23 -0700
Message-ID: <20090908160523.715a7412@jbarnes-g45>
References: <2ehA7xoGvXL.A.4PB.3eBpKB@chimera>
	<Vm51Upp4EV.A.r-D.mgBpKB@chimera>
	<1252427375.14735.130.camel@rc-desk>
	<alpine.LFD.2.01.0909080943030.7458@localhost.localdomain>
	<1252431375.14735.139.camel@rc-desk>
	<alpine.LFD.2.01.0909081039300.7458@localhost.localdomain>
	<20090908112014.002a35af@jbarnes-g45>
	<alpine.LFD.2.01.0909081219130.7458@localhost.localdomain>
	<20090908123151.1f2b18fe@jbarnes-g45>
	<alpine.LFD.2.01.0909081502510.7458@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1752862AbZIHXF3@vger.kernel.org>
In-Reply-To: <alpine.LFD.2.01.0909081502510.7458@localhost.localdomain>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: reinette chatre <reinette.chatre@intel.com>, "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Eric Anholt <eric@anholt.net>, "Ma, Ling" <ling.ma@intel.com>, "bugzilla-daemon@bugzilla.kernel.org" <bugzilla-daemon@bugzilla.kernel.org>

On Tue, 8 Sep 2009 15:06:21 -0700 (PDT)
Linus Torvalds <torvalds@linux-foundation.org> wrote:
> And now, when I pinpointed exactly where the oops happens, and what
> the cause is, you seem to be trying to hold things up. I wanted to do
> the final 2.6.31 release yesterday, quite frankly I'm not in the
> _least_ interested in excuses, I'm interested in something that at
> least gets us back to the 2.6.30 state that doesn't oops!

Based on the earlier mail I thought this might have been a bigger
problem with the way we handle command submission and completion; but
on looking at things again (both Linus's debugging and your
configuration), I think this is actually a DRI1 & userspace related
issue.  Back in the DRI1 days, the X server told the driver when to
register and unregister its irq handler, and had some responsibility
for making sure it didn't hose things (very easy to do with the old
architecture).  Stuff like this was one of the main reasons we moved
most of the handling of this into the kernel...

We obviously need a kernel fix though; panics like this aren't
acceptable.

This fix is along the lines of Linus's initial suggestion; we
definitely are tearing down some state that the interrupt handler
needs.  And the 2D driver isn't saving us from ourselves like it used
to (previously it would uninstall the IRQ handler before tearing down
the mappings; but with the kernel in charge of those now, we have to
handle it).

This one should disable i915 interrupts (we'll still handle shared ones
just fine as no-ops) at the point where we no longer need them, then
let the DRM core code take care of finally unregistering it.

Ugly, but I'd like to know if it works for you.  Any chance you could
give it a try Reinette?

-- 
Jesse Barnes, Intel Open Source Technology Center

diff --git a/drivers/gpu/drm/i915/i915_gem.c
b/drivers/gpu/drm/i915/i915_gem.c index 0767521..487d902 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -3990,6 +3990,7 @@ i915_gem_idle(struct drm_device *dev)
                return ret;
        }
 
+       i915_driver_irq_uninstall(dev);
        i915_gem_cleanup_ringbuffer(dev);
        mutex_unlock(&dev->struct_mutex);
 
