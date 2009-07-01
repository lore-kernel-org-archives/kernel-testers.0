From: Herbert Xu <herbert-lOAM2aK0SrRLBo1qDEOMRrpzq4S04n8Q@public.gmane.org>
Subject: Re: [Bug #13627] Tunnel device ignores TCP/UDP traffic
Date: Wed, 1 Jul 2009 23:13:44 +0800
Message-ID: <20090701151344.GA4372@gondor.apana.org.au>
References: <ij4ZQY4URcP.A.F3B.vIASKB@chimera> <6JJ2m5kyucK.A.AtD.NJASKB@chimera> <b6a2187b0907010734w7e7a5bbfm271f44e57e12d1b4@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <b6a2187b0907010734w7e7a5bbfm271f44e57e12d1b4-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Jeff Chua <jeff.chua.linux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "David S. Miller" <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, Paul Martin <pm-8fiUuRrzOP0dnm+yROfE0A@public.gmane.org>

On Wed, Jul 01, 2009 at 10:34:10PM +0800, Jeff Chua wrote:
> On Mon, Jun 29, 2009 at 8:11 AM, Rafael J. Wysocki<rjw-KKrjLPT3xs0@public.gmane.org> wrote=
:
>=20
> > Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
13627
> > Subject =A0 =A0 =A0 =A0 : Tunnel device ignores TCP/UDP traffic
> > Submitter =A0 =A0 =A0 : Paul Martin <pm-8fiUuRrzOP0dnm+yROfE0A@public.gmane.org>
> > Date =A0 =A0 =A0 =A0 =A0 =A0: 2009-06-26 14:45 (3 days old)
>=20
> I think I'm having the same issue here. Both vpnc and KVM (using tap0=
)
> not working on 2.6.31-rc1. I think it worked before <2.6.30.
>=20
> i've tried the patches as mentioned in
> http://bugzilla.kernel.org/show_bug.cgi?id=3D13627, but still not
> working.

So you mean that 71f9dacd2e4d233029e9e956ca3f79531f411827 doesn't
work? Does reverting d55d87fdff8252d0e2f7c28c2d443aee17e9d70f help?

If not can you elaborate on what you mean by not working?

Thanks,
--=20
Visit Openswan at http://www.openswan.org/
Email: Herbert Xu ~{PmV>HI~} <herbert-lOAM2aK0SrRLBo1qDEOMRrpzq4S04n8Q@public.gmane.org>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt
