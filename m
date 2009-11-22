From: "Justin P. Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #14267] Disassociating atheros wlan
Date: Sun, 22 Nov 2009 07:03:02 -0800
Message-ID: <4B0952A6.7010704@gmail.com>
References: <7qTjLRFNcGF.A.eSE.kCACLB@chimera>	 <mYW9sxtWd2G.A.EnF.gDACLB@chimera>  <4B08258E.9050607@gmail.com> <1258886823.7094.101.camel@johannes.local>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=fqNe0RWU1kX9q7RDNXwHT/0uNfmL8jc8ryIXxVNVEzw=;
        b=VES8J7BW/KnMj6q93eGdHEitWLEeDCve5YfxtRfAWExFvSJTWEOmkaDZyd8m3zIvdJ
         y72oU2b++qCrUjK9SYJK3vkVfHrBQgSVSqEPqLjn+PxVy6HsVlir//UdSyRjHnvoFobf
         a0g1His3FLQr7MeXA6EjdV4u6pb53Vfd2rGfg=
In-Reply-To: <1258886823.7094.101.camel-YfaajirXv2244ywRPIzf9A@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "John W. Linville" <linville-2XuSBdqkA4R54TAoqtyWWQ@public.gmane.org>, Kristoffer Ericson <kristoffer.ericson-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

Johannes Berg wrote:
> On Sat, 2009-11-21 at 09:38 -0800, Justin P. Mattock wrote:
>
>    
>> I did a bisect yesterday on this, and the results
>> seemed to have worked over here by reverting:
>>
>> 75e6c3b72b3ab01c47629f3fbd0fed4e6550bf3a
>> cfg80211: lower dynamic PS timeout to 100ms
>>
>> if Kristoffer can try reverting this one
>> to see, then we can go from there.
>>      
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
>   		BIT(NL80211_IFTYPE_ADHOC) |
>   		BIT(NL80211_IFTYPE_MESH_POINT);
>
> +	hw->wiphy->ps_default = false;
> +
>   	hw->queues = 4;
>   	hw->max_rates = 4;
>   	hw->channel_change_time = 5000;
>
>
>
>    
I'm in the process of stepping out
of my office for a few days.
(can probably give a try where I'm
headed, just give me some time).

Justin P. Mattock
