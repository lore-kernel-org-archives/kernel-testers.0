From: Gottfried Haider <gottfried.haider@gmail.com>
Subject: Re: [Bug #33482] [Regression] Bluetooth pairing does not work anymore
 in 2.6.39-rc3 (works in 2.6.38.3)
Date: Mon, 2 May 2011 23:04:21 +0200
Message-ID: <BANLkTimiSXHSxsjPH03Yey555U+F4m1uOA@mail.gmail.com>
References: <Xp4OiTz83N.A.O0D.JVGvNB@chimera> <G9uL1cldhmL.A.caE.nVGvNB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-type:content-transfer-encoding;
        bh=BQLaWdXboLCSpsuZ2g71Lft9RYj0nzOCosiEwl+wwVE=;
        b=svo//9218MalBsDe8D8wuLrNJwj0Xxc0NxdPw3j8EZgV+EgFz/vOUMl4USlIdZzdhZ
         MCqblWhApOmf17JRNShBbm2qN71qXA5SMGIuY+vbODgvLV8TLCRKt65Tgod23b0oxpI3
         JRhaAZyj5eUjbzUTQHMJLdMjXc7ovTCSZHx7E=
In-Reply-To: <G9uL1cldhmL.A.caE.nVGvNB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Florian Mickler <florian@mickler.org>

Hello Rafael,


> Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
33482
> Subject =A0 =A0 =A0 =A0 : [Regression] Bluetooth pairing does not wor=
k anymore in 2.6.39-rc3 (works in 2.6.38.3)
> Submitter =A0 =A0 =A0 : Gottfried Haider <gottfried.haider@gmail.com>
> Date =A0 =A0 =A0 =A0 =A0 =A0: 2011-04-16 16:38 (15 days old)
> Message-ID =A0 =A0 =A0: <BANLkTi=3DLvyZ+7BHfVL849pztfvsYaVM4SQ@mail.g=
mail.com>
> References =A0 =A0 =A0: http://marc.info/?l=3Dlinux-kernel&m=3D130297=
197128328&w=3D2

This can be removed from the regression list as it turned out to be
only a mis-config-uration (oldconfig listed BT_L2CAP as a new config
option, defaulting to false, when it had been build as a module
before).

regards,

Gottfried
