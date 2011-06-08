From: Alexey Fisher <bug-track-M18mAb7Tlt0yCq4wW13eYl6hYfS7NtTn@public.gmane.org>
Subject: [regression] net: call dev_alloc_name from register_netdevice
Date: Wed, 08 Jun 2011 09:41:58 +0200
Message-ID: <1307518918.26284.2.camel@zwerg>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Jiri Pirko <jpirko-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, "David S. Miller" <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>

Hallo,

i have small regression after patch:
commit 1c5cae815d19ffe02bdfda1260949ef2b1806171
Author: Jiri Pirko <jpirko-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Date:   Sat Apr 30 01:21:32 2011 +0000

    net: call dev_alloc_name from register_netdevice
....

device names are broken.
Here is dmesg before patch:
[ 59.181464] wlan0: authenticate with 00:1c:10:xx:xx:xx (try 1)
[ 59.185954] wlan0: authenticated
[ 59.186027] wlan0: associate with 00:1c:10:xx:xx:xx (try 1)
[ 59.188679] wlan0: RX AssocResp from 00:1c:10:xx:xx:xx (capab=0x11
status=0 aid=2)

And dmesg after patch:
[ 76.046587] wlan%d: authenticate with 00:1c:10:xx:xx:xx (try 1)
[ 76.048600] wlan%d: authenticated
[ 76.048647] wlan%d: associate with 00:1c:10:xx:xx:xx (try 1)
[ 76.051281] wlan%d: RX AssocResp from 00:1c:10:xx:xx:xx (capab=0x11
status=0 aid=2)
[ 76.051288] wlan%d: associated
-- 
Regards,
        Alexey
