From: Alan Cox <alan@lxorguk.ukuu.org.uk>
Subject: Re: [Bug #14388] keyboard under X with 2.6.31
Date: Tue, 13 Oct 2009 16:59:21 +0100
Message-ID: <20091013165921.4b0ffef5@lxorguk.ukuu.org.uk>
References: <56acieJJ2fF.A.nEB.Hzl0KB@chimera>
	<L6tb-VyKHZK.A.PaB.Ozl0KB@chimera>
	<C4F8B19E-F4B4-47F3-AE5B-4581C8E3F3AE@gmail.com>
	<87ljjgfcbu.fsf@spindle.srvr.nix>
	<alpine.LFD.2.01.0910121703390.3438@localhost.localdomain>
	<alpine.LFD.2.01.0910122004200.3438@localhost.localdomain>
	<20091013113232.384b2432@lxorguk.ukuu.org.uk>
	<alpine.LFD.2.01.0910130721530.3438@localhost.localdomain>
	<1255447980.3898.3.camel@x2.microgate.com>
	<alpine.LFD.2.01.0910130837370.26777@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S933927AbZJMP7Y@vger.kernel.org>
In-Reply-To: <alpine.LFD.2.01.0910130837370.26777@localhost.localdomain>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Paul Fulghum <paulkf@microgate.com>, Nix <nix@esperi.org.uk>, "Justin P. Mattock" <justinmattock@gmail.com>, "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Boyan <btanastasov@yahoo.co.uk>, Dmitry Torokhov <dmitry.torokhov@gmail.com>, Ed Tomlinson <edt@aei.ca>, "=?ISO-8859-14?B?RnLpZOlyaWM=?= L. W. Meunier" <fredlwm@gmail.com>, OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>

> What I was pointing out is that there are a lot of=20
> "tty_buffer_request_room()" calls, and as far as I can see, all of th=
em=20
> (or at least a large percentage) are just pure and utter crap.

Almost certainly. When the original conversion was done all the code
which tried to peer into the flip buffer and check what bytes were left
was converted systematically to call request_room() as well in order to
make the conversion easy and reliable. For most devices thats a fairly
na=EFve conversion as with the new buffering the tty device really
shouldn't care about overruns. If we overrun now it's because we really
do want to dump stuff not because of crappy buffering.

The request_room actually trying to produce big buffers semantic was
added because some of the high speed DMA based adapters (notably 3G USB
ones) would hand large blocks of data over each time at rates upwards o=
f
10-20Mbits. Without that request_room tweak they tended to drop data.

Because of the way they work the DMA buffers are allocated when the URB
is submitted so they can't use prepare_* ops but had to copy in some fo=
rm.

With those in place we top out at about 40-50Mbits over a USB serial
link, which ought to be enough for anyone sane for the moment.

Your change to tty_insert_flip_string() is irrelevant for any practical
situation simply because the caller has to provide ordering of the bloc=
ks
it submits (if it receives 5 bytes and they all queue asynchronously th=
en
it doesn't matter one iota whether tty_insert_flip_string has extra
internal locking "linus" is still going to turn randomly into things li=
ke
"sunil" in the serial stream and cause much confusion).

I actually think you should make the tty_insert_flip_string internal
length checking change because:
- It makes the consistency of tty_insert_flip_string clearer to any
  future reader
- It's a very very mindbogglingly slight performance win
- It'll no doubt make you feel less grumpy ;)

Alan
