From: Matthias Dahl <ml_kernel@mortal-soul.de>
Subject: Re: [Bug #14011] Kernel paging request failed in kmem_cache_alloc
Date: Wed, 26 Aug 2009 16:01:05 +0200
Message-ID: <200908261601.05734.ml_kernel@mortal-soul.de>
References: <riPp5fx5ECC.A.2IG.qsGlKB@chimera> <_yaHeGjHEzG.A.2bH.CtGlKB@chimera> <84144f020908252317j202aa459u27c40eed34debd6@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1757459AbZHZOBD@vger.kernel.org>
In-Reply-To: <84144f020908252317j202aa459u27c40eed34debd6@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Pekka Enberg <penberg@cs.helsinki.fi>
Cc: "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>

Hi Pekka,

> Can you reproduce the bug without the proprietary nvidia module that
> seems to be loaded?

I am sorry but I forgot to test that and right now I am not very keen on 
trying again since this is my primary machine and I had quite some fs 
corruption (ext4 on md raid5 -> no barriers) the last times. :-( But this also 
happened w/o Xorg ever being run during that session (though naturally the 
nvidia kernel module was still loaded).

So long,
Matthias
