From: Grant Grundler <grundler-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #13001] PCI-DMA: Out of IOMMU space
Date: Mon, 4 May 2009 18:58:27 -0700
Message-ID: <da824cf30905041858t2cbd0fa2x4075f387973e2700@mail.gmail.com>
References: <egHshlwQQFE.A.8CD.mpE9JB@chimera>
	 <20090428172845R.fujita.tomonori@lab.ntt.co.jp>
	 <db2b43030904280218v61fded68rc585ce9c58ba1cce@mail.gmail.com>
	 <20090428184431Z.fujita.tomonori@lab.ntt.co.jp>
	 <db2b43030905032227u73a41ec3wa511efcef6a22169@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=google.com; s=beta;
	t=1241488710; bh=u6bQ8z7UpH2E7G798ys8akhBpyY=;
	h=DomainKey-Signature:MIME-Version:In-Reply-To:References:Date:
	 Message-ID:Subject:From:To:Cc:Content-Type:
	 Content-Transfer-Encoding:X-System-Of-Record; b=Z4zp5epSO8BdFdY2QT
	cygayRvjUkdddoOedXHT2/ZZBIQCgrj9wK5x9mKMEJhvAsJBlECb2FvP2B195+eBnda
	w==
In-Reply-To: <db2b43030905032227u73a41ec3wa511efcef6a22169-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: =?UTF-8?B?0JTQsNC90LjQu9CwINCW0YPQutC+0YbQutC40Lk=?= <optimusgd-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: FUJITA Tomonori <fujita.tomonori-Zyj7fXuS5i5L9jVzuh4AOg@public.gmane.org>, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

2009/5/3 =D0=94=D0=B0=D0=BD=D0=B8=D0=BB=D0=B0 =D0=96=D1=83=D0=BA=D0=BE=D1=
=86=D0=BA=D0=B8=D0=B9 <optimusgd-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>:
=2E..
> WARNING: at lib/dma-debug.c:607 check_unmap+0x542/0x610()
> Hardware name: HP xw9400 Workstation
> 3w-9xxx 0001:45:00.0: DMA-API: device driver tries to free DMA memory
> it has not allocated [device address=3D0x0000000000000000] [size=3D36
> bytes]

This is definitely a driver bug. Just follow the stack trace back to
the device driver.

thanks!
grant
