From: Mike Galbraith <efault@gmx.de>
Subject: Re: [Bug #11308] tbench regression on each kernel release from
	2.6.22 -&gt; 2.6.28
Date: Wed, 17 Sep 2008 07:01:16 +0200
Message-ID: <1221627676.5125.3.camel@marge.simson.net>
References: <j3zWxt-CgYL.A.WTF.bbsyIB@albercik>
	 <SpS7rta8n4.A.mr.ZesyIB@albercik> <48CAE7A0.8000004@linux-foundation.org>
	 <1221306287.5213.111.camel@marge.simson.net>
	 <48CD1D25.9080301@linux-foundation.org>
	 <1221421907.4597.24.camel@marge.simson.net>
	 <1221475440.4784.39.camel@marge.simson.net>
	 <1221568105.5020.17.camel@marge.simson.net>
	 <Pine.LNX.4.64.0809161700020.1034@wrl-59.cs.helsinki.fi>
	 <1221626391.5043.13.camel@marge.simson.net>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1753883AbYIQFBb@vger.kernel.org>
In-Reply-To: <1221626391.5043.13.camel@marge.simson.net>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Ilpo =?ISO-8859-1?Q?J=E4rvinen?= <ilpo.jarvinen@helsinki.fi>
Cc: Christoph Lameter <cl@linux-foundation.org>, "Rafael J. Wysocki" <rjw@sisk.pl>, LKML <linux-kernel@vger.kernel.org>, kernel-testers@vger.kernel.org

On Wed, 2008-09-17 at 06:40 +0200, Mike Galbraith wrote:
> On Tue, 2008-09-16 at 17:07 +0300, Ilpo J=C3=A4rvinen wrote:

> > One additional sanity check could be to rebase security 6f0f0fd4963=
 on top=20
> > of the c142bda458a and then see if bisection among those security c=
ommits=20
> > on top yields to the the same result... Though I doubt it can chang=
e much=20
> > because there was not that much relevant non-security things in the=
 merge=20
> > in question.
>=20
> I'm not a master of git-foo, so that is not an option.  However, a di=
nky
> bisection c142bda4..847106f very clearly says...
>=20
> marge:..kernel/linux-2.6.27.git # git bisect bad
> 6f0f0fd496333777d53daff21a4e3b28c4d03a6d is first bad commit
> commit 6f0f0fd496333777d53daff21a4e3b28c4d03a6d
> Author: James Morris <jmorris@namei.org>
> Date:   Thu Jul 10 17:02:07 2008 +0900
>=20
>     security: remove register_security hook
>=20
>     The register security hook is no longer required, as the capabili=
ty
>     module is always registered.  LSMs wishing to stack capability as
>     a secondary module should do so explicitly.
>=20
>     Signed-off-by: James Morris <jmorris@namei.org>
>     Acked-by: Stephen Smalley <sds@tycho.nsa.gov>
>     Acked-by: Greg Kroah-Hartman <gregkh@suse.de>
>=20
> :040000 040000 0177ef46d305e51e27bfcc4350a40577f8ba8d3d 64b64c10a424d=
f4539653a8ee34f1a2329300931 M      include
> :040000 040000 e318891e514de674fd064f6bfad70d5633b1aff1 0dbb38d5aa7fc=
3e4b2e09dc65796ce7cd5faeb26 M      security

Which is high grade horse-pookey.

	-Mike
