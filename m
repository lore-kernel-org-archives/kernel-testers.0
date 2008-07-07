From: "Alexander Beregalov" <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: 2.6.26-rc: SPARC: Sun Ultra 10 can not boot
Date: Mon, 7 Jul 2008 19:59:04 +0400
Message-ID: <a4423d670807070859y74f529b5i60f04e0a37a01cd3@mail.gmail.com>
References: <20080620.162135.203810660.davem@davemloft.net>
	 <a4423d670806201636n4f3d107bk290ed831eb5eefb4@mail.gmail.com>
	 <a4423d670807070219s2dd43aaia29713f5076ecd0d@mail.gmail.com>
	 <20080707.040126.178187777.davem@davemloft.net>
	 <18546.5247.797478.66373@harpo.it.uu.se>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=E9oNCWZBqGB7azUu6PtGjICeLSWwhvsO+64ktvi4ztI=;
        b=Ui0tHX4cXHoiPOlVDISyOKOuur/BtZGvoV6ZuNxI8jlQQZFiHr+x2ft1ujUcDScz7i
         Uzft9e9xRFxQ/LZyjaDBkvO9GJKUvWnfl1JdcB7nT+Mo3SMfcYh/680nTShERjTwhZVX
         WYFHm2Pl9ehSmHa5FN4I57hdyzJc3ksyRKQRI=
In-Reply-To: <18546.5247.797478.66373-gq7oiAaKCbRt3AgVzhmPzw@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Mikael Pettersson <mikpe-1zs4UD6AkMk@public.gmane.org>
Cc: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, sparclinux-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

I have turned off LOCKDEP and it boots properly.
2.6.26-rc9-00005-g1b40a89

Mikael's config also does not contain LOCKDEP.
