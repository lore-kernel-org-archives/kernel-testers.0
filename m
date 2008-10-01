From: risto.suominen-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org
Subject: Re: regression on imac G3: problems with sound
Date: Wed, 1 Oct 2008 23:47:34 +0300
Message-ID: <46e1c7760810011347x22b32586yc2e3af6ea6f0a2de@mail.gmail.com>
References: <200810011755.11536.m.kozlowski@tuxland.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=2SeeRtqHSOBX7CtnoE1jGirqOZqvCpxM+1b/suIjB8U=;
        b=hPF733CHUPEe2LJqZVud/FqkE5kqqraHK8Yv+uhdU0Ff5IuZbQIagmFSpP25GzVTIX
         R0YWn3S5hmeOKYEwNZba1Ma63sZEJFOzjxjXtMwsD22DPJVvMbdFNuG/yR2I3UwsKWy8
         3Lg+BFqNAEHkutAfPvPpzGT8pYTg9IUbjwuhM=
In-Reply-To: <200810011755.11536.m.kozlowski-NWF1p15JEu3VItvQsEIGlw@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Mariusz Kozlowski <m.kozlowski-NWF1p15JEu3VItvQsEIGlw@public.gmane.org>
Cc: Takashi Iwai <tiwai-l3A5Bk7waGM@public.gmane.org>, lkml <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linuxppc-dev-mnsaURCQ41sdnm+yROfE0A@public.gmane.org, paulus-eUNUBHrolfbYtjvyW6yDsg@public.gmane.org, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>

2008/10/1, Mariusz Kozlowski <m.kozlowski-NWF1p15JEu3VItvQsEIGlw@public.gmane.org>:
> Hello,
>
> 	I found that on my old iMac G3 aumix behaves weird on newer (up to
> 2.6.27-rc8) kernels. The sound is only present _when_ muted and is quiet
> I'd say 10% of 'normal' max level. If you turn the volume up - the box is
> silent.
> If you unmute - the box is silent. 100% reproducible.
>
> Bisection result is a bit surprising as it seems it was introduced some time
> ago,
> in 2.6.25 ~ 2.6.26-rc1 window:
>
> commit a8c2a6bf464d983c642c8b8b001a57aabbf76673
> Author: Risto Suominen <Risto.Suominen-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date:   Thu Apr 17 17:55:30 2008 +0200
>
>     [ALSA] snd-powermac: AWACS and Screamer mixers for PM7500, Beige, and
> iMac SL
>
>     Add mixer controls and correct headphone detection bits for PowerMacs
>     7300/7500 (AWACS) and G3 Beige (Screamer), and iMac G3 Slot-loading
>     (Screamer).
>
>
> 	Mariusz
>
>
>
> processor       : 0
> cpu             : 740/750
> temperature     : 52 C (uncalibrated)
> clock           : 400.000000MHz
> revision        : 2.2 (pvr 0008 0202)
> bogomips        : 49.79
> timebase        : 24967326
> platform        : PowerMac
> model           : PowerMac2,1
> machine         : PowerMac2,1
> motherboard     : PowerMac2,1 MacRISC2 MacRISC Power Macintosh
> detected as     : 66 (iMac FireWire)
> pmac flags      : 00000014
> L2 cache        : 512K unified
> pmac-generation : NewWorld
>
> 0000:00:0b.0 Host bridge: Apple Computer Inc. UniNorth AGP
> 0000:00:10.0 Display controller: ATI Technologies Inc Rage 128 RL/VR AGP
> 0001:10:0b.0 Host bridge: Apple Computer Inc. UniNorth PCI
> 0001:10:12.0 FireWire (IEEE 1394): Texas Instruments TSB12LV23 IEEE-1394
> Controller
> 0001:10:13.0 Ethernet controller: Digital Equipment Corporation DECchip
> 21142/43 (rev 41)
> 0001:10:17.0 Class ff00: Apple Computer Inc. KeyLargo Mac I/O (rev 02)
> 0001:10:18.0 USB Controller: Apple Computer Inc. KeyLargo USB
> 0001:10:19.0 USB Controller: Apple Computer Inc. KeyLargo USB
> 0002:20:0b.0 Host bridge: Apple Computer Inc. UniNorth Internal PCI
>
>
Mariusz, thank you for the report. This is my fault. Sorry.

PowerMac2,1 seems to have the mute bit reversed compared to later
models, PowerMac2,2 and PowerMac4,1, which I was using for testing my
changes.

This has been fixed in a later patch that should be included in kernel
2.6.27, I believe.

Takashi, when was this (or will be) included? I sent two patches on 2008-08-25.

Risto
