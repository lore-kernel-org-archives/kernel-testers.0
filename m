From: Maximilian Engelhardt <maxi@daemonizer.de>
Subject: Re: 2.6.26-rc9: Reported regressions from 2.6.25
Date: Mon, 7 Jul 2008 20:26:20 +0200
Message-ID: <200807072026.24727.maxi@daemonizer.de>
References: <Vu1KV8Wj_GP.A.qW.DzLcIB@albercik> <alpine.LFD.1.10.0807060816070.3016@woody.linux-foundation.org> <20080707173708.GA3000@elf.ucw.cz>
Mime-Version: 1.0
Content-Type: multipart/signed;
  boundary="nextPart2186059.qrZCnum4Zm";
  protocol="application/pgp-signature";
  micalg=pgp-sha1
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1757261AbYGGS1Q@vger.kernel.org>
In-Reply-To: <20080707173708.GA3000@elf.ucw.cz>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
To: Pavel Machek <pavel@suse.cz>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Adrian Bunk <bunk@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Natalie Protasevich <protasnb@gmail.com>, Kernel Testers List <kernel-testers@vger.kernel.org>, Randy Dunlap <randy.dunlap@oracle.com>, "Paul E. McKenney" <paulmck@linux.vnet.ibm.com>, James Bottomley <James.Bottomley@hansenpartnership.com>

--nextPart2186059.qrZCnum4Zm
Content-Type: text/plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

On Monday 07 July 2008, Pavel Machek wrote:
> Hi!
>
> > > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D10919
> > > Subject		: [regression] display dimming is slow and laggy - Acer
> > > Travelmate 661lci Submitter	: Maximilian Engelhardt
> > > <maxi@daemonizer.de>
> > > Date		: 2008-06-14 22:31 (23 days old)
> > > References	: http://marc.info/?l=3Dlinux-kernel&m=3D121348428828320&w=
=3D4
> >
> > I wonder if this one could be related. The 'nr_zones' overwriting bug
> > would result in kswapd not reclaiming any memory asynchronously, so the
> > kernel would basically be constantly under a low-memory situation, and
> > processes would be forced to do synchronous reclaim.
> >
> > That, in turn, could easily explain laggy operation, especially if it is
> > something bigger that needs to allocate new memory (not that I know if X
> > dimming needs to, but I could imagine that it does some double buffering
> > or whatever).
>
> Hmm, but that would mean whole system is slow, right?
>
> I'd bet this is ACPI EC problem...

I didn't notice anything that my system is slow. Also I think this patch go=
t=20
included in 2.6.26-rc9 but I still have this problem with it.

Maxi

--nextPart2186059.qrZCnum4Zm
Content-Type: application/pgp-signature; name=signature.asc 
Content-Description: This is a digitally signed message part.

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.9 (GNU/Linux)

iEYEABECAAYFAkhyX80ACgkQOimwv528XGE/AQCg4PFguyy6ZGbfL/kOvJLbCGHb
gJAAoNaDbrrmbbRVrocOY1HCXIasetwf
=Ezmi
-----END PGP SIGNATURE-----

--nextPart2186059.qrZCnum4Zm--
