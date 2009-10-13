From: Alan Cox <alan@lxorguk.ukuu.org.uk>
Subject: Re: [Bug #14388] keyboard under X with 2.6.31
Date: Tue, 13 Oct 2009 11:34:34 +0100
Message-ID: <20091013113434.22f4fcde@lxorguk.ukuu.org.uk>
References: <56acieJJ2fF.A.nEB.Hzl0KB@chimera>
	<L6tb-VyKHZK.A.PaB.Ozl0KB@chimera>
	<C4F8B19E-F4B4-47F3-AE5B-4581C8E3F3AE@gmail.com>
	<87ljjgfcbu.fsf@spindle.srvr.nix>
	<alpine.LFD.2.01.0910121703390.3438@localhost.localdomain>
	<alpine.LFD.2.01.0910122004200.3438@localhost.localdomain>
	<4AD3F769.5080405@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S933883AbZJMKeA@vger.kernel.org>
In-Reply-To: <4AD3F769.5080405@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Justin P. Mattock" <justinmattock@gmail.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, Nix <nix@esperi.org.uk>, Paul Fulghum <paulkf@microgate.com>, "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Boyan <btanastasov@yahoo.co.uk>, Dmitry Torokhov <dmitry.torokhov@gmail.com>, Ed Tomlinson <edt@aei.ca>, " =?ISO-8859-14?B?RnLpZOlyaWM=?= L. W. Meunier" <fredlwm@gmail.com>, OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>

> I can throw your patch in over here for the heck of it.
> If there's somebody who's really hitting this bug
> then the results would be better  if this is the area that causing
> this bug.(from here the only issue I'm seeing is spinning
> history commands in the terminal  from time to time,
> nothing of any unusable keys like others are reporting).

That sounds more like a lost key-up event somewhere higher up the stack.
USB keyboard ? and does it stop if you take the key in question. Also does
it stop if you touch the mouse wheel (assuming you've got mousewheel
bound to shell history somewhere ?)

Alan
