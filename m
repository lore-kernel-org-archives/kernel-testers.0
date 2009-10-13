From: Jiri Kosina <jkosina@suse.cz>
Subject: Re: [Bug #14388] keyboard under X with 2.6.31
Date: Tue, 13 Oct 2009 16:51:30 +0200 (CEST)
Message-ID: <alpine.LRH.2.00.0910131645290.12171@twin.jikos.cz>
References: <56acieJJ2fF.A.nEB.Hzl0KB@chimera> <L6tb-VyKHZK.A.PaB.Ozl0KB@chimera> <C4F8B19E-F4B4-47F3-AE5B-4581C8E3F3AE@gmail.com> <87ljjgfcbu.fsf@spindle.srvr.nix> <20091013003841.6c2988d0@lxorguk.ukuu.org.uk> <20091012234641.GF8345@core.coreip.homeip.net>
 <20091013120046.5efb3365@lxorguk.ukuu.org.uk>
Mime-Version: 1.0
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1760106AbZJMOwO@vger.kernel.org>
In-Reply-To: <20091013120046.5efb3365@lxorguk.ukuu.org.uk>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Alan Cox <alan@lxorguk.ukuu.org.uk>
Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>, Nix <nix@esperi.org.uk>, "Justin P. Mattock" <justinmattock@gmail.com>, "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Boyan <btanastasov@yahoo.co.uk>, Ed Tomlinson <edt@aei.ca>, =?ISO-8859-15?Q?Fr=E9d=E9ric_L=2E_W=2E_Meunier?= <fredlwm@gmail.com>, Linus Torvalds <torvalds@linux-foundation.org>, OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>, Andi Kleen <andi@firstfloor.org>

On Tue, 13 Oct 2009, Alan Cox wrote:

> > > > So it seems likely to me that this is a kernel bug, somewhere, and the
> > > > TTY layer seems like a good place to look (OK, a horrible place, but a
> > > > *likely* place).
> > > 
> > > Somewhere around 2.6.29-30 various things went funny in the keyboard
> > > layer for me - notably characters "bleeding" across console switches.
> > 
> > What do you mean by "bleeding"? Are you sure it is not autorepeat
> > kicking in?
> 
> Fairly. Just now and then I'll do something like type
> 
> "blahblah<alt-f1>"
> 
> eg when flipping consoles to check something and the last letter or two
> ends up on the screen after the flip (as if the alt-f1 vc switch passes
> the data somewhere). I suspect its some kind of asynchronous handling
> using the "current console" rather than the "current console at the time
> the letter was typed" but it doesn't occur to order so isn't bisectable
> and I've never managed to pin down where in the keyboard/vt/tty stack it's
> occurring.

This has been reported by Andi Kleen some time ago [1] [2]. He seems to 
have had clear idea between which kernel versions this started happening 
and seemed to be able to reproduce it very reliably (which wasn't the case 
on my side), but I don't think he bisected it down to single commit yet.

Andi?

[1] http://marc.info/?l=linux-kernel&m=124695628924382&w=4
[2] http://bugzilla.kernel.org/show_bug.cgi?id=13739

-- 
Jiri Kosina
SUSE Labs, Novell Inc.
