From: Alex Deucher <alexdeucher-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: 3.2-rc6+: Reported regressions from 3.0 and 3.1
Date: Wed, 21 Dec 2011 08:57:42 -0500
Message-ID: <CADnq5_PYxp5Ud3oXNyJFWFmkE8Dhd54Qz1L4eCNRT1wyM=NioQ@mail.gmail.com>
References: <lx6sezwGldO.A.IhF.UBpWOB@chimera>
	<201112210039.14100.linux-pm-bounces@lists.linux-foundation.org>
	<1324455480.1807.153.camel@thor.local>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type:content-transfer-encoding;
        bh=LZzBt+lo/yxbw+zWUuvEIPBkjXJ2EeLsmIcL//KvJpg=;
        b=JZtmqISXSoP5MQUxhQ3T3wD/B0nbgII/M0HNfb6OEHMOUWLadu0uDXW+qp1N66mWE2
         MxFdGmqBomNlhEXvOx94Mv/wP7d0djjFQngioj4bdggpYrBNLO4klx9mU7qSYvzaJxfx
         7B4ABSo67/L/P9pOlfAuf2T4XX9dj7Ff3+4q0=
In-Reply-To: <1324455480.1807.153.camel-2h6evNeVVYGs1BDpvl8NfQ@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: =?ISO-8859-1?Q?Michel_D=E4nzer?= <michel-otUistvHUpPR7s880joybQ@public.gmane.org>
Cc: Bob Tracy <rct-GsGdjl1a1FBK+8ot1e1MDQ@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, DRI <dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org>

2011/12/21 Michel D=E4nzer <michel-otUistvHUpPR7s880joybQ@public.gmane.org>:
> On Mit, 2011-12-21 at 00:39 +0100, Rafael J. Wysocki wrote:
>>
>> Subject =A0 =A0: [BUG] 3.2-rcX radeon KMS system freeze
>> Submitter =A0: Bob Tracy <rct-GsGdjl1a1FBK+8ot1e1MDQ@public.gmane.org>
>> Date =A0 =A0 =A0 : 2011-11-25 20:33
>> Message-ID : 20111125203351.GA3651-GsGdjl1a1FBK+8ot1e1MDQ@public.gmane.org
>> References : http://marc.info/?l=3Dlinux-kernel&m=3D132225331312019&=
w=3D2
>
> Is that really a (recent) regression? It sounds like Bob's only getti=
ng
> things working for the first time, and I can't see any mention of a
> previous working kernel version.
>
> Anyway, might be worth following up on this on the dri-devel list wit=
h
> more information, e.g. the dmesg output and Xorg.0.log corresponding =
to
> the freeze.

Has KMS or recent mesa even been tested on Alpha?  If anything it
seems like it's probably a mesa bug rather than a kernel bug as it
seems to lock up when the desktop effects are loaded.

Alex
