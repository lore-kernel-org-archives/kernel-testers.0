From: Mike Galbraith <efault@gmx.de>
Subject: Re: [Bug #11308] tbench regression on each kernel release from
	2.6.22 -&gt; 2.6.28
Date: Wed, 17 Sep 2008 06:39:51 +0200
Message-ID: <1221626391.5043.13.camel@marge.simson.net>
References: <j3zWxt-CgYL.A.WTF.bbsyIB@albercik>
	 <SpS7rta8n4.A.mr.ZesyIB@albercik> <48CAE7A0.8000004@linux-foundation.org>
	 <1221306287.5213.111.camel@marge.simson.net>
	 <48CD1D25.9080301@linux-foundation.org>
	 <1221421907.4597.24.camel@marge.simson.net>
	 <1221475440.4784.39.camel@marge.simson.net>
	 <1221568105.5020.17.camel@marge.simson.net>
	 <Pine.LNX.4.64.0809161700020.1034@wrl-59.cs.helsinki.fi>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1753172AbYIQEkU@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.64.0809161700020.1034@wrl-59.cs.helsinki.fi>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Ilpo =?ISO-8859-1?Q?J=E4rvinen?= <ilpo.jarvinen@helsinki.fi>
Cc: Christoph Lameter <cl@linux-foundation.org>, "Rafael J. Wysocki" <rjw@sisk.pl>, LKML <linux-kernel@vger.kernel.org>, kernel-testers@vger.kernel.org

On Tue, 2008-09-16 at 17:07 +0300, Ilpo J=C3=A4rvinen wrote:
> On Tue, 16 Sep 2008, Mike Galbraith wrote:
>=20
> > On Mon, 2008-09-15 at 12:44 +0200, Mike Galbraith wrote:
> > > On Sun, 2008-09-14 at 21:51 +0200, Mike Galbraith wrote:
> > >=20
> > > Since 2.6.22.19-cfs-v24.1 and 2.6.23.17-cfs-v24.1 schedulers are
> > > identical, and these are essentially identical with 2.6.24.7, wha=
t I
> > > read from numbers below is that cfs in 2.6.23 was somewhat less t=
han
> > > wonderful for either netperf or tbench,  Something happened somew=
here
> > > other than the scheduler at 23->24 which cost us some performance=
, and
> > > another something happened at 26->27.  I'll likely go looking aga=
in..
> > > and likely regret it again ;-)
> >=20
> > Bisecting 26->27 yet again turned up a repeatable downturn in netpe=
rf
> > throughput.  There is no difference at this point with tbench.=20
> >=20
> > Bisect says first bad commit is 847106f, a security merge.  Post
> > bisection sanity checkouts say...
> >=20
> > v2.6.26-21-g2069f45
> > 16384  87380  1        1       60.00    98435.13
> > 16384  87380  1        1       60.01    99259.90
> > 16384  87380  1        1       60.01    99325.61
> > 16384  87380  1        1       60.00    99039.84
> >=20
> > v2.6.26-343-g847106f
> > 16384  87380  1        1       60.00    94764.59
> > 16384  87380  1        1       60.00    94909.89
> > 16384  87380  1        1       60.00    94858.63
> > 16384  87380  1        1       60.00    94801.12
> >=20
> > ...every time.  I knew I'd regret doing this.
>=20
> I assume that c142bda458a gave a good results as well...

Yes, just tried it.

> One additional sanity check could be to rebase security 6f0f0fd4963 o=
n top=20
> of the c142bda458a and then see if bisection among those security com=
mits=20
> on top yields to the the same result... Though I doubt it can change =
much=20
> because there was not that much relevant non-security things in the m=
erge=20
> in question.

I'm not a master of git-foo, so that is not an option.  However, a dink=
y
bisection c142bda4..847106f very clearly says...

marge:..kernel/linux-2.6.27.git # git bisect bad
6f0f0fd496333777d53daff21a4e3b28c4d03a6d is first bad commit
commit 6f0f0fd496333777d53daff21a4e3b28c4d03a6d
Author: James Morris <jmorris@namei.org>
Date:   Thu Jul 10 17:02:07 2008 +0900

    security: remove register_security hook

    The register security hook is no longer required, as the capability
    module is always registered.  LSMs wishing to stack capability as
    a secondary module should do so explicitly.

    Signed-off-by: James Morris <jmorris@namei.org>
    Acked-by: Stephen Smalley <sds@tycho.nsa.gov>
    Acked-by: Greg Kroah-Hartman <gregkh@suse.de>

:040000 040000 0177ef46d305e51e27bfcc4350a40577f8ba8d3d 64b64c10a424df4=
539653a8ee34f1a2329300931 M      include
:040000 040000 e318891e514de674fd064f6bfad70d5633b1aff1 0dbb38d5aa7fc3e=
4b2e09dc65796ce7cd5faeb26 M      security

git bisect start
# good: [c142bda458a9c81097238800e1bd8eeeea09913d] Merge branch 'drm-re=
org' of git://git.kernel.org/pub/scm/linux/kernel/git/airlied/drm-2.6
git bisect good c142bda458a9c81097238800e1bd8eeeea09913d
# bad: [847106ff628805e1a0aa91e7f53381f3fdfcd839] Merge branch 'for-lin=
us' of git://git.kernel.org/pub/scm/linux/kernel/git/jmorris/security-t=
esting-2.6
git bisect bad 847106ff628805e1a0aa91e7f53381f3fdfcd839
# good: [cea78dc4ca044e9666e8f5d797ec50ab85253e49] SELinux: fix off by =
1 reference of class_to_string in context_struct_compute_av
git bisect good cea78dc4ca044e9666e8f5d797ec50ab85253e49
# good: [65fc7668006b537f7ae8451990c0ed9ec882544e] security: fix return=
 of void-valued expressions
git bisect good 65fc7668006b537f7ae8451990c0ed9ec882544e
# good: [b478a9f9889c81e88077d1495daadee64c0af541] security: remove unu=
sed sb_get_mnt_opts hook
git bisect good b478a9f9889c81e88077d1495daadee64c0af541
# good: [93cbace7a058bce7f99319ef6ceff4b78cf45051] security: remove dum=
my module fix
git bisect good 93cbace7a058bce7f99319ef6ceff4b78cf45051
# bad: [6f0f0fd496333777d53daff21a4e3b28c4d03a6d] security: remove regi=
ster_security hook
git bisect bad 6f0f0fd496333777d53daff21a4e3b28c4d03a6d

