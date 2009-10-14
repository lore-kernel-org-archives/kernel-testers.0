From: Paul Fulghum <paulkf-CZzk0lvu1V9l57MIdRCFDg@public.gmane.org>
Subject: Re: [Bug #14388] keyboard under X with 2.6.31
Date: Tue, 13 Oct 2009 19:08:52 -0500
Message-ID: <1255478932.19056.24.camel@localhost.localdomain>
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
	 <4AD4F548.2030506@microgate.com>
	 <alpine.LFD.2.01.0910131514100.3404@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.LFD.2.01.0910131514100.3404-bi+AKbBUZKY6gyzm1THtWbp2dZbC/Bob@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: Boyan <btanastasov-/E1597aS9LT10XsdtD+oqA@public.gmane.org>, "=?ISO-8859-1?Q?=22Fr=E9d=E9ric?= L. W. Meunier\"" <fredlwm-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "Justin P. Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Nix <nix-dKoSMcxRz+Te9xe1eoZjHA@public.gmane.org>, Alan Cox <alan-qBU/x9rampVanCEyBjwyrvXRex20P6io@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Dmitry Torokhov <dmitry.torokhov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ed Tomlinson <edt-Yad3+ZauZac@public.gmane.org>, OGAWA Hirofumi <hirofumi-UIVanBePwB70ZhReMnHkpc8NsWr+9BEh@public.gmane.org>

On Tue, 2009-10-13 at 15:42 -0700, Linus Torvalds wrote:

> They are added to the tail only if the tail is non-NULL.

True

tail is null only after:
* initialization - no flush_to_ldisc in progress
* tty_flush_buffer - protected from flush_to_ldisc by TTY_FLUSHING

flush_to_ldisc does not currently set tail to null after
flushing data from the last buffer. Each buffer is marked
individually as consumed so no more data will be added to it.
The buffer is marked empty again as it is recycled.

However, looking at this does reveal a problem.

If an individual buffer of 512 bytes or larger gets into the
free and full lists, that buffer is kfreed in tty_buffer_free()
instead of being recycled. That means that tty->buf.tail can
point to a freed block of memory, at least until another buffer
is allocated.

If that buffer is written to while in this state, the fields
will become incoherent and may result in more data being added to it.

I think the patch below fixes this problem. It sets tail to null
when all buffers are flushed. This is only executed after the buffer
has been passed to the ldisc and the spinlock is held so there is
no place for more data to be added incorrectly. I will test it myself
tomorrow when I get back to the office.

> I do object to the whole crazy subtle TTY locking. I'm convinced it's 
> wrong, and I'm convinced it's wrong exactly _because_ it tries to be so 
> subtle and does non-obvious things.

I understand. The patch below should fix the hole above, and I'm not
aware of any other hole. But I you prefer reworking the locking
to make things more obvious, I have no objection.

--- a/drivers/char/tty_buffer.c	2009-09-09 17:13:59.000000000 -0500
+++ b/drivers/char/tty_buffer.c	2009-10-13 18:34:34.000000000 -0500
@@ -423,6 +423,8 @@ static void flush_to_ldisc(struct work_s
 					break;
 				tbuf = head;
 				head = head->next;
+				if (!head)
+					tty->buf.tail = NULL;
 				tty_buffer_free(tty, tbuf);
 				continue;
 			}

