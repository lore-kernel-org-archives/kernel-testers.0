From: Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Subject: [PATCH] [RFC] EEE PC hangs when booting off battery
Date: Tue, 28 Apr 2009 10:19:10 +0100
Message-ID: <49F6CA0E.5040101@tuffmail.co.uk>
References: <49E065CF.6040408@tuffmail.co.uk> <200904140859.02188.bjorn.helgaas@hp.com> <20090414081728.10de978a@infradead.org> <200904140948.37633.bjorn.helgaas@hp.com> <49E5F01B.2060201@tuffmail.co.uk> <49EF0ABD.2080801@tuffmail.co.uk> <49F446AE.6070607@tuffmail.co.uk>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-wireless-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=gamma;
        h=domainkey-signature:received:received:sender:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=jMJcZHSbL7LweoUDFswWpUQ+qbcobIfdAK35UrWj2ck=;
        b=IN3yIu/5441vrMvF2M+sNZ1CbR92IsugUsmsLlXB7uo2K76o4Oh+eK3VvMpqMXZx0b
         Iano77gESuZxu/NX+jw0/lRD+VLsMrtkwbJViM4k5wlif0o9ss/aKPlw/si2l2FbMiR+
         vPBRhYmu+9vTeqtJHDyx1gS7P88FaVaJKKl+w=
In-Reply-To: <49F446AE.6070607-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Sender: linux-wireless-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "linux-wireless-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-wireless-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Arjan van de Ven <arjan-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>, linux-kernel <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

I found a regression where my EEE hangs at boot time, if the battery is
present.

I'm confident it's a regression because it disappears if I revert
Arjan's asynchronous battery initialisation.  However, the evidence
points to a deadlock in the wireless stack which has simply been
uncovered by timing changes.

If I leave the system long enough, I get a series of hung task
warnings.  They suggest the following deadlock:

- ieee80211_wep_init(), which is called with rtnl_lock() held, is
blocked in request_module() [waiting for modprobe to load a crypto module].
- modprobe is blocked in a call to flush_workqueue(), caused by closing
a TTY.
- worker_thread is blocked because the workqueue item linkwatch_event()
is blocked on rtnl_lock.


I've hacked up a test patch to move wep_init() outside of rtnl_lock, and
it solved the problem.  My one caveat is that it would probably be
cleaner to move it after rtnl_unlock(), instead of before rtnl_lock(). 
I just wasn't 100% sure if that would be safe.  Here's the patch:

---8<---

diff --git a/net/mac80211/main.c b/net/mac80211/main.c
index fbcbed6..fffa7f9 100644
--- a/net/mac80211/main.c
+++ b/net/mac80211/main.c
@@ -909,6 +909,13 @@ int ieee80211_register_hw(struct ieee80211_hw *hw)
 	if (result < 0)
 		goto fail_sta_info;
 
+	result = ieee80211_wep_init(local);
+	if (result < 0) {
+		printk(KERN_DEBUG "%s: Failed to initialize wep: %d\n",
+		       wiphy_name(local->hw.wiphy), result);
+		goto fail_wep;
+	}
+
 	rtnl_lock();
 	result = dev_alloc_name(local->mdev, local->mdev->name);
 	if (result < 0)
@@ -930,14 +937,6 @@ int ieee80211_register_hw(struct ieee80211_hw *hw)
 		goto fail_rate;
 	}
 
-	result = ieee80211_wep_init(local);
-
-	if (result < 0) {
-		printk(KERN_DEBUG "%s: Failed to initialize wep: %d\n",
-		       wiphy_name(local->hw.wiphy), result);
-		goto fail_wep;
-	}
