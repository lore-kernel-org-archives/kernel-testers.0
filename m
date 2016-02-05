From: Sudip Mukherjee <sudipm.mukherjee-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [PATCH] staging: wilc1000: fix build failure
Date: Fri,  5 Feb 2016 15:26:54 +0530
Message-ID: <1454666214-7825-1-git-send-email-sudipm.mukherjee@gmail.com>
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=dsKckfqGUpDcrP5rhEzLWhGOEvwmQ5E4utpUNPoVAHk=;
        b=kF+zqlKxYxsKIeFvsCDgGPrevQyIbCblqKi9NuPZAjw9osA3KFs8ZBS8Aj8CYo8WIR
         I/zMVX5CIkn7PRYWodPSVtuw8Q5jFApPSxXhS7BKfPBMohUVW6qSulqI3O77YsGxC2ZB
         TyY8HFQuYEHfSa3GP3JcM+YibredD3dRvNQet9jaU2y4alHkDMbAa2O0Ep5tvttkeH33
         BSr1br1LJ4NYfS4GUpW9XxLingjQYjWNrVaUuBKc+8bFr1QHlQw0UVv77ZNlN6FJ6Gw3
         4fj84MhSjzlH7c4c9hz37H9fqxJX3yCEfJFJj3Bs80CgvhHkCzLlvo4dIwBe61Rp/rdk
         PVXw==
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Johnny Kim <johnny.kim-AIFe0yeh4nAAvxtiuMwx3w@public.gmane.org>, Austin Shin <austin.shin-AIFe0yeh4nAAvxtiuMwx3w@public.gmane.org>, Chris Park <chris.park-AIFe0yeh4nAAvxtiuMwx3w@public.gmane.org>, Tony Cho <tony.cho-AIFe0yeh4nAAvxtiuMwx3w@public.gmane.org>, Glen Lee <glen.lee-AIFe0yeh4nAAvxtiuMwx3w@public.gmane.org>, Leo Kim <leo.kim-AIFe0yeh4nAAvxtiuMwx3w@public.gmane.org>, Greg Kroah-Hartman <gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-wireless-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, devel-gWbeCf7V1WCQmaza687I9mD2FQJk+8+b@public.gmane.org, Sudip Mukherjee <sudipm.mukherjee-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

allmodconfig build of alpha, m68k, m32r, tilepro has failed with the
error:
drivers/staging/wilc1000/wilc_wfi_cfgoperations.c: In function 'wilc_create_wiphy':
drivers/staging/wilc1000/wilc_wfi_cfgoperations.c:2632:13:
	error: 'struct wiphy' has no member named 'wowlan'

Looking at other drivers wowlan can be only used when CONFIG_PM is
defined.

Fixes: 73584a40d748 ("staging: wilc1000: add ops resuem/suspend/wakeup in cfg80211")
Cc: Glen Lee <glen.lee-AIFe0yeh4nAAvxtiuMwx3w@public.gmane.org>
Signed-off-by: Sudip Mukherjee <sudip-ofJRbWXBVFamYgehrs7/Lw@public.gmane.org>
---

builds of next-20160205.

I think I have seen the same report from 0day also when this commit was
in staging-testing.

 drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
index 4eede2b..08c28b7 100644
--- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
+++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
@@ -2629,7 +2629,9 @@ struct wireless_dev *wilc_create_wiphy(struct net_device *net, struct device *de
 	sema_init(&(priv->SemHandleUpdateStats), 1);
 	priv->wdev = wdev;
 	wdev->wiphy->max_scan_ssids = MAX_NUM_PROBED_SSID;
+#ifdef CONFIG_PM
 	wdev->wiphy->wowlan = &wowlan_support;
+#endif
 	wdev->wiphy->max_num_pmkids = WILC_MAX_NUM_PMKIDS;
 	PRINT_INFO(CFG80211_DBG, "Max number of PMKIDs = %d\n", wdev->wiphy->max_num_pmkids);
 
-- 
1.9.1
