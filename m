From: Jeff Chua <jeff.chua.linux@gmail.com>
Subject: Re: 2.6.29-rc8: Reported regressions from 2.6.28
Date: Thu, 19 Mar 2009 11:25:44 +0800
Message-ID: <b6a2187b0903182025y5552900cu6213a4f4eafeb6e6@mail.gmail.com>
References: <MiincthRUSI.A.eKC.F4BvJB@chimera>
	 <b6a2187b0903141958u9dae0fdk1f44b387108b99e4@mail.gmail.com>
	 <b6a2187b0903142006u546fad9eme66f9ea7b464b81f@mail.gmail.com>
	 <1237140665.24621.2.camel@johannes.local>
	 <alpine.LFD.2.00.0903151136310.3131@localhost.localdomain>
	 <1237143683.24621.7.camel@johannes.local>
	 <20090315202603.GA9077@elte.hu>
	 <b6a2187b0903160624gb9d207dv301506e589d93ed4@mail.gmail.com>
	 <1237317742.31814.28.camel@johannes.local>
	 <b6a2187b0903181958ke11abe7tdcbc4efeb950954d@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <netdev-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=97+lu5xI2kuraLlH3Za9tHj4V1DsYp5ki5w9huE2v/E=;
        b=h3wfyY834SVpdCY0+vnyCVLLeP84Rmyl34Kvb1MYXfFvQ9NNckMjf4ZJB3p8d40uTv
         qiw4Bjep7wm1dV3RHTiSNbbBmuSR+BtUz4in9pRo+oCv6kE3npbMOcJItBi8DoA1lf7N
         ER1EcvYYHUuZ4vAnaHSDUHwzWpBAfvNOyU9DQ=
In-Reply-To: <b6a2187b0903181958ke11abe7tdcbc4efeb950954d@mail.gmail.com>
Sender: netdev-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Johannes Berg <johannes@sipsolutions.net>
Cc: Ingo Molnar <mingo@elte.hu>, Linus Torvalds <torvalds@linux-foundation.org>, "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Adrian Bunk <bunk@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Network Development <netdev@vger.kernel.org>, "John W. Linville" <linville@tuxdriver.com>

On Thu, Mar 19, 2009 at 10:58 AM, Jeff Chua <jeff.chua.linux@gmail.com>=
 wrote:
> I've tracked down to the sequence of iwconfig that causes it to fail.

> This loop only works 8 of 10 times with/without the patch.
> =A0 =A0 =A0 =A0iwconfig wlan0 mode Managed essid xxx key restricted x=
xx
> =A0 =A0 =A0 =A0iwconfig wlan0 ap auto channel auto =A0# auto outside =
loop
> =A0 =A0 =A0 =A0for((i =3D 0; i < 5; i++))
> =A0 =A0 =A0 =A0do
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0iwconfig wlan0 | grep -q "Not-Associat=
ed"
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0[ $? -ne 0 ] && break
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0echo ".\c"
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0sleep 1
> =A0 =A0 =A0 =A0done


I've modified it a little, and now it works 100% without patch, by
using "iwlist scan" instead of "sleep 1" ...
        iwconfig wlan0 mode Managed essid xxx key restricted xxx
        iwconfig wlan0 ap auto channel auto  # auto outside loop
        for((i =3D 0; i < 5; i++))
        do
                iwlist wlan0 scan >/dev/null  #use scan instead of slee=
p
                iwconfig $DEV | grep -q "Access Point: Not-Associated"
                [ $? -ne 0 ] && break
                echo ".\c"
        done


So, this will work for older kernel and well as 2.6.29-rc8.

Rafael, can we close the case? It's the iwconfig sequence that used to
work on 2.6.28-rc3 but now needs to be updated for 2.6.29-rc8.

Thanks,
Jeff.
