From: "Alexander Beregalov" <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: 2.6.26-rc: SPARC: Sun Ultra 10 can not boot
Date: Fri, 8 Aug 2008 18:28:26 +0400
Message-ID: <a4423d670808080728s68d351a6l869152f5908eb6d8@mail.gmail.com>
References: <a4423d670808080314weed9178o9f9ef52803a68501@mail.gmail.com>
	 <20080808.033811.129671951.davem@davemloft.net>
	 <a4423d670808080356r6573102am8a1eb9dcc83910c8@mail.gmail.com>
	 <20080808.041814.41687650.davem@davemloft.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=sUPH1o6oE9H7pf5AVVSKMbDcen+wG4kev5B2Mhl6oP4=;
        b=KFb/j8ifCGt3qxRn19mqcW1wSSZcXWjisxMEX1jpL84/EVY8dLLwQTLXk7o09TW1BU
         UrevQpr3CIZC49USlmyvhzANEBkiV9dSKIvGSE4xWStLq4v7INoYdYTL/vlghdWAKNGu
         RCdRTZ8Y0oR9yDBI7ofZ26pfWP8PYDyErekDg=
In-Reply-To: <20080808.041814.41687650.davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Cc: kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, sparclinux-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

2008/8/8 David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>:
> Please also double check that you patched the kernel with my
> fix correctly.  I used your exact config, on the exact same
> kind of system, reproducing the exact same hang, and it goes
> away with my fix.
>
It can be a different compiler version,
but I tried 4.3.1 and 4.1.2 with the same result.

After I removed CON_BOOT warnings apear after
Locking API testsuite:
<..>
Good, all 218 testcases passed!
Dentry cache hash table entries: 131072 (order: 7, 1048576 bytes)
Inode-cache hash table entries: 65536 (order: 6, 524288 bytes)
=== here ===
Memory: 1019600k available (2672k kernel code, 1264k data, 128k init)
[fffff80000000000,000000003ff46000]
SLUB: Genslabs=13, HWalign=32, Order=0-2, MinObjects=8, CPUs=1, Nodes=1
Calibrating delay using timer specific routine.. 884.33 BogoMIPS (lpj=4421694)

Is it possible that lockdep messages did not appear when CON_BOOT was
in the flags?

Hope it will help.
