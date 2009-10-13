From: Alan Cox <alan-qBU/x9rampVanCEyBjwyrvXRex20P6io@public.gmane.org>
Subject: Re: [Bug #14388] keyboard under X with 2.6.31
Date: Wed, 14 Oct 2009 00:11:31 +0100
Message-ID: <20091014001131.302d3272@lxorguk.ukuu.org.uk>
References: <56acieJJ2fF.A.nEB.Hzl0KB@chimera>
	<L6tb-VyKHZK.A.PaB.Ozl0KB@chimera>
	<C4F8B19E-F4B4-47F3-AE5B-4581C8E3F3AE@gmail.com>
	<87ljjgfcbu.fsf@spindle.srvr.nix>
	<alpine.LFD.2.01.0910121703390.3438@localhost.localdomain>
	<alpine.LFD.2.01.0910122004200.3438@localhost.localdomain>
	<4AD3F769.5080405@gmail.com>
	<alpine.LNX.2.01.0910130405200.9297@dyndns.pervalidus.net>
	<4AD437F9.9020708@yahoo.co.uk>
	<alpine.LFD.2.01.0910130745550.3438@localhost.localdomain>
	<4AD4DE4C.4010402@yahoo.co.uk>
	<alpine.LFD.2.01.0910131317360.26777@localhost.localdomain>
	<20091013223212.3260a7eb@lxorguk.ukuu.org.uk>
	<alpine.LFD.2.01.0910131548280.3404@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.LFD.2.01.0910131548280.3404-bi+AKbBUZKY6gyzm1THtWbp2dZbC/Bob@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: Boyan <btanastasov-/E1597aS9LT10XsdtD+oqA@public.gmane.org>, "=?ISO-8859-14?B?RnLpZOlyaWM=?= L. W. Meunier" <fredlwm-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "Justin P. Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Nix <nix-dKoSMcxRz+Te9xe1eoZjHA@public.gmane.org>, Paul Fulghum <paulkf-CZzk0lvu1V9l57MIdRCFDg@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Dmitry Torokhov <dmitry.torokhov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ed Tomlinson <edt-Yad3+ZauZac@public.gmane.org>, OGAWA Hirofumi <hirofumi-UIVanBePwB70ZhReMnHkpc8NsWr+9BEh@public.gmane.org>

> > I can't help feeling a mutex might be simpler. It would also then fix
> > tiocsti() which is most definitely broken right now and documented as
> > racing.
> 
> Hmm. Those tty's have too many different locks already.
> 
> But maybe we could just have one generic mutex, and use it for termios and 
> IO locking. It makes perfect sense to serialize the ->receive_buf() code 
> with any termios changes, since termios is what affects _how_ that 
> ->receive_buf() function works.

You cannot trivially just take the same lock for receive_buf and termios
locking at the moment. The reason is that receive_buf can cause the tty to
throttle which causes us to call the throttle methods which take the lock.

tty_throttle() and tty_unthrottle() can be called from both receive_buf
and non receive_buf paths so you can't just remove it.

The better existing lock is probably tty->ldisc_mutex which we take when
doing ldisc changes (which are an even more dramatic change during
receive_buf). We don't do ldisc changes from the receive_buf path and it
opens a path for further simplification of the ldisc logic if we can get
to the point where the ldisc doesn't get called randomly from the tty
layer when changing.

> I do wonder why tiocsti() doesn't just use the tty buffering layer, 
> though? Maybe that harks back to the whole "pty's did things differently" 
> thing? Why does it go directly to ->receive_buf() in the first place?

Historical question - I don't know - and at the time I commented it there
was no quick fix and bigger problems to sort first

Alan
