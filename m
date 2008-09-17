From: "=?ISO-8859-1?Q?Ilpo_J=E4rvinen?=" <ilpo.jarvinen-pxSi+dnQzZMxHbG02/KK1g@public.gmane.org>
Subject: Re: [Bug #11308] tbench regression on each kernel release	from	2.6.22
 -&gt; 2.6.28
Date: Wed, 17 Sep 2008 20:04:22 +0300 (EEST)
Message-ID: <Pine.LNX.4.64.0809171953350.26270@wrl-59.cs.helsinki.fi>
References: <1221306287.5213.111.camel@marge.simson.net> 
 <48CD1D25.9080301@linux-foundation.org>  <1221421907.4597.24.camel@marge.simson.net>
  <1221475440.4784.39.camel@marge.simson.net>  <1221568105.5020.17.camel@marge.simson.net>
  <Pine.LNX.4.64.0809161700020.1034@wrl-59.cs.helsinki.fi> 
 <1221626391.5043.13.camel@marge.simson.net>  <1221627676.5125.3.camel@marge.simson.net>
 <20080917104044.GC18764@elte.hu>  <1221651701.5102.17.camel@marge.simson.net>
 <20080917124943.GA7738@elte.hu>  <1221657111.5511.14.camel@marge.simson.net>
  <Pine.LNX.4.64.0809171629550.1034@wrl-59.cs.helsinki.fi>
 <1221659858.8818.13.camel@marge.simson.net>
Mime-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="-696208474-337667718-1221671062=:26270"
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1221659858.8818.13.camel-YqMYhexLQo1vAv1Ojkdn7Q@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: Mike Galbraith <efault-Mmb7MZpHnFY@public.gmane.org>
Cc: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, LKML <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

---696208474-337667718-1221671062=:26270
Content-Type: TEXT/PLAIN; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Wed, 17 Sep 2008, Mike Galbraith wrote:

> On Wed, 2008-09-17 at 16:36 +0300, Ilpo J=E4rvinen wrote:
> > On Wed, 17 Sep 2008, Mike Galbraith wrote:
> >=20
> > > On Wed, 2008-09-17 at 14:49 +0200, Ingo Molnar wrote:
> > >=20
> > > > git log --pretty=3Dformat:"%h: %s" 2069f45..847106f | grep -viE \
> > > > 'block|alsa|pcmcia|sound|Merge|iosched|blk|DAC960|scsi|s390|paride|=
pktcdvd|filter|cdrom|drm'
> > > >=20
> > > > gives us:
> > > >=20
> > > >  7daf705: Start using the new '%pS' infrastructure to print symbols
> > > >  6f0f0fd: security: remove register_security hook
> > > >  93cbace: security: remove dummy module fix
> > > >  5915eb5: security: remove dummy module
> > > >  b478a9f: security: remove unused sb_get_mnt_opts hook
> > > >  32502b8: splice: fix generic_file_splice_read() race with page inv=
alidation
> > > >  8b3d356: ramfs: enable splice write
> > > >  a144ff0: xen: Avoid allocations causing swap activity on the resum=
e path
> > > >=20
> > > > which really only leaves that security commit your bisection finger=
ed.=20
> > > > Which _slightly_ raises its likelyhood of being implicated. Structu=
re=20
> > > > size changes can move two formerly far-apart netperf-relevant symbo=
ls on=20
> > > > the same cacheline, which can start cache ping-pong-ing badly.
> > >=20
> > > I sure hope it's something like ping-pong, it's driving me NUTS.
> >=20
> > How about dividing the problem to smaller blocks then by restoring=20
> > parts of the change...
>=20
> Well, what I've done is check out the "bad" tree, reverted every darn
> commit between there and the "good" tree, and then reverted the reverts
> so I have a nice merge-free line and don't have to remember to think
> backward.  (probably sounds silly to git-foo masters)  I'll try
> bisecting that in the a.m. and see what happens.

This was my initial idea (which was mainly an error from my part as I=20
misread some shaids and midunderstood that the first regressing would be=20
the merge instead of the actual change), but in here I meant taking parts=20
of the 6f0f0fd on top of 6f0f0fd^. The most easiest way to do that=20
actually might be to do in fact the opposite, ie., but some of the=20
datastructure/layout changes back on top of 6f0f0fd and see if the=20
performance get restored (besides testing the Eric's patch).

--=20
 i.
---696208474-337667718-1221671062=:26270--
