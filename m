From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #33842] NULL pointer dereference in ip_fragment
Date: Mon, 13 Jun 2011 19:21:39 +0200
Message-ID: <201106131921.39276.rjw@sisk.pl>
References: <9NVbY1BZ_5D.A.2lE.jzS9NB@chimera> <kTLfM29CaqB.A.K5F.f1S9NB@chimera> <1307915992.2872.170.camel@edumazet-laptop>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1307915992.2872.170.camel@edumazet-laptop>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="utf-8"
To: Eric Dumazet <eric.dumazet-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Tomas Carnecky <tom-ix/z9KG6G0Jl57MIdRCFDg@public.gmane.org>, David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>

On Sunday, June 12, 2011, Eric Dumazet wrote:
> Le dimanche 12 juin 2011 =C3=A0 23:12 +0200, Rafael J. Wysocki a =C3=A9=
crit :
> > This message has been generated automatically as a part of a report
> > of regressions introduced between 2.6.38 and 2.6.39.
> >=20
> > The following bug entry is on the current list of known regressions
> > introduced between 2.6.38 and 2.6.39.  Please verify if it still sh=
ould
> > be listed and let the tracking team know (either way).
> >=20
> >=20
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D33842
> > Subject		: NULL pointer dereference in ip_fragment
> > Submitter	: Tomas Carnecky <tom-ix/z9KG6G0Jl57MIdRCFDg@public.gmane.org>
> > Date		: 2011-04-23 07:51 (51 days old)
> >=20
> >=20
>=20
> This is probably fixed in current linux-2.6 tree, and 2.6.39.1 as wel=
l
>=20
>=20
> If not, maybe commit 64f3b9e203b (ip_expire() must revalidate route)
> needs to be included in 2.6.39.X
>=20
> (I believe Greg took it for 2.6.38, but cant find it in 2.6.39 ?)

Thanks, closing.

Rafael
