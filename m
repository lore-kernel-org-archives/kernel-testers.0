From: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Subject: Re: 2.6.26-rc: SPARC: Sun Ultra 10 can not boot
Date: Thu, 19 Jun 2008 16:10:05 -0700 (PDT)
Message-ID: <20080619.161005.235931417.davem@davemloft.net>
References: <a4423d670806190707k7ae6da8cud80a826a1603d941@mail.gmail.com>
	<a4423d670806190902l48c542e0i6a7380a2d3e7f520@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <a4423d670806190902l48c542e0i6a7380a2d3e7f520-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org
Cc: kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, sparclinux-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

From: "Alexander Beregalov" <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date: Thu, 19 Jun 2008 20:02:44 +0400

> I have reverted this commit and
> 2.6.26-rc6-00233-g99d3b2d works fine. It can boot.

Thanks for your report, I'll look into this.

The irony is that this changeset was added to fix a
hang with lockdep enabled :-)
--
To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
