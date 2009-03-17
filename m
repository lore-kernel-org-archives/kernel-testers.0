From: Jeff Chua <jeff.chua.linux@gmail.com>
Subject: Re: 2.6.29-rc8: Reported regressions from 2.6.28
Date: Wed, 18 Mar 2009 02:26:38 +0800
Message-ID: <b6a2187b0903171126y282077a7oe32dd3870a1ddf37@mail.gmail.com>
References: <1237143683.24621.7.camel@johannes.local>
	 <b6a2187b0903161655q15437156qc926c8db37d8ba4b@mail.gmail.com>
	 <20090317144802.GF3549@tuxdriver.com>
	 <20090317152801.GA6737@tuxdriver.com> <20090317153924.GA21061@elte.hu>
	 <20090317160527.GB6737@tuxdriver.com>
	 <b6a2187b0903170924u72723220x4c0a717e3cfebf8d@mail.gmail.com>
	 <20090317171047.GF6737@tuxdriver.com>
	 <b6a2187b0903171027w328f1dfds781910c0571b2424@mail.gmail.com>
	 <b6a2187b0903171031l3657dc93rbfe01dd4dc9b7a4@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <netdev-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=aP0lSJaTsS5v9I8ieTEjsYDjJNk14GqWIMa/zk5zzM4=;
        b=c05jPC2dyXIIaBeruNiR10+RjjxIPZJfG6ol7Nx7C3ZeOoOLasR0n564HXUR6YMR8y
         uaF//s+jLtr2PCs5jYKnriBFJb4ggeIEYe3kE3xF0NfsoCOYq2N5Zd6R83qWKaCo6vdW
         /6xOkIA1i5HVdNHzcm8EbXsRM8qltOimV9azs=
In-Reply-To: <b6a2187b0903171031l3657dc93rbfe01dd4dc9b7a4@mail.gmail.com>
Sender: netdev-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "John W. Linville" <linville@tuxdriver.com>
Cc: Ingo Molnar <mingo@elte.hu>, Linus Torvalds <torvalds@linux-foundation.org>, Johannes Berg <johannes@sipsolutions.net>, "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Adrian Bunk <bunk@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Network Development <netdev@vger.kernel.org>

On Wed, Mar 18, 2009 at 1:31 AM, Jeff Chua <jeff.chua.linux@gmail.com> wrote:
> My downloaded tree is clean. I'm trying your patches now.

John,

Your patches applied cleanly this time. And associating to the hidden
AP on 2.6.29-rc8. I'll run it against the WAG200G tomorrow. But from
what I can see, it's working well with the WAG354G.

I'll try out this as well "iw dev wlan0 interface add moni0 type
monitor flags none"

Your guys are great!

Thank you.

Jeff.
