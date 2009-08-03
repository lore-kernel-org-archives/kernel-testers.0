From: Ivo van Doorn <ivdoorn-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #13846] Possible regression in rt61pci driver
Date: Mon, 3 Aug 2009 22:17:19 +0200
Message-ID: <200908032217.19947.IvDoorn@gmail.com>
References: <Su1q3S6JjyO.A.jeB.hcgdKB@chimera> <iZB3Pj-uj3M.A.pRC.1cgdKB@chimera> <200908031931.27427.chris2553@googlemail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:from:to:subject:date
         :user-agent:cc:references:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:message-id;
        bh=h1u2E4HK8WxAR1ulLKfaQrxeWROog8KoEFOilQYllaQ=;
        b=nyYAMYzBsyK4x8AJyJx/Ihg/EtFvsplNszdIXWkpzhuUbr7wKh39xFBOqZqCjKtdmu
         BtzUGCju4AlHfH0HHCOjO5TRZItuiAIELBV8HPl1iQoHzIO9UUniGjnBNH/ILQj3Nozs
         14Wd9vuvDHFjUeN/XwJxY24Hy2BS1F/+fXSuE=
In-Reply-To: <200908031931.27427.chris2553-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: chris2553-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, linux-wireless-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

Hi,

> On Sunday 02 August 2009, Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> >
> > The following bug entry is on the current list of known regressions
> > from 2.6.30.  Please verify if it still should be listed and let me know
> > (either way).
> >
> 
> The folks on the wireless project have concluded that the problem I reported is down to a hardware 
> problem when power saving is switched on on for my Belkin cardbus wireless adapter, so now I simply 
> turn power-saving off when wlan0 comes up. I did, however, ask whether anyone was going to fix the 
> fact that once power-saving turns the LEDs off, they never come back on again, but I haven't had an 
> answer. Is that a regression? I guess the answer is no, because power saving in the rt61pci driver 
> is feature that is new to 2.6.31. Should it be fixed? I think the answer is yes, but being unable 
> to do it myself, I probably don't have a vote :-)

Can't recall this issue was ever reported, but that might just be me having overlooked some emails
or have completely forgotten all about it. But here is a test patch to see if this helps in the issue,
it is not really correct for upstream, but if it works I can see if there is a better solution.

Thanks,

Ivo
---
diff --git a/drivers/net/wireless/rt2x00/rt2x00config.c b/drivers/net/wireless/rt2x00/rt2x00config.c
index 3845316..6fe70b1 100644
--- a/drivers/net/wireless/rt2x00/rt2x00config.c
+++ b/drivers/net/wireless/rt2x00/rt2x00config.c
@@ -196,6 +196,12 @@ void rt2x00lib_config(struct rt2x00_dev *rt2x00dev,
 	 */
 	rt2x00dev->ops->lib->config(rt2x00dev, &libconf, ieee80211_flags);
 
+	if (ieee80211_flags & IEEE80211_CONF_CHANGE_PS) {
+		rt2x00led_led_activity(rt2x00dev, !(conf->flags & IEEE80211_CONF_PS));
+		rt2x00leds_led_assoc(rt2x00dev, !(conf->flags & IEEE80211_CONF_PS));
+		rt2x00leds_led_radio(rt2x00dev, !(conf->flags & IEEE80211_CONF_PS));
+	}
+
 	/*
 	 * Some configuration changes affect the link quality
 	 * which means we need to reset the link tuner.
