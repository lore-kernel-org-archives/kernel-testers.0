From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: [Bug #14388] keyboard under X with 2.6.31
Date: Tue, 13 Oct 2009 07:39:31 -0700 (PDT)
Message-ID: <alpine.LFD.2.01.0910130721530.3438@localhost.localdomain>
References: <56acieJJ2fF.A.nEB.Hzl0KB@chimera> <L6tb-VyKHZK.A.PaB.Ozl0KB@chimera> <C4F8B19E-F4B4-47F3-AE5B-4581C8E3F3AE@gmail.com> <87ljjgfcbu.fsf@spindle.srvr.nix> <alpine.LFD.2.01.0910121703390.3438@localhost.localdomain> <alpine.LFD.2.01.0910122004200.3438@localhost.localdomain>
 <20091013113232.384b2432@lxorguk.ukuu.org.uk>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20091013113232.384b2432-qBU/x9rampVanCEyBjwyrvXRex20P6io@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Alan Cox <alan-qBU/x9rampVanCEyBjwyrvXRex20P6io@public.gmane.org>
Cc: Nix <nix-dKoSMcxRz+Te9xe1eoZjHA@public.gmane.org>, Paul Fulghum <paulkf-CZzk0lvu1V9l57MIdRCFDg@public.gmane.org>, "Justin P. Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Boyan <btanastasov-/E1597aS9LT10XsdtD+oqA@public.gmane.org>, Dmitry Torokhov <dmitry.torokhov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ed Tomlinson <edt-Yad3+ZauZac@public.gmane.org>, =?ISO-8859-15?Q?Fr=E9d=E9ric_L=2E_W=2E_Meunier?= <fredlwm-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, OGAWA Hirofumi <hirofumi-UIVanBePwB70ZhReMnHkpc8NsWr+9BEh@public.gmane.org>



On Tue, 13 Oct 2009, Alan Cox wrote:
> 
> There is a simple reason the locking is sufficient. If you can call the
> function from two places at once in your serial driver at the same you've
> scrambled the data order so you've already lost.

Umm. No, Alan.

You also can race with:

 - whoever is _reading_ the buffer, and due to memory ordering may see the 
   update to the buffer length _before_ it actually sees the data itself. 
   That spinlock does all the memory ordering too.

 - scrambling the data order with two writers is certainly less annoying 
   than potentially screwing up ->used entirely, and having the memcpy's 
   overflow the buffer. Both writers may have decided that there is enough 
   room for each one - but that does not mean that there is enough room 
   for _both_.

Now, I do agree that generally there should be locking at a higher level, 
and you should never see two concurrent writers. But even if the locking 
is only for reading, the old locking is simply _wrong_.

> >   pointless: they then call tty_insert_flip_string(), which means that the 
> >   tty_buffer_request_room() call was totally redundant ]
> 
> It's a performance tweak. With a 3G USB modem or similar device running
> at 20Mbits or more being able to generate one allocation per chunk
> received for DMA made a measurable performance difference on some
> platforms. 

Have you even _read_ the code, Alan?

It's not a f*cking performance tweak, and you're ludicrous to claim it is. 
It's pointless, and it's making the code _slower_ rather than faster.

Lookie here, Alan - the common sequence is crap like this:

	tty_buffer_request_room(tty, buf->size);
	tty_insert_flip_string(tty, buf->base, buf->size);

and anybody who claims that is a "performance tweak" doesn't know what the 
hell he is talking about.

Look again.

The first thing that tty_insert_flup_string() does is to re-do the same 
tty_buffer_request_room() call. 

Performance tweak? No. Most of them are stupid, pointless, and worthless. 
Many of them do it for a single character too.

Not all, no. One or two seem to do one tty_buffer_request_room() call, and 
then some one-byte-at-a-time thing, but quite frankly, those are sure as 
hell not going to push lots of data quickly that way either.

Maybe there is some driver where there's a point to it, but from a quick 
grep, I couldn't find any.

			Linus
