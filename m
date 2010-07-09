From: Kees Cook <kees-oSa+0FWJbaXR7s880joybQ@public.gmane.org>
Subject: Re: [Bug #16294] [Q35 bisected] hang at init of i915 driver
Date: Thu, 8 Jul 2010 17:45:05 -0700
Message-ID: <20100709004505.GU828@outflux.net>
References: <-IGZ64uxA6G.A.P0H.bLmNMB@chimera>
 <TXb9XdQzJoD.A.uoB.WMmNMB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <TXb9XdQzJoD.A.uoB.WMmNMB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Chris Wilson <"email addresshidden"@ogre.sisk.pl>

Hi Rafael,

On Fri, Jul 09, 2010 at 01:41:39AM +0200, Rafael J. Wysocki wrote:
> The following bug entry is on the current list of known regressions
> from 2.6.34.  Please verify if it still should be listed and let the tracking team
> know (either way).

Yup, this is still a regression.  The fix is trivial (see below).

> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=16294
> Subject		: [Q35 bisected] hang at init of i915 driver
> Submitter	: Kees Cook <kees-oSa+0FWJbaXR7s880joybQ@public.gmane.org>
> Date		: 2010-06-25 18:20 (14 days old)
> First-Bad-Commit: http://git.kernel.org/linus/f1befe71fa7a79ab733011b045639d8d809924ad

diff --git a/drivers/char/agp/intel-gtt.c b/drivers/char/agp/intel-gtt.c
index 9344216..0d9007d 100644
--- a/drivers/char/agp/intel-gtt.c
+++ b/drivers/char/agp/intel-gtt.c
@@ -1229,6 +1229,7 @@ static int intel_i915_get_gtt_size(void)
 				(gmch_ctrl & G33_PGETBL_SIZE_MASK));
 			size = 512;
 		}
+		size = 1024;
 	} else {
 		/* On previous hardware, the GTT size was just what was
 		 * required to map the aperture.

-- 
Kees Cook                                            @outflux.net
