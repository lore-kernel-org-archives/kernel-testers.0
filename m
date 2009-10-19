From: Michael Ellerman <michael@ellerman.id.au>
Subject: Re: Characters vanishing in the tty layer? (maybe related to [Bug
 #14388] keyboard under X with 2.6.31)
Date: Mon, 19 Oct 2009 17:38:07 +1100
Message-ID: <1255934287.4192.125.camel@concordia>
References: <1255501294.21962.24.camel@concordia>
	 <alpine.LFD.2.01.0910140748420.6146@localhost.localdomain>
Reply-To: michael@ellerman.id.au
Mime-Version: 1.0
Content-Type: multipart/signed; micalg="pgp-sha1"; protocol="application/pgp-signature"; boundary="=-9Wod46MrbXzcvq80/psn"
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1754681AbZJSGiI@vger.kernel.org>
In-Reply-To: <alpine.LFD.2.01.0910140748420.6146@localhost.localdomain>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Michael Neuling <mikey@neuling.org>, Benjamin Herrenschmidt <benh@kernel.crashing.org>


--=-9Wod46MrbXzcvq80/psn
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

On Wed, 2009-10-14 at 07:53 -0700, Linus Torvalds wrote:
>=20
> On Wed, 14 Oct 2009, Michael Ellerman wrote:
> >=20
> > I'm using 80f5069 or thereabouts, plus some powerpc patches. We also se=
e
> > the bug in 31, but not in 27.
>=20
> Could you bisect it? Even if you don't bisect it _all_ the way, 27..31 is=
=20
> a big range. Doing just a handful of bisections (say six or seven) would=20
> cut down the number of commits from 47 thousand to somewhat more=20
> manageable "hundreds of commits"... But obviously going all the way would=
=20
> be better.

As Benh said it's not really bisectable on our kernel. But I got Mikey
to bisect it on upstream using a different simulator model, and he
couldn't tie it down. It becomes easier to hit in more recent kernels
(since 27), but he could hit in 25 too.

Looking at the code, which I should have done first, it looks like this
is expected behaviour. The sequence is roughly:

      * hvc_console reads all our input and passes it to the tty code
        via tty_insert_flip_char()
      * flush_to_ldisc() runs calling n_tty_receive_buf(), which fills
        4K of tty->read_buf
      * Once read_buf is full, tty->receive_room becomes 0 and
        flush_to_ldisc() reschedules itself to run again in 1 jiffy.
      * Bash reads 1 character, causing receive_room to become 1.
      * flush_to_ldisc() runs again and inserts 1 more char because
        receive_room is now 1.
      * (repeat the last two steps a few times)
      * Bash sets tty->icanon =3D 1 via n_tty_set_termios(), which calls
        n_tty_set_room(). Because icanon is enabled, n_tty_set_room()
        lies and says we have space for 1 character even though we
        don't.
      * flush_to_ldisc() runs, sees that receive_room is 1 and calls
        n_tty_receive_buf()
      * n_tty_receive_buf() calls n_tty_receive_char() which drops the
        character because there's no room (~ line 1132).
      * We keep dropping characters until we see a newline, which
        increments tty->canon_data, causing n_tty_set_room() to report 0
        space left, and so flush_to_ldisc() reschedules again.


It's a bit unfortunate that n_tty_set_room() lies about the available
space when icanon =3D 1, but it makes sense in order to handle erase. It
would be nice if n_tty_receive_buf() returned a status to
flush_to_disc() to say "actually I could only fit X chars after all,
please take them back" - but I don't grok how that would play with all
the other logic in there.

cheers




--=-9Wod46MrbXzcvq80/psn
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.9 (GNU/Linux)

iEYEABECAAYFAkrcCU8ACgkQdSjSd0sB4dIPAgCcCUp4D/8++vh0PUlPeGlbgy+s
TW0AoIXGTbZ7M9ntWqlVlD1ThEReAsTY
=TvBk
-----END PGP SIGNATURE-----

--=-9Wod46MrbXzcvq80/psn--
