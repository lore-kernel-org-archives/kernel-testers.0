From: Sitsofe Wheeler <sitsofe-/E1597aS9LQAvxtiuMwx3w@public.gmane.org>
Subject: Re: WARNING: at net/mac80211/rx.c:319 __ieee80211_rx_handle_packet+0x325/0x775()
Date: Sat, 28 Jun 2008 23:05:51 +0100
Message-ID: <4866B5BF.3000404@yahoo.com>
References: <4866A3A5.3060208@yahoo.com> <200806282357.30255.mb@bu3sch.de>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200806282357.30255.mb-fseUSCV1ubazQB+pC5nmwQ@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
Cc: linux-wireless-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

Michael Buesch wrote:
> On Saturday 28 June 2008 22:48:37 Sitsofe Wheeler wrote:
>> When I boot 2.6.26-rc8 on an x86_64 system I receive the following trace
>> in the logs:
>>
>>> [   72.384009] ------------[ cut here ]------------
>>> [   72.384021] WARNING: at net/mac80211/rx.c:319 __ieee80211_rx_handle_packet+0x325/0x775()
> 
> This seems to be the packet alignment warning. It's harmless
> on your machine. You can disable it by turning off CONFIG_MAC80211_DEBUG_PACKET_ALIGNMENT.
> 
> However, which wireless driver do you use? This is a bug in the driver.

The intel iwl3945 driver.
