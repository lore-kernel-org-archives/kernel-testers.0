From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: [Bug #14388] keyboard under X with 2.6.31
Date: Tue, 13 Oct 2009 15:42:56 -0700 (PDT)
Message-ID: <alpine.LFD.2.01.0910131514100.3404@localhost.localdomain>
References: <56acieJJ2fF.A.nEB.Hzl0KB@chimera> <L6tb-VyKHZK.A.PaB.Ozl0KB@chimera> <C4F8B19E-F4B4-47F3-AE5B-4581C8E3F3AE@gmail.com> <87ljjgfcbu.fsf@spindle.srvr.nix> <alpine.LFD.2.01.0910121703390.3438@localhost.localdomain> <alpine.LFD.2.01.0910122004200.3438@localhost.localdomain>
 <4AD3F769.5080405@gmail.com> <alpine.LNX.2.01.0910130405200.9297@dyndns.pervalidus.net> <4AD437F9.9020708@yahoo.co.uk> <alpine.LFD.2.01.0910130745550.3438@localhost.localdomain> <4AD4DE4C.4010402@yahoo.co.uk> <alpine.LFD.2.01.0910131317360.26777@localhost.localdomain>
 <4AD4F548.2030506@microgate.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <4AD4F548.2030506-CZzk0lvu1V9l57MIdRCFDg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Paul Fulghum <paulkf-CZzk0lvu1V9l57MIdRCFDg@public.gmane.org>
Cc: Boyan <btanastasov-/E1597aS9LT10XsdtD+oqA@public.gmane.org>, =?ISO-8859-15?Q?=22Fr=E9d=E9ric_L=2E_W=2E_Meunier=22?= <fredlwm-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "Justin P. Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Nix <nix-dKoSMcxRz+Te9xe1eoZjHA@public.gmane.org>, Alan Cox <alan-qBU/x9rampVanCEyBjwyrvXRex20P6io@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Dmitry Torokhov <dmitry.torokhov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ed Tomlinson <edt-Yad3+ZauZac@public.gmane.org>, OGAWA Hirofumi <hirofumi-UIVanBePwB70ZhReMnHkpc8NsWr+9BEh@public.gmane.org>



On Tue, 13 Oct 2009, Paul Fulghum wrote:
> 
> If flush_to_ldisc() is reentered with the head set to null, nothing
> is done. New buffers can be added where you say, but they are
> added to the tail. So the order of flushed data is retained.

They are added to the tail only if the tail is non-NULL.

And buf.tail, in turn, is protected by the TTY_FLUSHING bit.

And look what happens to TTY_FLUSHING if flush_to_ldisc() is called by 
multiple contexts - it doesn't nest right. The inner "flush_to_ldisc()" 
will clear the bit (your "nothing is done" case).

Now, I agree that we can solve things differently. We could, for example, 
get rid of TTY_FLUSHING entirely. If you want to keep the crazy "head = 
NULL" special case, we could basically replace all tests of TTY_FLUSHING 
with "tty->buf.tail && !tty->buf.head" instead, and use _that_ as a "the 
TTY is in the middle of a flush" operation. That should be 100% equivalent 
to my patch.

I do object to the whole crazy subtle TTY locking. I'm convinced it's 
wrong, and I'm convinced it's wrong exactly _because_ it tries to be so 
subtle and does non-obvious things.

That's why my patch also changed the whole loop logic: it's not subtle any 
more. Not only did I make TTY_FLUSHING nest correctly, I also stopped 
playing games with buf.head: it's now purely a list, rather than "a list 
and a failed attempt to lock".

And no, I'm not sure my patch helps. I'd have expected 
'tty_buffer_flush()' to be something very rare, for example. But I also 
didn't really check if we may do it some other way.

But I _am_ sure that it makes the code a whole lot more straightforward. 
Bits that say "we're busy flushing" suddenly actually act that way, and 
pointers that say "this is the head of the buffers" also act that wy.

			Linus
