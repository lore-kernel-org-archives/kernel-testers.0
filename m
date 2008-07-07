From: "Yinghai Lu" <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #10872] x86_64 boot hang when CONFIG_NUMA=n
Date: Sun, 6 Jul 2008 23:57:05 -0700
Message-ID: <86802c440807062357r64385178sa8e24b13dd95ac5f@mail.gmail.com>
References: <Vu1KV8Wj_GP.A.qW.DzLcIB@albercik>
	 <uBi7uNfg81L.A.XLC.s0LcIB@albercik>
	 <20080706111750.a6d77e81.randy.dunlap@oracle.com>
	 <alpine.LFD.1.10.0807061133230.3016@woody.linux-foundation.org>
	 <20080707063218.GC23583@elte.hu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=FsORAqLO47Ft0hnTQ/VG3M2aeex/f6rvYNMFP54qN+w=;
        b=e2VQNWptgvBeNlGTNIEDy0d3DtItHy8eNP6+urLpY/t0SPLYF2gfEAIv79Xg83vVcj
         QRoz1GRpsoSElq3uYliao8fV/fAxTis10CwDCcx1HI4cuYWHPKtSmFNY6tyOdLH1ng7w
         tPMVvIs0Eq67rriHZXEOSItmanYEnFQ4WMh9k=
In-Reply-To: <20080707063218.GC23583-X9Un+BFzKDI@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Cc: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Randy Dunlap <randy.dunlap-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Sun, Jul 6, 2008 at 11:32 PM, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org> wrote:
>
> * Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org> wrote:
>
>> > This still happens with 2.6.26-rc9.  Using CONFIG_NUMA=y boots OK.
>>
>> Ok, then it wasn't the nr_zones thing.
>>
>> Since it seems to be repeatable for you, can you bisect it?
>
> one guess would be:
>
> | commit e8ee6f0ae5cd860e8e6c02807edfa3c1fa01bcb5
> | Author: Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> | Date:   Sun Apr 13 01:41:58 2008 -0700
> |
> |     x86: work around io allocation overlap of HT links
>
> but ... since CONFIG_NUMA makes it work, i'm not sure about that.
>
> Randy, could you post the full CONFIG_NUMA bootlog as well, does it show
> any difference in resource allocations?
>
l looked resource allocations in that bootlog.

all my AMD test servers work well with Randy's config (!NUMA)
( Linus tree or tip tree)

YH
