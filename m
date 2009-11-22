From: Kristoffer Ericson <kristoffer.ericson-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #14267] Disassociating atheros wlan
Date: Sun, 22 Nov 2009 16:21:31 +0100
Message-ID: <20091122162131.0e2e60ef.kristoffer.ericson@gmail.com>
References: <7qTjLRFNcGF.A.eSE.kCACLB@chimera>
	<4B08258E.9050607@gmail.com>
	<1258886823.7094.101.camel@johannes.local>
	<200911221519.54284.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-wireless-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:date:from:to:cc:subject
         :message-id:in-reply-to:references:x-mailer:mime-version
         :content-type:content-transfer-encoding;
        bh=hAJX8CYVkVqN8TtlAQH8Fg3q8b1sSi7LiGG6RAW7ioA=;
        b=Gafo6Xmp19EKDpXYgDmA7Dt48bxe0h/Gi7RU4yOGnemb645F3gkFmruqmByZbxq9Lr
         9OjHO2O9o7U6Trs2DVAgMxHwOdh2fwTzIzgP/wMLsvL0aR/82iXT1P6Xfvui2IQk5oFb
         S3AhMt5P8R70BZu2yZ+GBrRlavodbk5Fdq6eU=
In-Reply-To: <200911221519.54284.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: linux-wireless-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>, "John W. Linville" <linville-2XuSBdqkA4R54TAoqtyWWQ@public.gmane.org>, "Luis R. Rodriguez" <lrodriguez-DlyHzToyqoxBDgjK7y7TUQ@public.gmane.org>, "Justin P. Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, linux-wireless-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On Sun, 22 Nov 2009 15:19:54 +0100
"Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> On Sunday 22 November 2009, Johannes Berg wrote:
> > On Sat, 2009-11-21 at 09:38 -0800, Justin P. Mattock wrote:
> > 
> > > I did a bisect yesterday on this, and the results
> > > seemed to have worked over here by reverting:
> > > 
> > > 75e6c3b72b3ab01c47629f3fbd0fed4e6550bf3a
> > > cfg80211: lower dynamic PS timeout to 100ms
> > > 
> > > if Kristoffer can try reverting this one
> > > to see, then we can go from there.
> > 
> > So that just means the driver is broken. Please run
> > 
> > 	iwconfig wlan0 power off
> > 
> > to fix it then. And the patch below will disable it by default since
> > it's broken.
> > 
> > johannes
> > 
> > --- wireless-testing.orig/drivers/net/wireless/ath/ath9k/main.c	2009-11-22 11:44:41.000000000 +0100
> > +++ wireless-testing/drivers/net/wireless/ath/ath9k/main.c	2009-11-22 11:45:26.000000000 +0100
> > @@ -1893,6 +1893,8 @@ void ath_set_hw_capab(struct ath_softc *
> >  		BIT(NL80211_IFTYPE_ADHOC) |
> >  		BIT(NL80211_IFTYPE_MESH_POINT);
> >  
> > +	hw->wiphy->ps_default = false;
> > +
> >  	hw->queues = 4;
> >  	hw->max_rates = 4;
> >  	hw->channel_change_time = 5000;
> 
> OK, so perhaps this patch should be applied until th ath9k driver is fixed?  Luis?  John?

I applied the patch from johannes and it ended my issues atleast. I ran my machine for approx
2 hours without seeing the disconnect issue (which I usually saw after 15-25min). Cant be 100% of course
but so far so good.

I agree with Justin that we could wait until he gets a chance to test it. It should be accepted
after initial merge (and stable trees) after that I think. Rafael thoughts?

Also, we should notify the atheros people so they could start fixing the driver (in a perfect world).

Best wishes
Kristoffer Ericson



-- 
Kristoffer Ericson <kristoffer.ericson-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
--
To unsubscribe from this list: send the line "unsubscribe linux-wireless" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
