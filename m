From: =?UTF-8?B?VGhvbWFzIE3DvGxsZXI=?= <thomas-5bHTHlrcoh6zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [Bug #15719] virtio_net causing kernel BUG when running under
 VirtualBox
Date: Fri, 23 Apr 2010 16:10:14 +0200
Message-ID: <4BD1AA46.2050007@mathtm.de>
References: <deuQKFRcc0B.A.3EG.BRSzLB@tosh> <YeFfFNFyTSF.A.sRH.jRSzLB@tosh>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <YeFfFNFyTSF.A.sRH.jRSzLB@tosh>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "David S. Miller" <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, Rusty Russell <rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org>, Shirley Ma <mashirle-r/Jw6+rmf7HQT0dZR+AlfA@public.gmane.org>, Shirley Ma <xma-r/Jw6+rmf7HQT0dZR+AlfA@public.gmane.org>

=46ixed by commit 0e413f22e4c1cbfe12907e462a7d739a2e316f2b.

Regards
Thomas

On 20.04.2010 05:19, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a summary =
report
> of recent regressions.
>=20
> The following bug entry is on the current list of known regressions
> from 2.6.33.  Please verify if it still should be listed and let the =
tracking team
> know (either way).
>=20
>=20
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D15719
> Subject		: virtio_net causing kernel BUG when running under VirtualBo=
x
> Submitter	: Thomas M=C3=BCller <thomas-5bHTHlrcoh6zQB+pC5nmwQ@public.gmane.org>
> Date		: 2010-03-27 14:32 (24 days old)
> First-Bad-Commit: http://kernel.org/git/linus/9ab86bbcf8be755256f0a5e=
994e0b38af6b4d399
> Message-ID	: <4BAE1707.2050803-5bHTHlrcoh6zQB+pC5nmwQ@public.gmane.org>
> References	: http://marc.info/?l=3Dlinux-kernel&m=3D126970039227740&w=
=3D4
> Handled-By	: Shirley Ma <mashirle-r/Jw6+rmf7HQT0dZR+AlfA@public.gmane.org>
>=20
>=20
