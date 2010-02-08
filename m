From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Subject: Re: [Bug #15096] Resume lock up -- bisected, commit 
	3a1151e3f124fd1a2c54b8153f510f1a7c715369
Date: Mon, 8 Feb 2010 13:38:30 +0100
Message-ID: <b170af451002080438i18a1e541x8dc038f4b5f129f4@mail.gmail.com>
References: <2uzMDuY-7_O.A.M1G.7X1bLB@chimera>
	 <iuJeop2ribM.A.fyH.fY1bLB@chimera>
	 <b170af451002072345x1e7666adv7f105a5f847f4d0d@mail.gmail.com>
	 <201002081156.24020.rjw@sisk.pl> <4B7004F4.3030804@canonical.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=PXYYoseUkqbgL55np5FHjoGISQis1Anx2DZWo86Y0vQ=;
        b=jH4Sr0AmCRkbNyEwvF+EJjdbu/UWPG90MZiKYxphxAjRIIIr8H33Qo8WevJCqp4X8V
         UFPfISygQRDNhMXGKNREC3cV/avRou76msiDIRGxAd5py6ORPFv1ISY6tPNgq0RifldG
         3pNFYDG/16tTgmvK6knu9sm2BMu6JBUbM+JeU=
In-Reply-To: <4B7004F4.3030804@canonical.com>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: Stefan Bader <stefan.bader@canonical.com>
Cc: "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Len Brown <len.brown@intel.com>, Zhang Rui <rui.zhang@intel.com>

2010/2/8 Stefan Bader <stefan.bader@canonical.com>:
> Rafael J. Wysocki wrote:
>> On Monday 08 February 2010, Rafa=C5=82 Mi=C5=82ecki wrote:
>>> 2010/2/8 Rafael J. Wysocki <rjw@sisk.pl>:
>>>> This message has been generated automatically as a part of a repor=
t
>>>> of regressions introduced between 2.6.31 and 2.6.32.
>>>>
>>>> The following bug entry is on the current list of known regression=
s
>>>> introduced between 2.6.31 and 2.6.32. =C2=A0Please verify if it st=
ill should
>>>> be listed and let the tracking team know (either way).
>>>>
>>>>
>>>> Bug-Entry =C2=A0 =C2=A0 =C2=A0 : http://bugzilla.kernel.org/show_b=
ug.cgi?id=3D15096
>>>> Subject =C2=A0 =C2=A0 =C2=A0 =C2=A0 : Resume lock up -- bisected, =
commit 3a1151e3f124fd1a2c54b8153f510f1a7c715369
>>>> Submitter =C2=A0 =C2=A0 =C2=A0 : Rafa=C5=82 Mi=C5=82ecki <zajec5@g=
mail.com>
>>>> Date =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0: 2010-01-20 23:15 (=
19 days old)
>>>> First-Bad-Commit: http://git.kernel.org/git/linus/3a1151e3f124fd1a=
2c54b8153f510f1a7c715369
>>
>> It looks like we should revert this commit, seems broken.
>
> Hm, otoh we had definitely people with some Asus laptops who where on=
ly be able
> to use backlight control with it. So I would rather prefer some work =
around to
> the suspend/resume problem (_DOS if I understood correctly).

It's same case with my Sony VAIO. Without this I can not control
backlight. Eventually I can hack on GPU registers directly, but I
don't think it can be called solution.

--=20
Rafa=C5=82
