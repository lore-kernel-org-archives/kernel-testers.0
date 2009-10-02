From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #13943] WARNING: at net/mac80211/mlme.c:2292 with ath5k
Date: Fri, 2 Oct 2009 19:17:31 +0200
Message-ID: <200910021917.31509.rjw@sisk.pl>
References: <3onW63eFtRF.A.xXH.oMTxKB@chimera> <COE24pZSBH.A.A5C.VOTxKB@chimera> <b637ec0b0910020012n57e110cbl180aa5bda318e5d5@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <b637ec0b0910020012n57e110cbl180aa5bda318e5d5-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Fabio Comolli <fabio.comolli-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Luis R. Rodriguez" <mcgrof-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Friday 02 October 2009, Fabio Comolli wrote:
> Hi.
> I suppose this is still valid. I had to work around it by rfkill-ing
> the device during the suspend process and reenabling at resume time.

Thanks for the update.

> I can try to reproduce it with 2.6.31.1 if you want it.

In fact I'm more interested in whether or not it's still present in the Linus'
tree.

Thanks,
Rafael
