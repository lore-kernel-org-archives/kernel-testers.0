From: Geert Uytterhoeven <Geert.Uytterhoeven-osDt5Q4Chk1BDgjK7y7TUQ@public.gmane.org>
Subject: Re: [Bug #11988] Eliminate recursive mutex in compat fb ioctl path
Date: Fri, 14 Nov 2008 15:51:45 +0100 (CET)
Message-ID: <Pine.LNX.4.64.0811141549140.5955@vixen.sonytel.be>
References: <YrUCLn0F-xH.A.fhE.E4zFJB@chimera> <wnN9HICUAgP.A.Z-E.Q4zFJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <wnN9HICUAgP.A.Z-E.Q4zFJB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="utf-8"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Keith Packard <keithp-aN4HjG94KOLQT0dZR+AlfA@public.gmane.org>

On Sun, 9 Nov 2008, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
>=20
> The following bug entry is on the current list of known regressions
> from 2.6.27.  Please verify if it still should be listed and let me k=
now
> (either way).
>=20
>=20
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11988
> Subject		: Eliminate recursive mutex in compat fb ioctl path
> Submitter	: Keith Packard <keithp-aN4HjG94KOLQT0dZR+AlfA@public.gmane.org>
> Date		: 2008-11-03 7:06 (7 days old)
> References	: http://marc.info/?l=3Dlinux-kernel&m=3D122569604828448&w=
=3D4
> Handled-By	: Keith Packard <keithp-aN4HjG94KOLQT0dZR+AlfA@public.gmane.org>
> 		  Geert Uytterhoeven <Geert.Uytterhoeven-osDt5Q4Chk1BDgjK7y7TUQ@public.gmane.org>
> Patch		: http://marc.info/?l=3Dlinux-kernel&m=3D122569604828448&w=3D4
> 		  http://lkml.org/lkml/2008/10/31/162

=46ixed in mainline.

commit a684e7d33096892093456dd56a582cfc3bfad648
Author: Geert Uytterhoeven <Geert.Uytterhoeven-osDt5Q4Chk1BDgjK7y7TUQ@public.gmane.org>
Date:   Thu Nov 6 12:53:37 2008 -0800

    fbdev: fix fb_compat_ioctl() deadlocks

    commit 3e680aae4e53ab54cdbb0c29257dae0cbb158e1c ("fb: convert
    lock/unlock_kernel() into local fb mutex") introduced several deadl=
ocks
    in the fb_compat_ioctl() path, as mutex_lock() doesn't allow recurs=
ion,
    unlike lock_kernel().  This broke frame buffer applications on 64-b=
it
    systems with a 32-bit userland.
   =20
    commit 120a37470c2831fea49fdebaceb5a7039f700ce6 ("framebuffer compa=
t_ioctl
    deadlock") fixed one of the deadlocks.
   =20
    This patch fixes the remaining deadlocks:
      - Revert commit 120a37470c2831fea49fdebaceb5a7039f700ce6,
      - Extract the core logic of fb_ioctl() into a new function do_fb_=
ioctl(),
      - Change all callsites of fb_ioctl() where info->lock is already =
held to
        call do_fb_ioctl() instead,
      - Add sparse annotations to all routines that take info->lock.
   =20
    Signed-off-by: Geert Uytterhoeven <Geert.Uytterhoeven-osDt5Q4Chk1BDgjK7y7TUQ@public.gmane.org>
    Cc: Mikulas Patocka <mpatocka-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
    Cc: Krzysztof Helt <krzysztof.h1-5tc4TXWwyLM@public.gmane.org>
    Cc: Alan Cox <alan-qBU/x9rampVanCEyBjwyrvXRex20P6io@public.gmane.org>
    Signed-off-by: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
    Signed-off-by: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>

With kind regards,

Geert Uytterhoeven
Software Architect

Sony Techsoft Centre Europe
The Corporate Village =C2=B7 Da Vincilaan 7-D1 =C2=B7 B-1935 Zaventem =C2=
=B7 Belgium

Phone:    +32 (0)2 700 8453
=46ax:      +32 (0)2 700 8622
E-mail:   Geert.Uytterhoeven-osDt5Q4Chk1BDgjK7y7TUQ@public.gmane.org
Internet: http://www.sony-europe.com/

A division of Sony Europe (Belgium) N.V.
VAT BE 0413.825.160 =C2=B7 RPR Brussels
=46ortis =C2=B7 BIC GEBABEBB =C2=B7 IBAN BE41293037680010
