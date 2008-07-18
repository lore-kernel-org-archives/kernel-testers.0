From: "Alexander Beregalov" <a.beregalov@gmail.com>
Subject: Re: linux-next: Tree for July 17: early crash on x86-64
Date: Fri, 18 Jul 2008 17:52:23 +0400
Message-ID: <a4423d670807180652y352e66lfe04d2b33d2ed176@mail.gmail.com>
References: <20080718012842.690b8346.sfr@canb.auug.org.au>
	 <200807180106.08328.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-next-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=eC/lghYwcz6mLvAIh/gLTuAWH3fo44i9ymU3Nn16ZDQ=;
        b=TfSpmM6T1V7wj5izwrzKoT68m02j4vEjhv4vBI4uiSi5pWhxkouZZZnBWFEqc1lgo8
         UE1vS+/upRPc93lGxlfsrwKkqgdp21nrzXK3Sr0Augh3sE/nU+5b4CzCqEW4iFh8y4Ab
         9DmeRpkn/xvAeoIIx+3IUNd/RUQZaHmNaC0k0=
In-Reply-To: <200807180106.08328.rjw@sisk.pl>
Content-Disposition: inline
Sender: linux-next-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, linux-next@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>, Ingo Molnar <mingo@elte.hu>, Kernel Testers List <kernel-testers@vger.kernel.org>

2008/7/18 Rafael J. Wysocki <rjw@sisk.pl>:
> This one crashes all of my x86-64 test boxes early during boot.
The same problem with next-20080718.
Unfortunatelly I do not have serial console on that host.
