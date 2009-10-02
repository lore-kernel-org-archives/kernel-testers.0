From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #13942] Troubles with AoE and uninitialized object
Date: Fri, 2 Oct 2009 23:24:37 +0200
Message-ID: <200910022324.37790.rjw@sisk.pl>
References: <3onW63eFtRF.A.xXH.oMTxKB@chimera> <COE24pZSBH.A.t9C.XOTxKB@chimera> <20091002213630.42c73909@neptune.home>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20091002213630.42c73909-hY15tx4IgV39zxVx7UNMDg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="utf-8"
To: Bruno =?utf-8?q?Pr=C3=A9mont?= <bonbons-ud5FBsm0p/xEiooADzr8i9i2O/JbrIOy@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Friday 02 October 2009, Bruno Pr=C3=A9mont wrote:
> On Thu, 01 October 2009 "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> > This message has been generated automatically as a part of a report
> > of regressions introduced between 2.6.30 and 2.6.31.
> >=20
> > The following bug entry is on the current list of known regressions
> > introduced between 2.6.30 and 2.6.31.  Please verify if it still
> > should be listed and let me know (either way).
> >=20
> >=20
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D13942
> > Subject	: Troubles with AoE and uninitialized object
> > Submitter	: Bruno Pr=C3=A9mont <bonbons-ud5FBsm0p/xEiooADzr8i9i2O/JbrIOy@public.gmane.org>
> > Date		: 2009-08-04 10:12 (59 days old)
> > References	: http://marc.info/?l=3Dlinux-kernel&m=3D124938117104811=
&w=3D4
>=20
> This should have been fixed with commits:
>=20
>   18d8217bc441630c3c5ec7416c5a65c69e8a0979
>   aoe: end barrier bios with EOPNOTSUPP
>=20
>   This addresses the trace on unmounting XFS
>=20
>=20
>   7135a71b19be1faf48b7148d77844d03bc0717d6
>   aoe: allocate unused request_queue for sysfs
>=20
>   This addresses the NULL kobject part
>=20
>=20
> I think the second one made it into 2.6.31 but first one didn't,

Yes, it idid.

> please double-check! I've not seen them on stable though (which might
> be worth especially for the first one)

Thanks, closed.

Rafael
