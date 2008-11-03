From: Dan Williams <dcbw-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Subject: Re: why differnet wlan drivers need different settings?
Date: Mon, 03 Nov 2008 16:25:24 -0500
Message-ID: <1225747524.21347.2.camel@localhost.localdomain>
References: <200810251153.25533.bug-track@fisher-privat.net>
	 <200810251303.35295.rjw@sisk.pl> <20081025135512.GG19057@tuxdriver.com>
	 <200810252245.30279.bug-track@fisher-privat.net>
	 <1225124023.13499.40.camel@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1225124023.13499.40.camel-bi+AKbBUZKY6gyzm1THtWbp2dZbC/Bob@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Alexey Fisher <bug-track-M18mAb7Tlt0yCq4wW13eYl6hYfS7NtTn@public.gmane.org>
Cc: "John W. Linville" <linville-2XuSBdqkA4R54TAoqtyWWQ@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, linux-wireless-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On Mon, 2008-10-27 at 12:13 -0400, Dan Williams wrote:
> On Sat, 2008-10-25 at 22:45 +0200, Alexey Fisher wrote:
> > On Saturday 25 October 2008 15:55:12 John W. Linville wrote:
> > > On Sat, Oct 25, 2008 at 01:03:34PM +0200, Rafael J. Wysocki wrote:
> > > > On Saturday, 25 of October 2008, Alexey Fisher wrote:
> > > > > May be this is the wrong plase to ask.
> > > >
> > > > Yeah, better ask that on linux-wireless-u79uwXL29TY76Z2rM5mHXA@public.gmane.org (CCed).
> > > >
> > > > > The question is: Why differnet wlan drivers use different settings to
> > > > > stay silent - powered on but not trying to associate to any accespoint?
> > > > > For example: ipw2200 - if wlan was connfigured like:
> > > > >
> > > > > iwconfig wlan1 essid "my-ap" chan 6 ap my:aps:mac ?key s:pass
> > > > >
> > > > > this will normaly connect to my secure ?AP. and if i set after this:
> > > > > ?
> > > > > iwconfig wlan1 essid off ap off
> > > > >
> > > > > it will connect to unsecure AP of my neighbour or of Dr.Evil :)
> > > > > to disable association on ipw2200 i need to set all this and plus "chan
> > > > > 0". With this cnowleg i want to set up iwl3945, and surprise it's not
> > > > > working. This driver do not accepted "chan 0" and instead of "essid
> > > > > off" it did "essid """
> > > > >
> > > > > Are there any unified way to keep adapter powered on but not trying to
> > > > > associate to some AP?
> > >
> > > That is from the bad-ole-days.  I could be wrong, but AFAIK only the
> > > ipw2x00 drivers do that anyway.  I recently merged a patch to change
> > > the default for that for ipw2200 into wireless-testing.  We should
> > > probably have one for ipw2100 as well.
> > >
> > > Anyway, there are module options for those.  Add "options ipw2200
> > > associate=0" to /etc/modprobe.conf.
> > 
> > I use associate=0 with smole workaround:
> > 
> > diff --git a/drivers/net/wireless/ipw2200.c b/drivers/net/wireless/ipw2200.c
> > index dcce354..92583c6 100644
> > --- a/drivers/net/wireless/ipw2200.c
> > +++ b/drivers/net/wireless/ipw2200.c
> > @@ -7582,7 +7582,7 @@ static int ipw_associate(void *data)
> >  
> >  	if (!(priv->config & CFG_ASSOCIATE) &&
> >  	    !(priv->config & (CFG_STATIC_ESSID |
> > -			      CFG_STATIC_CHANNEL | CFG_STATIC_BSSID))) {
> > +			      CFG_STATIC_BSSID))) {
> >  		IPW_DEBUG_ASSOC("Not attempting association (associate=0)\n");
> >  		return 0;
> >  	}
> 
> Yeah, that's probably appropriate, otherwise just 'iwconfig eth1 channel
> 6' would trigger association to _something_, which is wrong.  Changing
> the channel should (and does) trigger reassociation, but only if there
> is an SSID to associate with!
> 
> In plain english, this if statement should read:
> 
> "If associate=0, and no locked SSID or locked BSSID have been set, don't
> associate"
> 
> > becouse networkmanager do not set channel=0 to be compartibel with other 
> > drivers. 
> 
> wpa_supplicant sets (or doesn't set) the channel, not NM...
> 
> Care to submit a patch with the appropriate signed-off-by tag?

Ping; could you submit the patch with the proper signed-off-by
statement?

Thanks!
Dan

