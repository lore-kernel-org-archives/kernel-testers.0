From: Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Subject: Re: [PATCH] [RFC] EEE PC hangs when booting off battery
Date: Wed, 29 Apr 2009 12:14:33 +0100
Message-ID: <49F83699.3000307@tuffmail.co.uk>
References: <49E065CF.6040408@tuffmail.co.uk>	 <200904140859.02188.bjorn.helgaas@hp.com>	 <20090414081728.10de978a@infradead.org>	 <200904140948.37633.bjorn.helgaas@hp.com> <49E5F01B.2060201@tuffmail.co.uk>	 <49EF0ABD.2080801@tuffmail.co.uk> <49F446AE.6070607@tuffmail.co.uk>	 <49F6CA0E.5040101@tuffmail.co.uk> (sfid-20090428_111942_198975_13CDA6F5) <1240912688.28835.10.camel@johannes.local> <49F6DA14.7030608@tuffmail.co.uk>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-wireless-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=gamma;
        h=domainkey-signature:received:received:sender:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=9kttKnFt6uZdH6b13zRzSuE8IeBLYoaqIxDRS5JYr2c=;
        b=Ry9o6UXLrSjxkUrHkqMyFUnwof0L/T5YbDLreCRSsNaEJ1UyIenRZj8hMQ/iQlPqbT
         1adZmZ5yf1FVzanTCZgdN5pBuc3uPr+nDs/0U9LR5ndAgdX96YO2FPOIGlF9NFjnfq8+
         zwiLvi0ONIJGkr/+BYQPQxGvtyi/5PIEVAYBU=
In-Reply-To: <49F6DA14.7030608-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Sender: linux-wireless-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: John Linville <linville-2XuSBdqkA4R54TAoqtyWWQ@public.gmane.org>
Cc: Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>, "linux-wireless-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-wireless-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Arjan van de Ven <arjan-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>, linux-kernel <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

Alan Jenkins wrote:
> Johannes Berg wrote:
>   
>> That doesn't seem relevant, this just does some initialisation. However,
>> you definitely missed adding a call to wep_free().
>>   
>>     
>
> Hah, I should have realized something was wrong when I noticed I was
> removing more lines that I added. 
>
> The crypto init does cause the module load:
>
> wait_for_completion
> call_usermodehelper_exec
> __request_module
> crypto_larval_lookup
> ? extract_entropy
> crypto_alg_mod_lookup
> crypto_alloc_base
> ieee80211_wep_init
> ieee80211_register_hw
>   

Here's a corrected patch complete with changelog.  If there are no other
problems with it, can you please  apply this for 2.6.30 to keep my EeePC
regression-free?

Thanks
Alan

------>
From c5e9dc036247e70956d1a28e8850c3810385dda0 Mon Sep 17 00:00:00 2001
From: Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Date: Wed, 29 Apr 2009 11:41:24 +0100
Subject: [PATCH] mac80211: fix modprobe deadlock by not calling wep_init under rtnl_lock

 - ieee80211_wep_init(), which is called with rtnl_lock held, blocks in
   request_module() [waiting for modprobe to load a crypto module].

 - modprobe blocks in a call to flush_workqueue(), when it closes a TTY
   [presumably when it exits].

 - The workqueue item linkwatch_event() blocks on rtnl_lock.

There's no reason for wep_init() to be called with rtnl_lock held, so
just move it outside the critical section.

Signed-off-by: Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
---
 net/mac80211/main.c |   19 +++++++++----------
 1 files changed, 9 insertions(+), 10 deletions(-)

diff --git a/net/mac80211/main.c b/net/mac80211/main.c
index fbcbed6..00968c2 100644
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
-
 	/* add one default STA interface if supported */
 	if (local->hw.wiphy->interface_modes & BIT(NL80211_IFTYPE_STATION)) {
 		result = ieee80211_if_add(local, "wlan%d", NULL,
@@ -967,13 +966,13 @@ int ieee80211_register_hw(struct ieee80211_hw *hw)
 
 	return 0;
 
-fail_wep:
-	rate_control_deinitialize(local);
 fail_rate:
 	unregister_netdevice(local->mdev);
 	local->mdev = NULL;
 fail_dev:
 	rtnl_unlock();
+	ieee80211_wep_free(local);
+fail_wep:
 	sta_info_stop(local);
 fail_sta_info:
 	debugfs_hw_del(local);
-- 
1.5.4.3




--
To unsubscribe from this list: send the line "unsubscribe linux-wireless" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
