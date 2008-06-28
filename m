From: Michael Buesch <mb-fseUSCV1ubazQB+pC5nmwQ@public.gmane.org>
Subject: Re: WARNING: at net/mac80211/rx.c:319 __ieee80211_rx_handle_packet+0x325/0x775()
Date: Sun, 29 Jun 2008 00:53:17 +0200
Message-ID: <200806290053.17284.mb@bu3sch.de>
References: <4866A3A5.3060208@yahoo.com> <200806282357.30255.mb@bu3sch.de> <4866B5BF.3000404@yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <4866B5BF.3000404-/E1597aS9LQAvxtiuMwx3w@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Sitsofe Wheeler <sitsofe-/E1597aS9LQAvxtiuMwx3w@public.gmane.org>
Cc: linux-wireless-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On Sunday 29 June 2008 00:05:51 Sitsofe Wheeler wrote:
> Michael Buesch wrote:
> > On Saturday 28 June 2008 22:48:37 Sitsofe Wheeler wrote:
> >> When I boot 2.6.26-rc8 on an x86_64 system I receive the following trace
> >> in the logs:
> >>
> >>> [   72.384009] ------------[ cut here ]------------
> >>> [   72.384021] WARNING: at net/mac80211/rx.c:319 __ieee80211_rx_handle_packet+0x325/0x775()
> > 
> > This seems to be the packet alignment warning. It's harmless
> > on your machine. You can disable it by turning off CONFIG_MAC80211_DEBUG_PACKET_ALIGNMENT.
> > 
> > However, which wireless driver do you use? This is a bug in the driver.
> 
> The intel iwl3945 driver.

That's known to be broken and is worked on.
Please simply disable the warning. It is harmless
on your machine.


-- 
Greetings Michael.
