From: Jan Scholz <scholz-wOpdxP1gw6Cc+IqHO83+wjjhTm2NLCe8@public.gmane.org>
Subject: Re: [Bug #13337] [post 2.6.29 regression] hang during suspend of b44/b43 modules
Date: Sat, 11 Jul 2009 19:20:45 +0200
Message-ID: <8763dznnki.fsf@scholz.fias.uni-frankfurt.de>
References: <tSdKBEwEOhE.A.2wF.s_oUKB@chimera>
	<87k52izvd9.fsf@scholz.fias.uni-frankfurt.de>
	<87y6qxx50z.fsf@scholz.fias.uni-frankfurt.de>
	<200907092203.10294.rjw@sisk.pl>
	<1247171295.1905.5.camel@johannes.local>
	<87prc78ga9.fsf@scholz.fias.uni-frankfurt.de>
	<1247322985.30647.108.camel@johannes.local>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1247322985.30647.108.camel-YfaajirXv2244ywRPIzf9A@public.gmane.org> (Johannes Berg's
	message of "Sat, 11 Jul 2009 16:36:25 +0200")
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>
Cc: Jan Scholz <scholz-wOpdxP1gw6Cc+IqHO83+wjjhTm2NLCe8@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Tomas Janousek <tomi-YoqI/XImC7s@public.gmane.org>, "John W. Linville" <linville-2XuSBdqkA4R54TAoqtyWWQ@public.gmane.org>

Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org> writes:

> On Sat, 2009-07-11 at 16:07 +0200, Jan Scholz wrote:
>
>> > Jan, can you run with console_suspend=0 (or whatever it is now, Rafael
>> > will correct me if I'm wrong) that should work on your platform, and put
>> > a bunch of printk calls into __ieee80211_suspend in net/mac80211/pm.c to
>> > see where in there it's hanging?
>> 
>> Did that, seems like it hangs in
>>   drv_remove_interface(local, &conf);
>
> Ok, thanks! I was going to suggest doing the same in
> b43_op_remove_interface in drivers/net/wireless/b43/main.c, but I think
> the problem is just that we have an ordering problem and call drv_stop
> before drv_remove_interface. I'll try to come up with a fix soon --
> might not be able to today though, in the meantime I guess you can just
> move the drv_stop call to the end of the function and tell me if that
> works -- that would be racy but should be ok most of the time.

I moved drv_stop to the end of the function (see patch below) and now
suspend works fine.

Jan

diff --git a/net/mac80211/pm.c b/net/mac80211/pm.c
index 7a549f9..0ac15fb 100644
--- a/net/mac80211/pm.c
+++ b/net/mac80211/pm.c
@@ -58,12 +58,6 @@ int __ieee80211_suspend(struct ieee80211_hw *hw)
 	/* flush again, in case driver queued work */
 	flush_workqueue(local->hw.workqueue);
 
-	/* stop hardware - this must stop RX */
-	if (local->open_count) {
-		ieee80211_led_radio(local, false);
-		drv_stop(local);
-	}
-
 	/* remove STAs */
 	spin_lock_irqsave(&local->sta_lock, flags);
 	list_for_each_entry(sta, &local->sta_list, list) {
@@ -111,6 +105,12 @@ int __ieee80211_suspend(struct ieee80211_hw *hw)
 		drv_remove_interface(local, &conf);
 	}
 
+	/* stop hardware - this must stop RX */
+	if (local->open_count) {
+		ieee80211_led_radio(local, false);
+		drv_stop(local);
+	}
+
 	local->suspended = true;
 	local->quiescing = false;
