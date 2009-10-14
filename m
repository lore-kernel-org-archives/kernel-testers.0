From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: [Bug #14388] keyboard under X with 2.6.31
Date: Tue, 13 Oct 2009 18:05:47 -0700 (PDT)
Message-ID: <alpine.LFD.2.01.0910131804420.6146@localhost.localdomain>
References: <56acieJJ2fF.A.nEB.Hzl0KB@chimera>  <L6tb-VyKHZK.A.PaB.Ozl0KB@chimera>  <C4F8B19E-F4B4-47F3-AE5B-4581C8E3F3AE@gmail.com>  <87ljjgfcbu.fsf@spindle.srvr.nix>  <alpine.LFD.2.01.0910121703390.3438@localhost.localdomain> 
 <alpine.LFD.2.01.0910122004200.3438@localhost.localdomain>  <4AD3F769.5080405@gmail.com>  <alpine.LNX.2.01.0910130405200.9297@dyndns.pervalidus.net>  <4AD437F9.9020708@yahoo.co.uk>  <alpine.LFD.2.01.0910130745550.3438@localhost.localdomain> 
 <4AD4DE4C.4010402@yahoo.co.uk>  <alpine.LFD.2.01.0910131317360.26777@localhost.localdomain>  <4AD4F548.2030506@microgate.com>  <alpine.LFD.2.01.0910131514100.3404@localhost.localdomain> <1255478932.19056.24.camel@localhost.localdomain> <4AD51D6B.7010509@microgate.com>
 <alpine.LFD.2.01.0910131744590.3404@localhost.localdomain>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.LFD.2.01.0910131744590.3404-bi+AKbBUZKY6gyzm1THtWbp2dZbC/Bob@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Paul Fulghum <paulkf-CZzk0lvu1V9l57MIdRCFDg@public.gmane.org>
Cc: Boyan <btanastasov-/E1597aS9LT10XsdtD+oqA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Dmitry Torokhov <dmitry.torokhov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ed Tomlinson <edt-Yad3+ZauZac@public.gmane.org>, "OGAWA Hirofumi \"" <hirofumi-UIVanBePwB70ZhReMnHkpc8NsWr+9BEh@public.gmane.org>


Oops, you'll probably get this twice, because 'alpine' core-dumped on me 
and I'm not sure the first one actually made it out. 

		Linus

On Tue, 13 Oct 2009, Linus Torvalds wrote:
> 
> 
> On Tue, 13 Oct 2009, Paul Fulghum wrote:
> > 
> > This is correct, the last buffer is not passed to tty_buffer_free()
> > if it is the last in the list so tail is maintained.
> > There is no free space in it so no new data can be added.
> > There is no place where tail is null while the spinlock
> > is released in preparation for calling receive_buf.
> > I still can't spot any flaw in the current locking.
> 
> Do you even bother reading my emails?
> 
> Let me walk through an example of where the locking F*CKS UP, exactly 
> because it's broken.
> 
> 	thread1		thread2		thread3
> 
> 	flush_to_ldisc
> 	set_bit(TTY_FLUSHING)
> 	buf.head = NULL
> 	...
> 	..release lock..
> 	.. sleep in ->receive_buf ..
> 
> 			flush_to_ldisc
> 			set_bit(TTY_FLUSHING)
> 			.. head==NULL ..
> 			clear_bit(TTY_FLUSHING)
> 			.. release lock ..
> 
> 					tty_ldisc_flush()
> 					-> tty_buffer_flush()
> 					TTY_FLUSHING not set!
> 					-> __tty_buffer_flush()
> 					-> tty->buf.tail = NULL
> 
> and now you're screwed. See? You have both 'buf.tail' and 'buf.head' both 
> being NULL, and look what happens in that case 'tty_buffer_request_room()' 
> if some new data comes in? Right: it will add the buffer to both tail and 
> head.
> 
> And notice how 'thread1' is still inside flush_to_ldisc()! The buffer that 
> got added will be overwritten by the old one, and now tail and head no 
> longer match. Or another flush_to_ldisc() comes in, and now it won't be a 
> no-op any more, and it will find the new data, and run ->receive_buf 
> concurrently with the old receive_buf from thread1.
> 
> And the whole reason was that there were some very odd locking rules: 
> buf.head=NULL meant "don't flush", and "TTY_FLUSHING is set" meant "don't 
> clear 'buf.head'", and but the "don't flush" case still cleared 
> TTY_FLUSHING (after not flushing), and it all messed up.
> 
> I could just have fixed it (move the "clear_bit(TTY_FLUSHING)" but up, but 
> the fact is, once you fix that, it then becomes obvious that 
> "buf.head=NULL" really is the wrong thing to test in the first place, and 
> we should just use TTY_FLUSHING instead, and simply _remove_ the odd 
> "buf.head=NULL is special" case. Which is what my patch did
> 
> > Your statement that the locking is too clever/subtle is
> > clearly true since I am struggling to work this out again.
> 
> I have to say that the only case I could make up that is _clearly_ a bug 
> is the above very contrieved example. I don't really think something like 
> the above happens in reality. But it's an example of bad locking, and what 
> happens when the locking logic isn't obvious.
> 
> There may be other cases where the locking fails, and I just didn't find 
> them. 
> 
> Or the patch may simply not fix anything in practice, and nobody has ever 
> actually triggered the bad locking in real life. I dunno. I just do know 
> that the locking was too damn subtle.
> 
> Any time people do ad-hoc locking with "clever" schemes, it's almost 
> invariably buggy. So the rule is: just don't do that. Make the locking 
> rules "obvious".  Don't have subtle rules about "if head is NULL, then 
> we're not going to add any new buffers to it, except if tail is also 
> NULL". Because look above what happens, and see how complicated it was to 
> even see the bug.
> 
> 			Linus
> 
