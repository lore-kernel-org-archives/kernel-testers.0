From: Kristoffer Ericson <kristoffer.ericson@gmail.com>
Subject: Re: [Bug #14267] Disassociating atheros wlan
Date: Sun, 22 Nov 2009 16:29:36 +0100
Message-ID: <20091122162936.ac603ad1.kristoffer.ericson@gmail.com>
References: <7qTjLRFNcGF.A.eSE.kCACLB@chimera>
	<mYW9sxtWd2G.A.EnF.gDACLB@chimera>
	<4B08258E.9050607@gmail.com>
	<1258886823.7094.101.camel@johannes.local>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1755245AbZKVP3a@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:date:from:to:cc:subject
         :message-id:in-reply-to:references:x-mailer:mime-version
         :content-type:content-transfer-encoding;
        bh=cDgPPc5RXMfdBaDnTTGenHr1/vna0T45rwYSa5wY+GA=;
        b=YqLrhGU+xgfCdIyzXdg3mqplkBCokRZ79QegaSL1DIg/qo5j4bProrafcPqO40VFNo
         k5jIvoLv3WEdAW3mJmwV2Rh4JbTGY/fYAG1O+VRIU/fh4u1N2Zy2N6gSd6ovY2q2B2Qe
         15HpubIlNfLz5lPKwa/vxTjjWZN514+OtH9dU=
In-Reply-To: <1258886823.7094.101.camel@johannes.local>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Johannes Berg <johannes@sipsolutions.net>
Cc: "Justin P. Mattock" <justinmattock@gmail.com>, "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, "John W. Linville" <linville@tuxdriver.com>

On Sun, 22 Nov 2009 11:47:03 +0100
Johannes Berg <johannes@sipsolutions.net> wrote:

> On Sat, 2009-11-21 at 09:38 -0800, Justin P. Mattock wrote:
> 
> > I did a bisect yesterday on this, and the results
> > seemed to have worked over here by reverting:
> > 
> > 75e6c3b72b3ab01c47629f3fbd0fed4e6550bf3a
> > cfg80211: lower dynamic PS timeout to 100ms
> > 
> > if Kristoffer can try reverting this one
> > to see, then we can go from there.
> 
> So that just means the driver is broken. Please run
> 
> 	iwconfig wlan0 power off
> 
> to fix it then. And the patch below will disable it by default since
> it's broken.
> 
> johannes
> 
> --- wireless-testing.orig/drivers/net/wireless/ath/ath9k/main.c	2009-11-22 11:44:41.000000000 +0100
> +++ wireless-testing/drivers/net/wireless/ath/ath9k/main.c	2009-11-22 11:45:26.000000000 +0100
> @@ -1893,6 +1893,8 @@ void ath_set_hw_capab(struct ath_softc *
>  		BIT(NL80211_IFTYPE_ADHOC) |
>  		BIT(NL80211_IFTYPE_MESH_POINT);
>  
> +	hw->wiphy->ps_default = false;
> +
>  	hw->queues = 4;
>  	hw->max_rates = 4;
>  	hw->channel_change_time = 5000;
> 
> 

Johannes, am I correct in thinking that this also solves the decreased signal strength
issue in bug http://bugzilla.kernel.org/show_bug.cgi?id=13807 ?


-- 
Kristoffer Ericson <kristoffer.ericson@gmail.com>
