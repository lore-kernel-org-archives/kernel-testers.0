From: Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>
Subject: Re: [Bug #14353] BUG: sleeping function called from invalid
 context at kernel/mutex.c:280
Date: Mon, 26 Oct 2009 20:11:46 +0100
Message-ID: <1256584306.4237.1.camel@johannes.local>
References: <Sj-rRjx6TwF.A.djE.vqe5KB@chimera>
	 <6dRYo8ss7vL.A.6gH.Gse5KB@chimera>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg="pgp-sha1"; protocol="application/pgp-signature"; boundary="=-tmbts6C9lmAjplkrBvz5"
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <6dRYo8ss7vL.A.6gH.Gse5KB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Miles Lane <miles.lane-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>


--=-tmbts6C9lmAjplkrBvz5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2009-10-26 at 19:55 +0100, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
>=20
> The following bug entry is on the current list of known regressions
> from 2.6.31.  Please verify if it still should be listed and let me know
> (either way).
>=20
>=20
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D14353
> Subject		: BUG: sleeping function called from invalid context at kernel/m=
utex.c:280
> Submitter	: Miles Lane <miles.lane-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2009-10-05 3:39 (22 days old)
> References	: http://marc.info/?l=3Dlinux-kernel&m=3D125471432208671&w=3D4

This should be fixed by a160ee69c6a4622ed30c377a978554015e9931cb.

johannes

--=-tmbts6C9lmAjplkrBvz5
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iQIcBAABAgAGBQJK5fRtAAoJEODzc/N7+Qmac28P/jOV6DBTEqaNNUsuajYc13FL
yLO6ysVpHrX3OleSdfwn2IL655MMmyreHl1cndhBHFWnUiiiKCBthKBE2103I8zb
vM5SD/1FREdZQDb9pIj/lRc5PHXMFzett95zU3PYA4lH+nBOeccmFKP7/E/8gL7/
M/8XoSW7xk6oiOHXvVtwUD9fEOK2bziPOZ3UIVIXgL6WdcY9oBT8wtco7QTooJBq
btW0yvJp/y98LcC1Rk6RLn0qhLC31Ws1bN8/qKp6e9Gs7pHO3ur8IdsyDg9t/JKs
QxVIT5E07qnmgN4hgiQAmID7d2M+R8+/yrlUpfnTKDomEkhGSIBz0RS+S87lNs7Q
8LWPySZtpqqQLNOIfiubC8FlnqHQfp52BEjOKmm/aSPRmu40mVps0l4fDIONvSao
sKOBdoWaSsFOZIkkUttJSiUUX+dEyC/n6ac6UheHjhWTWjnIJf+6X0XdsKjx+HWO
q/rpn1/KMvrau2BNgYTg8NmcN77BbNPoakJ9lsCZKMr/2TBxo7s/5x/ru0R4eE3v
iPaQgL8sDfDdamOWROmvgNXNwXClNwH2QGn52mdkR52DrUvZNd5zNDRGSpCDcXVQ
fVpDX108msFC62IKpeiXo3EaiJ39ilt3I9AYR8QYy09W7zaqBrQV4WzfVFcE/nzx
obqXbD0AW1UJGSvquMl5
=3g4O
-----END PGP SIGNATURE-----

--=-tmbts6C9lmAjplkrBvz5--
