From: =?UTF-8?B?VGhvbWFzIE3DvGxsZXI=?= <thomas@mathtm.de>
Subject: Re: [Bug #15719] virtio_net causing kernel BUG when running under
 VirtualBox
Date: Mon, 12 Apr 2010 10:39:54 +0200
Message-ID: <4BC2DC5A.6090007@mathtm.de>
References: <6Pphclm24fK.A.lSF.qsPvLB@chimera> <JVS2s9dmTsP.A.6eF.xsPvLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <JVS2s9dmTsP.A.6eF.xsPvLB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, "David S. Miller" <davem@davemloft.net>, Rusty Russell <rusty@rustcorp.com.au>, Shirley Ma <mashirle@us.ibm.com>, Shirley Ma <xma@us.ibm.com>

Hi,

a fix (commit 2c45cd43ff791cc4ab6a6332165ad53d7bcb3673) is included in
linux-next and net-next, but not (yet?) in linux-2.6.


Regards,
Thomas

On 07.04.2010 23:13, Rafael J. Wysocki wrote:
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
> Submitter	: Thomas M=C3=BCller <thomas@mathtm.de>
> Date		: 2010-03-27 14:32 (12 days old)
> First-Bad-Commit: http://git.kernel.org/git/linus/9ab86bbcf8be755256f=
0a5e994e0b38af6b4d399
> Message-ID	: <4BAE1707.2050803@mathtm.de>
> References	: http://marc.info/?l=3Dlinux-kernel&m=3D126970039227740&w=
=3D4
> Handled-By	: Shirley Ma <mashirle@us.ibm.com>
>=20
>=20
