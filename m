From: Nix <nix@esperi.org.uk>
Subject: Re: [Bug #14388] keyboard under X with 2.6.31
Date: Mon, 12 Oct 2009 23:59:33 +0100
Message-ID: <87ljjgfcbu.fsf@spindle.srvr.nix>
References: <56acieJJ2fF.A.nEB.Hzl0KB@chimera>
	<L6tb-VyKHZK.A.PaB.Ozl0KB@chimera>
	<C4F8B19E-F4B4-47F3-AE5B-4581C8E3F3AE@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S933179AbZJLXBW@vger.kernel.org>
In-Reply-To: <C4F8B19E-F4B4-47F3-AE5B-4581C8E3F3AE@gmail.com> (Justin P. Mattock's message of "12 Oct 2009 20:03:51 +0100")
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Justin P. Mattock" <justinmattock@gmail.com>
Cc: "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Boyan <btanastasov@yahoo.co.uk>, Dmitry Torokhov <dmitry.torokhov@gmail.com>, Ed Tomlinson <edt@aei.ca>, =?iso-8859-1?Q?Fr=E9d=E9ric_L=2E_W=2E_Meunier?= <fredlwm@gmail.com>, Linus Torvalds <torvalds@linux-foundation.org>, OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>

On 12 Oct 2009, Justin P. Mattock uttered the following:

> Not sure where this stands. Right now all three machines I have seem =
 to be having no issues with the kayboard
> (xserver 1.6.*) I can go and build the latest xserver(1.7) to see if =
I  hit something.
[...]
>> Bug-Entry    : http://bugzilla.kernel.org/show_bug.cgi?id=3D14388
>> Subject        : keyboard under X with 2.6.31
>> Submitter    : Fr=E9d=E9ric L. W. Meunier <fredlwm@gmail.com>
>> Date        : 2009-10-07 20:19 (5 days old)
>> First-Bad-Commit: http://git.kernel.org/?p=3Dlinux/kernel/git/torval=
ds/linux-2.6.git;a=3Dcommit;h=3De043e42bdb66885b3ac10d27a01ccb9972e2b0a=
3
>> References    : http://marc.info/?l=3Dlinux-kernel&m=3D1254947532282=
17&w=3D4

I have been seeing problems precisely like those described (sometimes
the keyboard dies, sometimes it gets 'stuck' with a key held down, unti=
l
I switch TTYs, which generally means killing X as I'm not aware of an
easy way to switch VTs using only the mouse), since I moved to 2.6.31,
using the kbd driver from X.org git with head commit
158d33c15df60696946031a0319e2bd2ec8b9541, and version 1.6.3.901 of the =
X
server, old enough that I'd been using it for a couple of weeks before
switching to 2.6.31 without incident. (Note, I'm using kbd, not
evdev. Maybe this is a common factor among everyone seeing failures: I
don't know.)

So it seems likely to me that this is a kernel bug, somewhere, and the
TTY layer seems like a good place to look (OK, a horrible place, but a
*likely* place).

I'm about to try reverting the suggested commit and will report back. I
see this failure about once a day, so I'll give it three days to go
wrong and then (if it doesn't) will presume it works and so inform you.


(Of course with this commit reverted Emacsen start dropping data from
their ptys, and as bad luck would have it I live in (X)Emacs, but that'=
s
on a different machine! so I can have my compile buffer data *and* not
destroy X ;} )
