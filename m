From: Alan Cox <alan@lxorguk.ukuu.org.uk>
Subject: Re: [Bug #14388] keyboard under X with 2.6.31
Date: Tue, 13 Oct 2009 00:38:41 +0100
Message-ID: <20091013003841.6c2988d0@lxorguk.ukuu.org.uk>
References: <56acieJJ2fF.A.nEB.Hzl0KB@chimera>
	<L6tb-VyKHZK.A.PaB.Ozl0KB@chimera>
	<C4F8B19E-F4B4-47F3-AE5B-4581C8E3F3AE@gmail.com>
	<87ljjgfcbu.fsf@spindle.srvr.nix>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S933262AbZJLXji@vger.kernel.org>
In-Reply-To: <87ljjgfcbu.fsf@spindle.srvr.nix>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Nix <nix@esperi.org.uk>
Cc: "Justin P. Mattock" <justinmattock@gmail.com>, "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Boyan <btanastasov@yahoo.co.uk>, Dmitry Torokhov <dmitry.torokhov@gmail.com>, Ed Tomlinson <edt@aei.ca>, "=?ISO-8859-14?B?RnLpZOlyaWM=?= L. W. Meunier" <fredlwm@gmail.com>, Linus Torvalds <torvalds@linux-foundation.org>, OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>

> So it seems likely to me that this is a kernel bug, somewhere, and the
> TTY layer seems like a good place to look (OK, a horrible place, but a
> *likely* place).

Somewhere around 2.6.29-30 various things went funny in the keyboard
layer for me - notably characters "bleeding" across console switches.

> 
> I'm about to try reverting the suggested commit and will report back. I
> see this failure about once a day, so I'll give it three days to go
> wrong and then (if it doesn't) will presume it works and so inform you.
> 
> 
> (Of course with this commit reverted Emacsen start dropping data from
> their ptys, and as bad luck would have it I live in (X)Emacs, but that's
> on a different machine! so I can have my compile buffer data *and* not
> destroy X ;} )

X doesn't touch the pty layer. It touches vt (extensively) and the input
layers. It's vt/kbd access is also very raw so bypasses much of that
layer. That isn't to say tty isn't the cause but look for input layer
changes too.
