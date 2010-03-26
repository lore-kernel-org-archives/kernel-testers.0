From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #15142] sysfs-related lockdep warning in __blkdev_get
Date: Fri, 26 Mar 2010 22:57:30 +0100
Message-ID: <201003262257.30970.rjw@sisk.pl>
References: <QQGfxbJf48H.A.NFD.uNopLB@chimera> <hTwaxgnIZ2O.A.J8F.wQopLB@chimera> <2375c9f91003252311j24d0a13ekbe1484f0d789e392@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <2375c9f91003252311j24d0a13ekbe1484f0d789e392-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="iso-8859-1"
To: =?utf-8?q?Am=C3=A9rico_Wang?= <xiyou.wangcong-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Matti Aarnio <matti.aarnio--kernel-bugzilla-VYF+RMHuKCpAfugRpC6u6w@public.gmane.org>, NeilBrown <neilb-l3A5Bk7waGM@public.gmane.org>

On Friday 26 March 2010, Am=C3=A9rico Wang wrote:
> On Mon, Mar 22, 2010 at 4:30 AM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrot=
e:
> > This message has been generated automatically as a part of a report
> > of regressions introduced between 2.6.32 and 2.6.33.
> >
> > The following bug entry is on the current list of known regressions
> > introduced between 2.6.32 and 2.6.33.  Please verify if it still sh=
ould
> > be listed and let the tracking team know (either way).
> >
> >
> > Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=3D1514=
2
> > Subject         : sysfs-related lockdep warning in __blkdev_get
> > Submitter       : Matti Aarnio <matti.aarnio--kernel-bugzilla@zmail=
er.org>
> > Date            : 2010-01-25 13:38 (56 days old)
> > Handled-By      : NeilBrown <neilb-l3A5Bk7waGM@public.gmane.org>
> > Patch           : https://bugzilla.kernel.org/attachment.cgi?id=3D2=
5085
> >
>=20
> This is supposed to be fixed by Eric's patch which is now in upstream=
=2E

Thanks, it's been closed already.

Rafael
