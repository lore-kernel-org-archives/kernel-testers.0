From: Alexey Fisher <bug-track-M18mAb7Tlt0yCq4wW13eYl6hYfS7NtTn@public.gmane.org>
Subject: [PATCH] ipw2200: make assocaittion only if SSID is known.
Date: Wed,  5 Nov 2008 09:45:58 +0100
Message-ID: <1225874758-5948-1-git-send-email-bug-track@fisher-privat.net>
Return-path: <linux-wireless-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: linux-wireless-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
Cc: linville-2XuSBdqkA4R54TAoqtyWWQ@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Alexey Fisher <bug-track-M18mAb7Tlt0yCq4wW13eYl6hYfS7NtTn@public.gmane.org>

'iwconfig eth1 channel 6' would trigger association to _something_, 
which is wrong.  Changing the channel should (and does) trigger reassociation, 
but only if there is an SSID to associate with.

Signed-off-by: Alexey Fisher <bug-track-M18mAb7Tlt0yCq4wW13eYl6hYfS7NtTn@public.gmane.org>

---
 drivers/net/wireless/ipw2200.c |    3 +--
 1 files changed, 1 insertions(+), 2 deletions(-)

diff --git a/drivers/net/wireless/ipw2200.c b/drivers/net/wireless/ipw2200.c
index dcce354..d26beed 100644
--- a/drivers/net/wireless/ipw2200.c
+++ b/drivers/net/wireless/ipw2200.c
@@ -7581,8 +7581,7 @@ static int ipw_associate(void *data)
 	}
 
 	if (!(priv->config & CFG_ASSOCIATE) &&
-	    !(priv->config & (CFG_STATIC_ESSID |
-			      CFG_STATIC_CHANNEL | CFG_STATIC_BSSID))) {
+	    !(priv->config & (CFG_STATIC_ESSID | CFG_STATIC_BSSID))) {
 		IPW_DEBUG_ASSOC("Not attempting association (associate=0)\n");
 		return 0;
 	}
-- 
1.5.6.3

--
To unsubscribe from this list: send the line "unsubscribe linux-wireless" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
