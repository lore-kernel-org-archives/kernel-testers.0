From: Paul Fulghum <paulkf-CZzk0lvu1V9l57MIdRCFDg@public.gmane.org>
Subject: Re: [Bug #14388] keyboard under X with 2.6.31
Date: Tue, 13 Oct 2009 10:08:51 -0500
Message-ID: <1255446531.3423.8.camel@x2.microgate.com>
References: <56acieJJ2fF.A.nEB.Hzl0KB@chimera>
	 <L6tb-VyKHZK.A.PaB.Ozl0KB@chimera>
	 <C4F8B19E-F4B4-47F3-AE5B-4581C8E3F3AE@gmail.com>
	 <87ljjgfcbu.fsf@spindle.srvr.nix>
	 <alpine.LFD.2.01.0910121703390.3438@localhost.localdomain>
	 <alpine.LFD.2.01.0910122004200.3438@localhost.localdomain>
	 <20091013113232.384b2432@lxorguk.ukuu.org.uk>
	 <alpine.LFD.2.01.0910130721530.3438@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.LFD.2.01.0910130721530.3438-bi+AKbBUZKY6gyzm1THtWbp2dZbC/Bob@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: Alan Cox <alan-qBU/x9rampVanCEyBjwyrvXRex20P6io@public.gmane.org>, Nix <nix-dKoSMcxRz+Te9xe1eoZjHA@public.gmane.org>, "Justin P. Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Boyan <btanastasov-/E1597aS9LT10XsdtD+oqA@public.gmane.org>, Dmitry Torokhov <dmitry.torokhov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ed Tomlinson <edt-Yad3+ZauZac@public.gmane.org>, "=?ISO-8859-1?Q?Fr=E9d=E9ric?= L. W. Meunier" <fredlwm-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, OGAWA Hirofumi <hirofumi-UIVanBePwB70ZhReMnHkpc8NsWr+9BEh@public.gmane.org>

On Tue, 2009-10-13 at 07:39 -0700, Linus Torvalds wrote:

> You also can race with:
> 
>  - whoever is _reading_ the buffer, and due to memory ordering may see the 
>    update to the buffer length _before_ it actually sees the data itself. 
>    That spinlock does all the memory ordering too.

The only reader is flush_to_ldisc() which operates on the
'commit' and 'read' fields of the buffer.

tty_prepare_xxx and tty_insert_xxx operate on the 'used'
field of the buffer

'commit' is updated with 'used' only under spinlock when
tty_flip_buffer_push() is called after the producer is
finished filling a buffer or in tty_buffer_request_room()
when allocating a new buffer.

--
Paul Fulghum
Microgate Systems, Ltd
