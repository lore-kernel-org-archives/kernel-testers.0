From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: Re: [Bug #12510] 2.6.29-rc2 dies on startup
Date: Mon, 16 Feb 2009 22:12:23 +0100
Message-ID: <200902162212.23446.rjw@sisk.pl>
References: <juADNmcceYF.A.mdD.Mr0lJB@chimera> <rjPbZ5GRJPO.A.jxF.ls0lJB@chimera> <87ab8mt7s3.fsf@tac.ki.iif.hu>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1752221AbZBPVMq@vger.kernel.org>
In-Reply-To: <87ab8mt7s3.fsf@tac.ki.iif.hu>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: Ferenc Wagner <wferi@niif.hu>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>

On Monday 16 February 2009, Ferenc Wagner wrote:
> "Rafael J. Wysocki" <rjw@sisk.pl> writes:
>=20
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> >
> > The following bug entry is on the current list of known regressions
> > from 2.6.28.  Please verify if it still should be listed and let me=
 know
> > (either way).
> >
> >
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D12510
> > Subject		: 2.6.29-rc2 dies on startup
> > Submitter	: Ferenc Wagner <wferi@niif.hu>
> > Date		: 2009-01-19 12:53 (27 days old)
> > References	: http://marc.info/?l=3Dlinux-kernel&m=3D123236969321703=
&w=3D4
>=20
> This is fixed in 2.6.29-rc5 by
>=20
> commit 5701c0519b7a357a602fda5c96f26197ecfc4c85
> Author: Arve Hj=C3=B8nnev=C3=A5g <arve@android.com>
> Date:   Fri Jan 30 20:21:09 2009 -0800
>=20
>     Staging: android: ram_console: Disable ECC when early init is
>     enabled and validate buffer size

Thanks, closed.

Rafael
