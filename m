From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Subject: Re: [Bug #11308] tbench regression on each kernel release from
	2.6.22 -&gt; 2.6.28
Date: Wed, 17 Sep 2008 12:40:44 +0200
Message-ID: <20080917104044.GC18764@elte.hu>
References: <SpS7rta8n4.A.mr.ZesyIB@albercik> <48CAE7A0.8000004@linux-foundation.org> <1221306287.5213.111.camel@marge.simson.net> <48CD1D25.9080301@linux-foundation.org> <1221421907.4597.24.camel@marge.simson.net> <1221475440.4784.39.camel@marge.simson.net> <1221568105.5020.17.camel@marge.simson.net> <Pine.LNX.4.64.0809161700020.1034@wrl-59.cs.helsinki.fi> <1221626391.5043.13.camel@marge.simson.net> <1221627676.5125.3.camel@marge.simson.net>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <1221627676.5125.3.camel-YqMYhexLQo1vAv1Ojkdn7Q@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Mike Galbraith <efault-Mmb7MZpHnFY@public.gmane.org>
Cc: Ilpo =?iso-8859-1?Q?J=E4rvinen?= <ilpo.jarvinen-pxSi+dnQzZMxHbG02/KK1g@public.gmane.org>, Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, LKML <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org


* Mike Galbraith <efault-Mmb7MZpHnFY@public.gmane.org> wrote:

> On Wed, 2008-09-17 at 06:40 +0200, Mike Galbraith wrote:
> > On Tue, 2008-09-16 at 17:07 +0300, Ilpo J=E4rvinen wrote:
>=20
> > > One additional sanity check could be to rebase security 6f0f0fd49=
63 on top=20
> > > of the c142bda458a and then see if bisection among those security=
 commits=20
> > > on top yields to the the same result... Though I doubt it can cha=
nge much=20
> > > because there was not that much relevant non-security things in t=
he merge=20
> > > in question.
> >=20
> > I'm not a master of git-foo, so that is not an option.  However, a =
dinky
> > bisection c142bda4..847106f very clearly says...
> >=20
> > marge:..kernel/linux-2.6.27.git # git bisect bad
> > 6f0f0fd496333777d53daff21a4e3b28c4d03a6d is first bad commit
> > commit 6f0f0fd496333777d53daff21a4e3b28c4d03a6d
> > Author: James Morris <jmorris-gx6/JNMH7DfYtjvyW6yDsg@public.gmane.org>
> > Date:   Thu Jul 10 17:02:07 2008 +0900
> >=20
> >     security: remove register_security hook
> >=20
> >     The register security hook is no longer required, as the capabi=
lity
> >     module is always registered.  LSMs wishing to stack capability =
as
> >     a secondary module should do so explicitly.
> >=20
> >     Signed-off-by: James Morris <jmorris-gx6/JNMH7DfYtjvyW6yDsg@public.gmane.org>
> >     Acked-by: Stephen Smalley <sds-+05T5uksL2qpZYMLLGbcSA@public.gmane.org>
> >     Acked-by: Greg Kroah-Hartman <gregkh-l3A5Bk7waGM@public.gmane.org>
> >=20
> > :040000 040000 0177ef46d305e51e27bfcc4350a40577f8ba8d3d 64b64c10a42=
4df4539653a8ee34f1a2329300931 M      include
> > :040000 040000 e318891e514de674fd064f6bfad70d5633b1aff1 0dbb38d5aa7=
fc3e4b2e09dc65796ce7cd5faeb26 M      security
>=20
> Which is high grade horse-pookey.

perhaps re-test commit 6f0f0fd49 and its parent commit, 93cbace7a0.

It looks like a potentially bogus bisection result, but _maybe_ it has=20
relevance: changes the size of "struct security_operations", which coul=
d=20
have alignment and layout effects on all sorts of kernel variables,=20
kmalloc sizes, etc.

	Ingo
