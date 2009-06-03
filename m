From: Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>
Subject: Re: [Bug #13306] hibernate slow on _second_ run
Date: Wed, 03 Jun 2009 10:33:41 +0200
Message-ID: <1244018021.10665.4.camel@johannes.local>
References: <4to6E2myxvG.A.muC.aIbIKB@chimera>
	 <200906012226.46086.rjw@sisk.pl> <1243888860.5299.32.camel@johannes.local>
	 <200906012248.49304.rjw@sisk.pl>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg="pgp-sha1"; protocol="application/pgp-signature"; boundary="=-9pnyQgOL/svDVHzKWrXJ"
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200906012248.49304.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>


--=-9pnyQgOL/svDVHzKWrXJ
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

On Mon, 2009-06-01 at 22:48 +0200, Rafael J. Wysocki wrote:
> > No, it's now hanging 20 seconds much later, after returning to
> > userspace :( But the dmesg log still has a hang of ~20.5 seconds just
> > like before, between two kernel messages...
>=20
> Hmm.  Can you try to comment out suspend_device_irqs() and resume_device_=
irqs()
> in drivers/base/power/main.c and see what happens?

Oddly, that does seem to help. I'm sure it can't be a solution though :)

johannes

--=-9pnyQgOL/svDVHzKWrXJ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iQIcBAABAgAGBQJKJjViAAoJEODzc/N7+QmaGj8P/A+UCCu+EE0wS+CQOBMPyoeM
JS5ljkIdyqHIEdVdRhD0ThA2frkStR/AqehkS90T+n1WtKE4q+kqTur+8RgoHntY
xm3TfgaPJEiuOpEvhncHXL7UdJgrHrNOfMUXtBK4JXqGTpcjnTRz5PRUAwE3Z2wL
NgSVJl4wRSbtTzbcj3m56mSBbwZKv8HMKb2bW2h00HFCFNptFILZoTzi20KKrizJ
5b26uwyUi00SAR+PoZqTC9tDKzWmn0YreI7hGXUVroj6ds11Pi0DJNz+wygBwxlH
VdC4IhknaF9wGDpSOoi39n9ZE4r85OMCPsDJQQhvAu4a1OK2eZUnIXp+/UkMPuo9
dbOzdJlP/BuQGl6HCIwU7cKh7dkRxav9rCvM1ovp7fEKkEyU0AnGFkTM0i9JQ8mk
9J57Iatfj9T3+2koPUL78d5LTqBeZmdYNCXpvFdQscJa9iJCgGhVYuAV9E8i66G9
MsHyNM9DaHCEKCrsYv1gJBeDEJO7FL5Aq0X+rNSYtOnsp0TfwA4EVUcYZsFnGsKs
09ddoMa8s4oykSBUPNZZDeUEKcCO1AdOmNtQmL0ZcyptHQFdzffk9h2yBoChtg4N
ftgGwRLkBDFZjTuov8dv4zbdxX4+0leJYHAVDo6wZLZd1XaaniSjKn8gVOOmDCe4
8+8k23ye3cZvIfe9aSpU
=uUtz
-----END PGP SIGNATURE-----

--=-9pnyQgOL/svDVHzKWrXJ--
