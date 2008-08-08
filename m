From: "Alexander Beregalov" <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: 2.6.26-rc: SPARC: Sun Ultra 10 can not boot
Date: Fri, 8 Aug 2008 14:56:35 +0400
Message-ID: <a4423d670808080356r6573102am8a1eb9dcc83910c8@mail.gmail.com>
References: <a4423d670808080231nc4d5e25q6636fe8ff090b84@mail.gmail.com>
	 <20080808.024024.205614839.davem@davemloft.net>
	 <a4423d670808080314weed9178o9f9ef52803a68501@mail.gmail.com>
	 <20080808.033811.129671951.davem@davemloft.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=w/0k8ZhZio614Or6y5qTIt8YoINngKDW/QRSLH89fKk=;
        b=e3tV3FXTd8wH6lM2vb82Ddii4k6NDkm6uB1aycDP1EidwC3I2wtTy/40+X1uNNLyLj
         K56jzxSsXkw4bvWRy9qMiczzj47WruweJPhLXLIjD4eYssmaK5qMLwypb5bXtVVkZDHl
         9/eaeeGZ8mvgyXE9qwiviZRyN4+kCSwfuCTfw=
In-Reply-To: <20080808.033811.129671951.davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Cc: mikpe-1zs4UD6AkMk@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, sparclinux-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

2008/8/8 David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>:
>> Yes, I applied it manually on top of 2.6.27-rc2-0166
>
> And then the problem goes away right?
>
No, It hangs in the same way, right after
console handover: boot [earlyprom0] -> real [tty0]
