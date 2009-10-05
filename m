From: PVP <pvp-lsts@fs.ru.acad.bg>
Subject: Re: [Bug #14214] BUG at drivers/scsi/scsi_lib.c:1108!
Date: Mon, 05 Oct 2009 15:46:58 +0300
Message-ID: <4AC9EAC2.5000705@fs.ru.acad.bg>
References: <9UCePxij8cB.A.VCG.-3SxKB@chimera> <Q3xT3CnoTGE.A.QTH.f4SxKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S932497AbZJEMxO@vger.kernel.org>
In-Reply-To: <Q3xT3CnoTGE.A.QTH.f4SxKB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>

Rafael J. Wysocki =D0=BD=D0=B0=D0=BF=D0=B8=D1=81=D0=B0:
> This message has been generated automatically as a part of a report
> of recent regressions.
>=20
> The following bug entry is on the current list of known regressions
> from 2.6.31.  Please verify if it still should be listed and let me k=
now
> (either way).
>=20
>=20
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D14214
> Subject		: BUG at drivers/scsi/scsi_lib.c:1108!
> Submitter	: Plamen Petrov <pvp-lsts@fs.ru.acad.bg>
> Date		: 2009-09-23 11:13 (9 days old)
>=20
>=20
Sorry for the late answer - I had ISP troubles.

The above bug entry should NOT be listed, because the problem
was fixed in 2.6.32-rc1, and Jens Axboe pointed me the exact
commit, which solves my problems (it was raid related).

Thanks,
Plamen Petrov
