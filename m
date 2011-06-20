From: Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #34002] [REGRESSION] [2.6.39-rc3] Wrong resolution in framebuffer and X Window
Date: Mon, 20 Jun 2011 17:37:42 +0200
Message-ID: <201106201737.42559.maciej.rutecki@gmail.com>
References: <9NVbY1BZ_5D.A.2lE.jzS9NB@chimera> <kTLfM29CaqB.A.P3F.a1S9NB@chimera> <20110615114614.054df25f@jbarnes-desktop>
Reply-To: maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:from:reply-to:to:subject:date:user-agent:cc
         :references:in-reply-to:mime-version:content-type
         :content-transfer-encoding:message-id;
        bh=x6jnBtmwNI7WNwvFXmcch/IrAfBILIFaH0gyyPJNAyU=;
        b=cb3xmbrsGgsU55YP1Ik1R0dZtQ9IgZgcD73qYJGsXz959ZN158fbS8wfV5h9AYmIy+
         3H2Mc4VW0uA3zvklloIrHIMFQVHRr44ECgCaCuFpQoa4eL85y9HQPUQ5zZ5AgIt/gda5
         NQDQNRAZ32xMy3J8EUmAR/EfzGCX8kFgcUJMM=
In-Reply-To: <20110615114614.054df25f@jbarnes-desktop>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="windows-1252"
To: Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>, chris-Y6uKTt2uX1cEflXRtASbqLVCufUGDwFn@public.gmane.org
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>

On =C5=9Broda, 15 czerwca 2011 o 20:46:14 Jesse Barnes wrote:

>=20
> Did you ever bisect this issue? As Chris says it sounds like an EDID
> problem; we detect the outputs and attach some modes, but they sound
> like the wrong ones for your config.  Maybe we broke EDID fetching fo=
r
> your config?


Result of bisection:
8f9a3f9b63b8cd3f03be9dc53533f90bd4120e5f is the first bad commit
commit 8f9a3f9b63b8cd3f03be9dc53533f90bd4120e5f
Author: Chris Wilson <chris-Y6uKTt2uX1cEflXRtASbqLVCufUGDwFn@public.gmane.org>
Date:   Tue Feb 1 09:01:13 2011 +0000

    drm/i915: Enable GMBUS for post-gen2 chipsets

    With the recent SDVO fix, this is working on all the machines I hav=
e to
    hand - except for an 845G.

    Signed-off-by: Chris Wilson <chris-Y6uKTt2uX1cEflXRtASbqLVCufUGDwFn@public.gmane.org>

:040000 040000 eb835ca9bf353d1d548b69d415801720a577184a
3e0a9430c43030735dfe2f694a1ad694cc01d483 M      drivers

Revert this commit from 3.0-rc1 solves problem.

Regards
--=20
Maciej Rutecki
http://www.maciek.unixy.pl
