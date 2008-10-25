From: "John W. Linville" <linville-2XuSBdqkA4R54TAoqtyWWQ@public.gmane.org>
Subject: Re: why differnet wlan drivers need different settings?
Date: Sat, 25 Oct 2008 09:55:12 -0400
Message-ID: <20081025135512.GG19057@tuxdriver.com>
References: <200810251153.25533.bug-track@fisher-privat.net> <200810251303.35295.rjw@sisk.pl>
Mime-Version: 1.0
Return-path: <linux-wireless-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <200810251303.35295.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: linux-wireless-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Alexey Fisher <bug-track-M18mAb7Tlt0yCq4wW13eYl6hYfS7NtTn@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, linux-wireless-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On Sat, Oct 25, 2008 at 01:03:34PM +0200, Rafael J. Wysocki wrote:
> On Saturday, 25 of October 2008, Alexey Fisher wrote:
> > May be this is the wrong plase to ask. 
> 
> Yeah, better ask that on linux-wireless-u79uwXL29TY76Z2rM5mHXA@public.gmane.org (CCed).
> 
> > The question is: Why differnet wlan drivers use different settings to stay 
> > silent - powered on but not trying to associate to any accespoint?
> > For example: ipw2200 - if wlan was connfigured like:
> > 
> > iwconfig wlan1 essid "my-ap" chan 6 ap my:aps:mac ?key s:pass
> > 
> > this will normaly connect to my secure ?AP. and if i set after this:
> > ?
> > iwconfig wlan1 essid off ap off
> > 
> > it will connect to unsecure AP of my neighbour or of Dr.Evil :)
> > to disable association on ipw2200 i need to set all this and plus "chan 0".
> > With this cnowleg i want to set up iwl3945, and surprise it's not working. 
> > This driver do not accepted "chan 0" and instead of "essid off" it did 
> > "essid """
> > 
> > Are there any unified way to keep adapter powered on but not trying to 
> > associate to some AP?

That is from the bad-ole-days.  I could be wrong, but AFAIK only the
ipw2x00 drivers do that anyway.  I recently merged a patch to change
the default for that for ipw2200 into wireless-testing.  We should
probably have one for ipw2100 as well.

Anyway, there are module options for those.  Add "options ipw2200
associate=0" to /etc/modprobe.conf.

Hth!

John
-- 
John W. Linville		Linux should be at the core
linville-2XuSBdqkA4R54TAoqtyWWQ@public.gmane.org			of your literate lifestyle.
--
To unsubscribe from this list: send the line "unsubscribe linux-wireless" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
