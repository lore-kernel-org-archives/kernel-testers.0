From: Rolf Eike Beer <eike-kernel-F+mm6HnICJmzQB+pC5nmwQ@public.gmane.org>
Subject: Re: [Bug #16537] TREE_RCU hangs at boot
Date: Mon, 20 Sep 2010 21:20:27 +0200
Message-ID: <201009202120.36708.eike-kernel@sf-tec.de>
References: <QnCvudbe2FD.A.XiE.DgSjMB@chimera> <p44oKaOqEDM.A.AeF.EhSjMB@chimera> <20100920182626.GE2408@linux.vnet.ibm.com>
Mime-Version: 1.0
Content-Type: multipart/signed;
  boundary="nextPart1691210.Wf467zbl0W";
  protocol="application/pgp-signature";
  micalg=pgp-sha1
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20100920182626.GE2408-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: paulmck-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

--nextPart1691210.Wf467zbl0W
Content-Type: Text/Plain;
  charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Paul E. McKenney wrote:
> On Sun, Sep 12, 2010 at 09:08:42PM +0200, Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a report
> > of regressions introduced between 2.6.34 and 2.6.35.
> >=20
> > The following bug entry is on the current list of known regressions
> > introduced between 2.6.34 and 2.6.35.  Please verify if it still should
> > be listed and let the tracking team know (either way).
> >=20
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D16537
> > Subject		: TREE_RCU hangs at boot
> > Submitter	: Rolf Eike Beer <eike-kernel-F+mm6HnICJmzQB+pC5nmwQ@public.gmane.org>
> > Date		: 2010-08-07 12:18 (37 days old)
> > Handled-By	: Paul E. McKenney <paulmck-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
>=20
> I cannot reproduce this.  The function that is claimed to hang contains
> only printk()s.  I have asked the guys who can actually reproduce it
> to try a later kernel, and will let you know how this goes.
>=20
> If you cannot trust printk(), who can you trust?  ;-)

I suspect that it is related to:

http://git.kernel.org/?p=3Dlinux/kernel/git/stable/linux-2.6.35.y.git;a=3Dc=
ommit;h=3D5a8477871f0b45664eedfa352c3942093408a169

I'll try to test plain 2.6.35 with this patch and see it this works.

Eike

--nextPart1691210.Wf467zbl0W
Content-Type: application/pgp-signature; name=signature.asc 
Content-Description: This is a digitally signed message part.

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.15 (GNU/Linux)

iEYEABECAAYFAkyXtAQACgkQXKSJPmm5/E7zFACePhoz4/p6m9Xt7nJ4jlJ66yin
JyoAoIC/Bv/kd8xy/t67kwn6qRl8AJL5
=IMiM
-----END PGP SIGNATURE-----

--nextPart1691210.Wf467zbl0W--
