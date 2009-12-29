From: Vincent ETIENNE <ve@vetienne.net>
Subject: Re: [Bug #14906] boot problem bisected to commit 99935a7a59
Date: Tue, 29 Dec 2009 22:37:58 +0100
Message-ID: <200912292237.58999.ve@vetienne.net>
References: <LptzGUUXbTK.A.MSF.ymhOLB@chimera> <NJVdobuNFNK.A.LvH.ZnhOLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1752810AbZL2ViK@vger.kernel.org>
In-Reply-To: <NJVdobuNFNK.A.LvH.ZnhOLB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="utf-8"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Yinghai Lu <yinghai@kernel.org>

Le mardi 29 d=C3=A9cembre 2009 16:09:58, Rafael J. Wysocki a =C3=A9crit=
 :
> This message has been generated automatically as a part of a report
> of recent regressions.
>=20
> The following bug entry is on the current list of known regressions
> from 2.6.32.  Please verify if it still should be listed and let me k=
now
> (either way).
>=20
>=20
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D14906
> Subject		: boot problem bisected to commit 99935a7a59
> Submitter	: Vincent ETIENNE <ve@vetienne.net>
> Date		: 2009-12-19 16:07 (11 days old)
> References	: http://marc.info/?l=3Dlinux-kernel&m=3D126123946509316&w=
=3D4
> Handled-By	: Yinghai Lu <yinghai@kernel.org>
> Patch		: http://patchwork.kernel.org/patch/68941/
>=20

The proposed patch works for me but the bug is still present in 2.6.33-=
rc2=20
(patch still aply cleanly in rc2 and continue to solve the problem). Ha=
ve to=20
wait for rc3.
