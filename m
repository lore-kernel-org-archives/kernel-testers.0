From: Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: [Bug #14388] keyboard under X with 2.6.31
Date: Tue, 13 Oct 2009 09:42:39 -0700 (PDT)
Message-ID: <alpine.LFD.2.01.0910130934070.26777@localhost.localdomain>
References: <56acieJJ2fF.A.nEB.Hzl0KB@chimera> <L6tb-VyKHZK.A.PaB.Ozl0KB@chimera> <C4F8B19E-F4B4-47F3-AE5B-4581C8E3F3AE@gmail.com> <87ljjgfcbu.fsf@spindle.srvr.nix> <alpine.LFD.2.01.0910121703390.3438@localhost.localdomain> <alpine.LFD.2.01.0910122004200.3438@localhost.localdomain>
 <20091013113232.384b2432@lxorguk.ukuu.org.uk> <alpine.LFD.2.01.0910130721530.3438@localhost.localdomain> <1255447980.3898.3.camel@x2.microgate.com> <alpine.LFD.2.01.0910130837370.26777@localhost.localdomain> <20091013165921.4b0ffef5@lxorguk.ukuu.org.uk>
Mime-Version: 1.0
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1760555AbZJMQuv@vger.kernel.org>
In-Reply-To: <20091013165921.4b0ffef5@lxorguk.ukuu.org.uk>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Alan Cox <alan@lxorguk.ukuu.org.uk>
Cc: Paul Fulghum <paulkf@microgate.com>, Nix <nix@esperi.org.uk>, "Justin P. Mattock" <justinmattock@gmail.com>, "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Boyan <btanastasov@yahoo.co.uk>, Dmitry Torokhov <dmitry.torokhov@gmail.com>, Ed Tomlinson <edt@aei.ca>, =?ISO-8859-15?Q?Fr=E9d=E9ric_L=2E_W=2E_Meunier?= <fredlwm@gmail.com>, OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>



On Tue, 13 Oct 2009, Alan Cox wrote:
> 
> I actually think you should make the tty_insert_flip_string internal
> length checking change because:
> - It makes the consistency of tty_insert_flip_string clearer to any
>   future reader

It does that, although then you're still stuck looking at the (few) 
tty_prepare_flip_*() calls that have that "racy feel".

But there aren't _that_ many callers, and it would probably be easier to 
at least comment on those.

> - It's a very very mindbogglingly slight performance win

I suspect the loop is always done exactly once in practice, so I'm not 
sure it will matter for performance one way or the other.

However, if we do hold the spinlock over the whole operation, what we 
_could_ do is to then just combine it with tty_flip_buffer_push(), and do 
that
	tb->commit = tb->used;

part inside the lock. There's a number of people who effectively do

	tty_tty_buffer_request_room(tty, size);
	tty_insert_flip_string(tty, buffer, size);
	tty_flip_buffer_push(tty);

and that just takes that silly spinlock _three_ times for no good reason.

> - It'll no doubt make you feel less grumpy ;)

Not likely. Grumpy is my baseline.

		Linus
