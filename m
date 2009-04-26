From: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Subject: Re: [Bug #13111] Linux 2.6.30-rc1 tg3 endian issues with MAC
 addresses on BCM5701
Date: Sat, 25 Apr 2009 18:10:06 -0700 (PDT)
Message-ID: <20090425.181006.246584933.davem@davemloft.net>
References: <47KgT3nlbjD.A.lnB.jc48JB@chimera>
	<Fg2zLW93smL.A.ScE.fd48JB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <Fg2zLW93smL.A.ScE.fd48JB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: rjw-KKrjLPT3xs0@public.gmane.org
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, benli-dY08KVG/lbpWk0Htik3J/w@public.gmane.org, mcarlson-dY08KVG/lbpWk0Htik3J/w@public.gmane.org, mchan-dY08KVG/lbpWk0Htik3J/w@public.gmane.org, holt-sJ/iWh9BUns@public.gmane.org

From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Date: Sat, 25 Apr 2009 21:31:45 +0200 (CEST)

> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13111
> Subject		: Linux 2.6.30-rc1 tg3 endian issues with MAC addresses on BCM5701
> Submitter	: Robin Holt <holt-sJ/iWh9BUns@public.gmane.org>
> Date		: 2009-04-08 7:12 (18 days old)
> First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=e4f341103e4a2b35f56a0f89802f1b1448e8d04b
> References	: http://marc.info/?l=linux-kernel&m=123917477312823&w=4
> 		  http://lkml.org/lkml/2009/4/16/471
> Handled-By	: Matt Carlson <mcarlson-dY08KVG/lbpWk0Htik3J/w@public.gmane.org>

Fixed by:

commit 62cedd11f63c99efd2962fb69763a09e2778f6e6
Author: Matt Carlson <mcarlson-dY08KVG/lbpWk0Htik3J/w@public.gmane.org>
Date:   Mon Apr 20 14:52:29 2009 -0700

    tg3: Fix SEEPROM accesses
    
    The recent NVRAM patches sanitized how the driver deals with NVRAM
    data, but they failed to bring the SEEPROM interfaces inline with
    the new strategy.  This patch brings the SEEPROM interfaces up to date.
    This patch also reverts commit 0d489ffb76de0fe804cf06a9d4d11fa7342d74b9
    ("tg3: fix big endian MAC address collection failure").
    
    Signed-off-by: Matt Carlson <mcarlson-dY08KVG/lbpWk0Htik3J/w@public.gmane.org>
    Signed-off-by: Michael Chan <mchan-dY08KVG/lbpWk0Htik3J/w@public.gmane.org>
    Tested-by: Robin Holt <holt-sJ/iWh9BUns@public.gmane.org>
    Tested-by: James Bottomley <james.bottomley-d9PhHud1JfjCXq6kfMZ53/egYHeGw8Jk@public.gmane.org>
    Signed-off-by: David S. Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
