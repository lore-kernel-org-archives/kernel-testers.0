From: Eric Dumazet <dada1-fPLkHRcR87vqlBn2x/YWAg@public.gmane.org>
Subject: Re: [Bug #11308] tbench regression on each kernel release from	2.6.22
 -&gt; 2.6.28
Date: Wed, 17 Sep 2008 16:50:53 +0200
Message-ID: <48D1194D.3060003@cosmosbay.com>
References: <1221306287.5213.111.camel@marge.simson.net>	 <48CD1D25.9080301@linux-foundation.org>	 <1221421907.4597.24.camel@marge.simson.net>	 <1221475440.4784.39.camel@marge.simson.net>	 <1221568105.5020.17.camel@marge.simson.net>	 <Pine.LNX.4.64.0809161700020.1034@wrl-59.cs.helsinki.fi>	 <1221626391.5043.13.camel@marge.simson.net>	 <1221627676.5125.3.camel@marge.simson.net> <20080917104044.GC18764@elte.hu>	 <1221651701.5102.17.camel@marge.simson.net> <20080917124943.GA7738@elte.hu> <1221657111.5511.14.camel@marge.simson.net> <48D11871.4090805@cosmosbay.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <48D11871.4090805-fPLkHRcR87vqlBn2x/YWAg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"; format="flowed"
To: Mike Galbraith <efault-Mmb7MZpHnFY@public.gmane.org>
Cc: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, =?ISO-8859-1?Q?Ilpo_J=E4rvinen?= <ilpo.jarvinen-pxSi+dnQzZMxHbG02/KK1g@public.gmane.org>, Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, LKML <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

Eric Dumazet a =E9crit :
> Mike Galbraith a =E9crit :

>> I sure hope it's something like ping-pong, it's driving me NUTS.
>=20
> Could you please try following patch ?
>=20
> [PATCH] security_ops moved to read_mostly section
>=20
> "struct security_operations *security_ops" should be moved to=20
> read_mostly section in order to NOT let it share a cache line with hi=
gly=20
> modified variables.
>=20
> Signed-off-by: Eric Dumazet <dada1-fPLkHRcR87vqlBn2x/YWAg@public.gmane.org>
>=20
> diff --git a/security/security.c b/security/security.c
> index 3a4b4f5..0b13d65 100644
> --- a/security/security.c
> +++ b/security/security.c
> @@ -24,7 +24,7 @@ static __initdata char chosen_lsm[SECURITY_NAME_MAX=
 + 1];
> extern struct security_operations default_security_ops;
> extern void security_fixup_ops(struct security_operations *ops);
>=20
> -struct security_operations *security_ops;    /* Initialized to NULL =
*/
> +struct security_operations *security_ops __read_mostly;e

Sorry for the extra 'e' at the end of this line, please remove it :)

>=20
> /* amount of vm to protect from userspace access */
> unsigned long mmap_min_addr =3D CONFIG_SECURITY_DEFAULT_MMAP_MIN_ADDR=
;
>=20


