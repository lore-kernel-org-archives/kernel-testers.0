From: Michael Ellerman <michael-Gsx/Oe8HsFggBc27wqDAHg@public.gmane.org>
Subject: Characters vanishing in the tty layer? (maybe related to [Bug
 #14388] keyboard under X with 2.6.31)
Date: Wed, 14 Oct 2009 17:21:34 +1100
Message-ID: <1255501294.21962.24.camel@concordia>
Reply-To: michael-Gsx/Oe8HsFggBc27wqDAHg@public.gmane.org
Mime-Version: 1.0
Content-Type: multipart/signed; micalg="pgp-sha1"; protocol="application/pgp-signature"; boundary="=-znomADN6ZatqYSBX0zc6"
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Boyan <btanastasov-/E1597aS9LT10XsdtD+oqA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, fredlwm-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Ed Tomlinson <edt-Yad3+ZauZac@public.gmane.org>, OGAWA Hirofumi <hirofumi-UIVanBePwB70ZhReMnHkpc8NsWr+9BEh@public.gmane.org>, Dmitry Torokhov <dmitry.torokhov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>


--=-znomADN6ZatqYSBX0zc6
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Hi all,

I'm seeing a bug in an internal tree, based on 32-rc4, where characters
that are given to the tty code seem to disappear. It sounds different,
but perhaps somehow related to the problems in the "keyboard under X
with 2.6.31" thread.

I'm using hvc_console.c, and I see all my input read into there. Adding
debug in tty_read() though, I see characters go missing. It's only 50 or
so characters out of 4K or more. The bug is 100% reproducible, but only
on an internal simulator (sorry). I'm running one cpu and one thread,
with no preempt.

I'm using 80f5069 or thereabouts, plus some powerpc patches. We also see
the bug in 31, but not in 27.

I've tried two of Linus' patches from the X keyboard thread, the one
that changes flush_to_ldisc() and the one that adds
locked_tty_buffer_request_room() - neither seems to help. I've also
changed hvc_console.c to use tty_insert_flip_string(tty, c, 1) (which is
locked after Linus' patch) instead of tty_insert_flip_char() - also
didn't help.

Some example debug output:

137352697: (137187792): hvc_fss_read_console: '.out
137353604: (137188699): cat strace'
137361976: (137197049): hvc_fss_read_console: '.out | callthru '
137370882: (137205933): hvc_fss_read_console: 'sink /home/micha'
137379788: (137214817): hvc_fss_read_console: 'el/kbt/strace.ou'
137388696: (137223703): hvc_fss_read_console: 't
137389606: (137224613): callthru eval'

2396468919: (2340876339): (none) / # tty_read: read 1 chars 'c'
2396579463: (2340986479): ctty_read: read 1 chars 'a'
2396690167: (2341096780): atty_read: read 1 chars 't'
2396800851: (2341207061): ttty_read: read 1 chars ' '
2396911580: (2341317387):  tty_read: read 1 chars 's'
2397022603: (2341428007): stty_read: read 1 chars 't'
2397133524: (2341538525): ttty_read: read 1 chars 'r'
2397244739: (2341649337): rtty_read: read 1 chars 'a'
2397355852: (2341760047): atty_read: read 1 chars 'c'
2397467259: (2341871051): ctty_read: read 1 chars 'e'
2397578564: (2341981953): etty_read: read 1 chars '.'
2397690618: (2342093604): .tty_read: read 1 chars, newline
2397800089: (2342202671):
2399849231: (2344246188): cat: strace.: No such file or directory


So we seem to have lost everything after the dot in the second ".out"
until the end of the line.

It's entirely possible this is a bug in hvc_console.c, or our arch
patches, or the simulator .. or the tty code :)

Anyway, if anyone has ideas or patches I'm all ears.

cheers

--=-znomADN6ZatqYSBX0zc6
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.9 (GNU/Linux)

iEYEABECAAYFAkrVbe4ACgkQdSjSd0sB4dKXwwCeI+qhxULkJpzTDk85ldOm3DxU
+BkAn2tQP0N/rY6a7UchTy9jaf/F+AfR
=Vf6R
-----END PGP SIGNATURE-----

--=-znomADN6ZatqYSBX0zc6--
