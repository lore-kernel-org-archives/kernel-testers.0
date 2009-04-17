From: Herbert Xu <herbert-lOAM2aK0SrRLBo1qDEOMRrpzq4S04n8Q@public.gmane.org>
Subject: Re: [Bug #13097] Kernel will freeze network after using a tun/tap
	device
Date: Fri, 17 Apr 2009 08:54:50 +0800
Message-ID: <20090417005450.GA30492@gondor.apana.org.au>
References: <EJaiQ4Wfaz.A.3YG.4v85JB@chimera> <nY3-4PrO6XH.A.E-.fw85JB@chimera> <20090416.174406.120779583.davem@davemloft.net>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20090416.174406.120779583.davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Cc: rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, fragabr-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org

On Thu, Apr 16, 2009 at 05:44:06PM -0700, David Miller wrote:
> From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
> Date: Thu, 16 Apr 2009 23:45:02 +0200 (CEST)
>=20
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D13097
> > Subject		: Kernel will freeze network after using a tun/tap device
> > Submitter	: D=E2niel Fraga <fragabr-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > Date		: 2009-04-15 22:19 (2 days old)
>=20
> Herbert what's the state of this?  Is this fixed already as of what I
> pushed earlier today to Linus, or are the two patches you are working
> on cure this?

This bug sounds nothing like the one I've been trying to fix.

I'll take a look at it.

Cheers,
--=20
Visit Openswan at http://www.openswan.org/
Email: Herbert Xu ~{PmV>HI~} <herbert-lOAM2aK0SrRLBo1qDEOMRrpzq4S04n8Q@public.gmane.org>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt
