From: Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>
Subject: Re: [Bug #13319] Page allocation failures with b43 and p54usb
Date: Sun, 17 May 2009 18:16:21 -0500
Message-ID: <4A109AC5.7040008@lwfinger.net>
References: <_AjETDMbIoL.A.DcH.RYzDKB@chimera>	<385Pu-agh7M.A.SU.iYzDKB@chimera> <20090516163610.8a012268.akpm@linux-foundation.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-wireless-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; q=dns/txt; d=att.net; s=dkim01;
      i=larry.finger-fOdFMYwuEsI@public.gmane.org; a=rsa-sha256; c=relaxed/relaxed;
      t=1242602207; h=Content-Transfer-Encoding:Content-Type:
     In-Reply-To:References:Subject:CC:To:MIME-Version:From:Date:
     Message-ID; bh=yhVzud7IsfnPDwi0W8nYH3c7o00teAnAEkk4DKVXVuI=; b=BwL
     EOEz9tyHw1QNbNTspBT1PDKaZgfmFZsFLqK2l+026YO6/fdp+mXoR+V02BXbjG7A+16
     8ofiS/cDXkggyLeg==
In-Reply-To: <20090516163610.8a012268.akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Sender: linux-wireless-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>, linux-wireless-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

Andrew Morton wrote:
> 
> Well..  order-1 GFP_ATOMIC allocations are unreliable.  The networking
> code should hanlde the situation and recover.  I assume that is
> happening in this case?

Yes, the driver has recovered in all cases so far.

> Perhaps we did something in that code after 2.6.29 which increased the
> frequency of the order-1 allocation attempts?  Maybe earlier kernels
> used order-0 all the time?  Those are much more reliable.

I think something happened to change the allocation as I never saw these O(1)
failures before with these particular drivers. I put in a few test printk's and
the buffers were 700-800 bytes long, and I would not expect them to require more
than an O(0) allocation.

I pushed 2.6.30-rc6 hard for ~12 hours without any recurrence of the problem.
Given the relative infrequency of the error, this certainly does not indicate a
fix in recent code. I will be trying to force it again.

Larry

--
To unsubscribe from this list: send the line "unsubscribe linux-wireless" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
