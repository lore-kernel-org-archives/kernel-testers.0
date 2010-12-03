From: Johannes Hirte <johannes.hirte@fem.tu-ilmenau.de>
Subject: Re: [Bug #23102] [bisected] i915 regression in post 2.6.36 kernels
Date: Fri, 3 Dec 2010 01:20:05 +0100
Message-ID: <201012030120.06282.johannes.hirte@fem.tu-ilmenau.de>
References: <1OMp3vU_qjP.A.JXG.uxC-MB@chimera> <gUkHV_Vc3aE.A.PRH.uyC-MB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <gUkHV_Vc3aE.A.PRH.uyC-MB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Florian Mickler <florian@mickler.org>, Chris Wilson <chris@chris-wilson.co.uk>

On Friday 03 December 2010 00:41:44 Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a summary report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.36.  Please verify if it still should be listed and let the tracking team
> know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=23102
> Subject		: [bisected] i915 regression in post 2.6.36 kernels
> Submitter	: Johannes Hirte <johannes.hirte@fem.tu-ilmenau.de>
> Date		: 2010-11-10 7:02 (23 days old)
> Message-ID	: <201011100802.20332.johannes.hirte@fem.tu-ilmenau.de>
> References	: http://marc.info/?l=linux-kernel&m=128937310017057&w=2

Still not fixed. As I mentioned, the revert of
5c12a07e8073295ce8b57a822f811ac34e4f8420 missed some lines. I'm not familiar
with the hardware or the code, so I'm not sure if this patch is right. At least
it solves the bug for me. Chris any objection to re-adding it?

diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index ef188e3..bace93c 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -2042,6 +2042,11 @@ i915_gem_flush_ring(struct drm_device *dev,
 {
        ring->flush(dev, ring, invalidate_domains, flush_domains);
        i915_gem_process_flushing_list(dev, flush_domains, ring);
+
+       if (ring->outstanding_lazy_request) {
+               (void)i915_add_request(dev, file_priv, NULL, ring);
+               ring->outstanding_lazy_request = false;
+       }
 }
 
 static void
