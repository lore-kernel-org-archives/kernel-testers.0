From: Mike Galbraith <efault-Mmb7MZpHnFY@public.gmane.org>
Subject: Re: [Bug #11308] tbench regression on each kernel release
	from	2.6.22 -&gt; 2.6.28
Date: Wed, 17 Sep 2008 15:57:38 +0200
Message-ID: <1221659858.8818.13.camel@marge.simson.net>
References: <1221306287.5213.111.camel@marge.simson.net>
	 <48CD1D25.9080301@linux-foundation.org>
	 <1221421907.4597.24.camel@marge.simson.net>
	 <1221475440.4784.39.camel@marge.simson.net>
	 <1221568105.5020.17.camel@marge.simson.net>
	 <Pine.LNX.4.64.0809161700020.1034@wrl-59.cs.helsinki.fi>
	 <1221626391.5043.13.camel@marge.simson.net>
	 <1221627676.5125.3.camel@marge.simson.net> <20080917104044.GC18764@elte.hu>
	 <1221651701.5102.17.camel@marge.simson.net> <20080917124943.GA7738@elte.hu>
	 <1221657111.5511.14.camel@marge.simson.net>
	 <Pine.LNX.4.64.0809171629550.1034@wrl-59.cs.helsinki.fi>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <Pine.LNX.4.64.0809171629550.1034-x/A8LOkYjdVsRR2hCrRKtT03IgOmwywn@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Ilpo =?ISO-8859-1?Q?J=E4rvinen?= <ilpo.jarvinen-pxSi+dnQzZMxHbG02/KK1g@public.gmane.org>
Cc: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, LKML <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On Wed, 2008-09-17 at 16:36 +0300, Ilpo J=C3=A4rvinen wrote:
> On Wed, 17 Sep 2008, Mike Galbraith wrote:
>=20
> > On Wed, 2008-09-17 at 14:49 +0200, Ingo Molnar wrote:
> >=20
> > > git log --pretty=3Dformat:"%h: %s" 2069f45..847106f | grep -viE \
> > > 'block|alsa|pcmcia|sound|Merge|iosched|blk|DAC960|scsi|s390|parid=
e|pktcdvd|filter|cdrom|drm'
> > >=20
> > > gives us:
> > >=20
> > >  7daf705: Start using the new '%pS' infrastructure to print symbo=
ls
> > >  6f0f0fd: security: remove register_security hook
> > >  93cbace: security: remove dummy module fix
> > >  5915eb5: security: remove dummy module
> > >  b478a9f: security: remove unused sb_get_mnt_opts hook
> > >  32502b8: splice: fix generic_file_splice_read() race with page i=
nvalidation
> > >  8b3d356: ramfs: enable splice write
> > >  a144ff0: xen: Avoid allocations causing swap activity on the res=
ume path
> > >=20
> > > which really only leaves that security commit your bisection fing=
ered.=20
> > > Which _slightly_ raises its likelyhood of being implicated. Struc=
ture=20
> > > size changes can move two formerly far-apart netperf-relevant sym=
bols on=20
> > > the same cacheline, which can start cache ping-pong-ing badly.
> >=20
> > I sure hope it's something like ping-pong, it's driving me NUTS.
>=20
> How about dividing the problem to smaller blocks then by restoring=20
> parts of the change...

Well, what I've done is check out the "bad" tree, reverted every darn
commit between there and the "good" tree, and then reverted the reverts
so I have a nice merge-free line and don't have to remember to think
backward.  (probably sounds silly to git-foo masters)  I'll try
bisecting that in the a.m. and see what happens.

	-Mike
