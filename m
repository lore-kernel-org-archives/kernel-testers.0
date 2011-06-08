From: =?UTF-8?Q?Am=C3=A9rico_Wang?= <xiyou.wangcong-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [regression] net: call dev_alloc_name from register_netdevice
Date: Wed, 8 Jun 2011 15:46:26 +0800
Message-ID: <BANLkTinxqgvqMDuWxv8iMTL6M=aXA+Jrzw@mail.gmail.com>
References: <1307518918.26284.2.camel@zwerg>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=nOcaB6E82r7/YXJtC8Rz80zTyDf2rAWrnYAMwBdJAUM=;
        b=kk+WpGAd/Qxtl1G6cGfYhV3ApktJ/VfZ/yqkhK1K+UQuj7lnEAQMzDG+43MFaJkM+a
         eZCiHic+NR8oimHX3Av6jC22di0Wk7kaiP/ePvfzPVTyqW/XuZhDjKfZvaliDeJimEpA
         U583299QnQuW8mNHTrWir5gaaVsq7YmaJ4YX8=
In-Reply-To: <1307518918.26284.2.camel@zwerg>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: Alexey Fisher <bug-track-M18mAb7Tlt0yCq4wW13eYl6hYfS7NtTn@public.gmane.org>
Cc: "kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jiri Pirko <jpirko-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, "David S. Miller" <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>

On Wed, Jun 8, 2011 at 3:41 PM, Alexey Fisher
<bug-track-M18mAb7Tlt0yCq4wW13eYl6hYfS7NtTn@public.gmane.org> wrote:
> Hallo,
>
> i have small regression after patch:
> commit 1c5cae815d19ffe02bdfda1260949ef2b1806171
> Author: Jiri Pirko <jpirko-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
> Date: =C2=A0 Sat Apr 30 01:21:32 2011 +0000
>
> =C2=A0 =C2=A0net: call dev_alloc_name from register_netdevice
> ....
>
> device names are broken.
> Here is dmesg before patch:
> [ 59.181464] wlan0: authenticate with 00:1c:10:xx:xx:xx (try 1)
> [ 59.185954] wlan0: authenticated
> [ 59.186027] wlan0: associate with 00:1c:10:xx:xx:xx (try 1)
> [ 59.188679] wlan0: RX AssocResp from 00:1c:10:xx:xx:xx (capab=3D0x11
> status=3D0 aid=3D2)
>
> And dmesg after patch:
> [ 76.046587] wlan%d: authenticate with 00:1c:10:xx:xx:xx (try 1)
> [ 76.048600] wlan%d: authenticated
> [ 76.048647] wlan%d: associate with 00:1c:10:xx:xx:xx (try 1)
> [ 76.051281] wlan%d: RX AssocResp from 00:1c:10:xx:xx:xx (capab=3D0x1=
1
> status=3D0 aid=3D2)
> [ 76.051288] wlan%d: associated

It is already fixed in wireless-testing

commit 59e7e7078d6c2c6294caf454c6e3695f9d3e46a2
Author: Thadeu Lima de Souza Cascardo <cascardo-DmMZpsCg3uxeGPcbtGPokg@public.gmane.org>
Date:   Thu Jun 2 17:28:37 2011 -0300

    mac80211: call dev_alloc_name before copying name to sdata

    This partially reverts 1c5cae815d19ffe02bdfda1260949ef2b1806171, be=
cause
    the netdev name is copied into sdata->name, which is used for debug=
ging
    messages, for example. Otherwise, we get messages like this:

    wlan%d: authenticated

    Signed-off-by: Thadeu Lima de Souza Cascardo <cascardo@holoscopio.c=
om>
    Cc: Jiri Pirko <jpirko-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
    Cc: David S. Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
    Cc: Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>
    Cc: "John W. Linville" <linville-2XuSBdqkA4R54TAoqtyWWQ@public.gmane.org>
    Signed-off-by: John W. Linville <linville-2XuSBdqkA4R54TAoqtyWWQ@public.gmane.org>

Thanks for reporting it!
