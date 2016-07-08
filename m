From: Dmitry Torokhov <dmitry.torokhov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH v2] input: tablet: pegasus_notetaker: USB PM fixes
Date: Fri, 8 Jul 2016 14:08:24 -0700
Message-ID: <20160708210824.GE28589@dtor-ws>
References: <1465903215-2351-1-git-send-email-martink@posteo.de>
 <20160623171835.GE32561@dtor-ws>
 <246597fa-6a85-1128-853d-3ebdf6f41032@posteo.de>
Mime-Version: 1.0
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=oYmwhE3AsjC2g1+CeGaMpG8GVaIdWDej/IsoTyLDdMA=;
        b=iBBRJWBayAIgriCJGD1qZ2WNVL0o1eN6pjoAUcDcwx4OLAKbqB3lzfI6XXGhwG9ZRS
         u6W/kn9l/qwQyvXbdqc97UXcNDXv9BsA9UhdjednoYyEBnOMfKjQUMj7c8aDDP8OM1AH
         spNFXhqNX/AidVYjI0iaOriPqw8XRaDkqRTrBlaTiAaTLBwGwKPQFO1XfCmURwXaigeA
         kbB7ftV/JPMjyNsVwcW6h75NZaoNrzXvu4TjrQBH0Ul5W+o1gVAlJoxCy7AakP82Jx9J
         UaaWwnTTBtGJhJAygy4tnsJEZls2CQP2R03c2DaesIpCOGRTVqKIBY3e9/1aoxe462A7
         n86A==
Content-Disposition: inline
In-Reply-To: <246597fa-6a85-1128-853d-3ebdf6f41032-1KBjaw7Xf1+zQB+pC5nmwQ@public.gmane.org>
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Martin Kepplinger <martink-1KBjaw7Xf1+zQB+pC5nmwQ@public.gmane.org>
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-input-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On Tue, Jun 28, 2016 at 06:17:13PM +0200, Martin Kepplinger wrote:
> Am 2016-06-23 um 19:18 schrieb Dmitry Torokhov:
> > Hi Martin,
> > 
> > On Tue, Jun 14, 2016 at 01:20:15PM +0200, Martin Kepplinger wrote:
> >>  static int pegasus_reset_resume(struct usb_interface *intf)
> >>  {
> >> +	struct pegasus *pegasus = usb_get_intfdata(intf);
> >> +
> >> +	if (pegasus->dev->users)
> >> +		pegasus_set_mode(pegasus, PEN_MODE_XY, NOTETAKER_LED_MOUSE);
> >> +
> >>  	return pegasus_resume(intf);
> > 
> > Hmm, we need to take input mutex when using pegasus->dev->users, how
> > about the version below instead?
> > 
> > Thanks.
> > 
> 
> Sorry for the delay, give me a few more days to test and confirm this or
> come up with a final patch.

Martin, did you have time to try out this version of the patch?

Thanks!

-- 
Dmitry
--
To unsubscribe from this list: send the line "unsubscribe linux-usb" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
