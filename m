From: Alan Cox <alan-qBU/x9rampVanCEyBjwyrvXRex20P6io@public.gmane.org>
Subject: Re: [Bug #14388] keyboard under X with 2.6.31
Date: Tue, 13 Oct 2009 12:00:46 +0100
Message-ID: <20091013120046.5efb3365@lxorguk.ukuu.org.uk>
References: <56acieJJ2fF.A.nEB.Hzl0KB@chimera>
	<L6tb-VyKHZK.A.PaB.Ozl0KB@chimera>
	<C4F8B19E-F4B4-47F3-AE5B-4581C8E3F3AE@gmail.com>
	<87ljjgfcbu.fsf@spindle.srvr.nix>
	<20091013003841.6c2988d0@lxorguk.ukuu.org.uk>
	<20091012234641.GF8345@core.coreip.homeip.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20091012234641.GF8345-WlK9ik9hQGAhIp7JRqBPierSzoNAToWh@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Dmitry Torokhov <dmitry.torokhov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Nix <nix-dKoSMcxRz+Te9xe1eoZjHA@public.gmane.org>, "Justin P. Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Boyan <btanastasov-/E1597aS9LT10XsdtD+oqA@public.gmane.org>, Ed Tomlinson <edt-Yad3+ZauZac@public.gmane.org>, "=?ISO-8859-14?B?RnLpZOlyaWM=?= L. W. Meunier" <fredlwm-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, OGAWA Hirofumi <hirofumi-UIVanBePwB70ZhReMnHkpc8NsWr+9BEh@public.gmane.org>

On Mon, 12 Oct 2009 16:46:41 -0700
Dmitry Torokhov <dmitry.torokhov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:

> On Tue, Oct 13, 2009 at 12:38:41AM +0100, Alan Cox wrote:
> > > So it seems likely to me that this is a kernel bug, somewhere, and the
> > > TTY layer seems like a good place to look (OK, a horrible place, but a
> > > *likely* place).
> > 
> > Somewhere around 2.6.29-30 various things went funny in the keyboard
> > layer for me - notably characters "bleeding" across console switches.
> > 
> 
> What do you mean by "bleeding"? Are you sure it is not autorepeat
> kicking in?

Fairly. Just now and then I'll do something like type

"blahblah<alt-f1>"

eg when flipping consoles to check something and the last letter or two
ends up on the screen after the flip (as if the alt-f1 vc switch passes
the data somewhere). I suspect its some kind of asynchronous handling
using the "current console" rather than the "current console at the time
the letter was typed" but it doesn't occur to order so isn't bisectable
and I've never managed to pin down where in the keyboard/vt/tty stack it's
occurring.
