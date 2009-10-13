From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: [Bug #14388] keyboard under X with 2.6.31
Date: Tue, 13 Oct 2009 14:02:03 -0700 (PDT)
Message-ID: <alpine.LFD.2.01.0910131358140.26777@localhost.localdomain>
References: <56acieJJ2fF.A.nEB.Hzl0KB@chimera> <L6tb-VyKHZK.A.PaB.Ozl0KB@chimera> <C4F8B19E-F4B4-47F3-AE5B-4581C8E3F3AE@gmail.com> <87ljjgfcbu.fsf@spindle.srvr.nix> <alpine.LFD.2.01.0910121703390.3438@localhost.localdomain> <alpine.LFD.2.01.0910122004200.3438@localhost.localdomain>
 <4AD3F769.5080405@gmail.com> <alpine.LNX.2.01.0910130405200.9297@dyndns.pervalidus.net> <4AD437F9.9020708@yahoo.co.uk> <alpine.LFD.2.01.0910130745550.3438@localhost.localdomain> <4AD4DE4C.4010402@yahoo.co.uk>
 <alpine.LFD.2.01.0910131317360.26777@localhost.localdomain>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.LFD.2.01.0910131317360.26777-bi+AKbBUZKY6gyzm1THtWbp2dZbC/Bob@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Boyan <btanastasov-/E1597aS9LT10XsdtD+oqA@public.gmane.org>
Cc: =?ISO-8859-15?Q?Fr=E9d=E9ric_L=2E_W=2E_Meunier?= <fredlwm-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "Justin P. Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Nix <nix-dKoSMcxRz+Te9xe1eoZjHA@public.gmane.org>, Alan Cox <alan-qBU/x9rampVanCEyBjwyrvXRex20P6io@public.gmane.org>, Paul Fulghum <paulkf-CZzk0lvu1V9l57MIdRCFDg@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Dmitry Torokhov <dmitry.torokhov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ed Tomlinson <edt-Yad3+ZauZac@public.gmane.org>, OGAWA Hirofumi <hirofumi-UIVanBePwB70ZhReMnHkpc8NsWr+9BEh@public.gmane.org>



On Tue, 13 Oct 2009, Linus Torvalds wrote:
> 
> Anyway, I'm not entirely happy with this patch, and I haven't actually 
> TESTED it so it might well be totally broken [..]

It is.

Looking over the patch a bit more, at a minimum that

	if (test_and_set_bit(TTY_FLUSHING, &tty->flags)) {

line should be

	if (!test_and_set_bit(TTY_FLUSHING, &tty->flags)) {

(ie add the '!') since we want to do things if the bit wasn't set before 
(and if it was already set it all turns into a no-op).

But apart from that obvious typo, the patch still looks good even after 
looking it through a bit more. It's still TOTALLY UNTESTED, though!

		Linus
