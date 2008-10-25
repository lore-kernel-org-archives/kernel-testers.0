From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: why differnet wlan drivers need different settings?
Date: Sat, 25 Oct 2008 13:03:34 +0200
Message-ID: <200810251303.35295.rjw@sisk.pl>
References: <200810251153.25533.bug-track@fisher-privat.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-wireless-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200810251153.25533.bug-track-M18mAb7Tlt0yCq4wW13eYl6hYfS7NtTn@public.gmane.org>
Content-Disposition: inline
Sender: linux-wireless-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Alexey Fisher <bug-track-M18mAb7Tlt0yCq4wW13eYl6hYfS7NtTn@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, linux-wireless-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On Saturday, 25 of October 2008, Alexey Fisher wrote:
> May be this is the wrong plase to ask. 

Yeah, better ask that on linux-wireless-u79uwXL29TY76Z2rM5mHXA@public.gmane.org (CCed).

> The question is: Why differnet wlan drivers use different settings to stay 
> silent - powered on but not trying to associate to any accespoint?
> For example: ipw2200 - if wlan was connfigured like:
> 
> iwconfig wlan1 essid "my-ap" chan 6 ap my:aps:mac ?key s:pass
> 
> this will normaly connect to my secure ?AP. and if i set after this:
> ?
> iwconfig wlan1 essid off ap off
> 
> it will connect to unsecure AP of my neighbour or of Dr.Evil :)
> to disable association on ipw2200 i need to set all this and plus "chan 0".
> With this cnowleg i want to set up iwl3945, and surprise it's not working. 
> This driver do not accepted "chan 0" and instead of "essid off" it did 
> "essid """
> 
> Are there any unified way to keep adapter powered on but not trying to 
> associate to some AP?
> 
--
To unsubscribe from this list: send the line "unsubscribe linux-wireless" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
