From: Alan Cox <alan-qBU/x9rampVanCEyBjwyrvXRex20P6io@public.gmane.org>
Subject: Re: [Bug #14388] keyboard under X with 2.6.31
Date: Tue, 13 Oct 2009 22:32:12 +0100
Message-ID: <20091013223212.3260a7eb@lxorguk.ukuu.org.uk>
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
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.LFD.2.01.0910131317360.26777-bi+AKbBUZKY6gyzm1THtWbp2dZbC/Bob@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: Boyan <btanastasov-/E1597aS9LT10XsdtD+oqA@public.gmane.org>, "=?ISO-8859-14?B?RnLpZOlyaWM=?= L. W. Meunier" <fredlwm-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "Justin P. Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Nix <nix-dKoSMcxRz+Te9xe1eoZjHA@public.gmane.org>, Paul Fulghum <paulkf-CZzk0lvu1V9l57MIdRCFDg@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Dmitry Torokhov <dmitry.torokhov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ed Tomlinson <edt-Yad3+ZauZac@public.gmane.org>, OGAWA Hirofumi <hirofumi-UIVanBePwB70ZhReMnHkpc8NsWr+9BEh@public.gmane.org>

> But flush_to_ldisc() itself has a real oddity: it uses "tty->buf.lock" to 
> protect everything, BUT NOT THE ACTUAL CALL TO ->receive_buf()!

Indeed or it deadlocks

> Anyway, the above explanation "feels right". It would easily explain the 
> behavior, because if the ->receive_buf() calls get re-ordered, then the 
> events get re-ordered, and one simple case of that would be to see the key 
> "release" event before the key "press" event.

And you would only see it in X11 because only X11 deals in raw key events.

> The sane fix would be to just run ->receive_buf() under the tty->buf.lock, 
> but I assume we'd have a lot of unhappy ldiscs if we did that (and 
> possibly irq latency problems too).

You bet

However there is nothing stopping you stuffing that lot into a per tty
mutex solely used for serializing those submissions. It can't really be a
mutex for anything else as we call back into the ldisc to send stuff. You
aren't allowed to stuff data into the ldisc unless it can sleep so a
mutex is fine.

I can't help feeling a mutex might be simpler. It would also then fix
tiocsti() which is most definitely broken right now and documented as
racing.

Alan
