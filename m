From: Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #34002] [REGRESSION] [2.6.39-rc3] Wrong resolution in framebuffer and X Window
Date: Wed, 15 Jun 2011 22:56:40 +0200
Message-ID: <201106152256.41151.maciej.rutecki@gmail.com>
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
        bh=19VoYWxTopcJaAj2XxOL8MlgMOs0TG6VhjOJiSfn8pE=;
        b=HChg5gpXSMEQX1xyomBXYWgUoe8QX2EkiZMOb6phrk2jpjO7itZp640D4/0vxfy7T0
         Gy47Jay5n6f/kCkf8eviOUkBpwEaaK5/YXoGQUNIaLWkuLi28vxUOMqQb7qbxZf9ROak
         ZEltK5rdT2c3x3s+lCO6Da+CHd/exO4U4IZys=
In-Reply-To: <20110615114614.054df25f@jbarnes-desktop>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="windows-1252"
To: Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>

On =C5=9Broda, 15 czerwca 2011 o 20:46:14 Jesse Barnes wrote:
> On Sun, 12 Jun 2011 23:12:08 +0200 (CEST)
>=20
> "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> > This message has been generated automatically as a part of a report
> > of regressions introduced between 2.6.38 and 2.6.39.
> >=20
> > The following bug entry is on the current list of known regressions
> > introduced between 2.6.38 and 2.6.39.  Please verify if it still sh=
ould
> > be listed and let the tracking team know (either way).
> >=20
> >=20
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D34002
> > Subject		: [REGRESSION] [2.6.39-rc3] Wrong resolution in=20
framebuffer and
> > X Window Submitter	: Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > Date		: 2011-04-17 16:04 (57 days old)
> > Message-ID	: <201104171804.04664.maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > References	: http://marc.info/?l=3Dlinux-fbdev&m=3D130305625114863&=
w=3D2
>=20
> Did you ever bisect this issue? As Chris says it sounds like an EDID
> problem; we detect the outputs and attach some modes, but they sound
> like the wrong ones for your config.  Maybe we broke EDID fetching fo=
r
> your config?


I will try bisection at the weekend (maybe earlier if I have more free =
time).

Regards

--=20
Maciej Rutecki
http://www.maciek.unixy.pl
