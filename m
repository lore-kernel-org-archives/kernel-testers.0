From: Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: [Bug #14388] keyboard under X with 2.6.31
Date: Mon, 12 Oct 2009 17:16:29 -0700 (PDT)
Message-ID: <alpine.LFD.2.01.0910121703390.3438@localhost.localdomain>
References: <56acieJJ2fF.A.nEB.Hzl0KB@chimera> <L6tb-VyKHZK.A.PaB.Ozl0KB@chimera> <C4F8B19E-F4B4-47F3-AE5B-4581C8E3F3AE@gmail.com> <87ljjgfcbu.fsf@spindle.srvr.nix>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1758622AbZJMAR0@vger.kernel.org>
In-Reply-To: <87ljjgfcbu.fsf@spindle.srvr.nix>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="iso-8859-1"
To: Nix <nix@esperi.org.uk>
Cc: "Justin P. Mattock" <justinmattock@gmail.com>, "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Boyan <btanastasov@yahoo.co.uk>, Dmitry Torokhov <dmitry.torokhov@gmail.com>, Ed Tomlinson <edt@aei.ca>, =?ISO-8859-15?Q?Fr=E9d=E9ric_L=2E_W=2E_Meunier?= <fredlwm@gmail.com>, OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>



On Mon, 12 Oct 2009, Nix wrote:
> On 12 Oct 2009, Justin P. Mattock uttered the following:
>=20
> > Not sure where this stands. Right now all three machines I have see=
m  to be having no issues with the kayboard
> > (xserver 1.6.*) I can go and build the latest xserver(1.7) to see i=
f I  hit something.
> [...]
> >> Bug-Entry    : http://bugzilla.kernel.org/show_bug.cgi?id=3D14388
> >> Subject        : keyboard under X with 2.6.31
> >> Submitter    : Fr=E9d=E9ric L. W. Meunier <fredlwm@gmail.com>
> >> Date        : 2009-10-07 20:19 (5 days old)
> >> First-Bad-Commit: http://git.kernel.org/?p=3Dlinux/kernel/git/torv=
alds/linux-2.6.git;a=3Dcommit;h=3De043e42bdb66885b3ac10d27a01ccb9972e2b=
0a3
> >> References    : http://marc.info/?l=3Dlinux-kernel&m=3D12549475322=
8217&w=3D4
>=20
> I have been seeing problems precisely like those described (sometimes
> the keyboard dies, sometimes it gets 'stuck' with a key held down, un=
til
> I switch TTYs, which generally means killing X as I'm not aware of an
> easy way to switch VTs using only the mouse), since I moved to 2.6.31

The particular commit that was bisected to should really not matter for=
 X,=20
except perhaps from a timing standpoint.

The problem it fixed was in pty's, and X doesn't use them much if at al=
l=20
(various X _programs_ may, of course, but the symptoms don't sound like=
=20
it's just a particular X app that has issues, but more of a generic X=20
keyboard handling thing)

But for non-pty's, there should be no semantic changes from that commit=
=20
outside of some general tty timing differences by doing that=20
tty_flush_to_ldisc() at new points.

I could fairly easily imagine that some timing difference does expose=20
another longer-standing problem in either the kernel or X itself. So th=
e=20
bisection isn't necessarily wrong, it's just not likely telling us what=
=20
the real problem is.

Of course, maybe there is some race condition in the tty_buffer.c code.=
 We=20
_used_ to not call flush_to_ldisc() except through the workqueue code, =
so=20
races would not be seen in normal circumstances. Now that flush_to_ldis=
c()=20
could easily get called both synchronously from tty_read()/tty_poll(),=20
while also being hit from the workqueues.

Alan, Ogawa-san, do either of you see some problem in tty_buffer.c,=20
perhaps?

		Linus

