From: Benjamin Herrenschmidt <benh-XVmvHMARGAS8U2dJNN8I7kB+6BGkLq7r@public.gmane.org>
Subject: Re: Characters vanishing in the tty layer? (maybe related to [Bug
 #14388] keyboard under X with 2.6.31)
Date: Tue, 20 Oct 2009 09:31:31 +0900
Message-ID: <1255998691.2232.4.camel@pasglop>
References: <1255501294.21962.24.camel@concordia>
	 <alpine.LFD.2.01.0910140748420.6146@localhost.localdomain>
	 <1255934287.4192.125.camel@concordia>
	 <alpine.LFD.2.00.0910200245330.13080@eeepc.linux-foundation.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.LFD.2.00.0910200245330.13080-OZUqEyPC5NRQetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: Michael Ellerman <michael-Gsx/Oe8HsFggBc27wqDAHg@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Michael Neuling <mikey-/owAOxkjmzZAfugRpC6u6w@public.gmane.org>

On Tue, 2009-10-20 at 03:09 +0900, Linus Torvalds wrote:
> 
> 
> > It's a bit unfortunate that n_tty_set_room() lies about the available
> > space when icanon = 1, but it makes sense in order to handle erase. It
> > would be nice if n_tty_receive_buf() returned a status to
> > flush_to_disc() to say "actually I could only fit X chars after all,
> > please take them back" - but I don't grok how that would play with all
> > the other logic in there.
> 
> Yeah, I don't think that is even worth it. The thing is, we do have to 
> start dropping characters at some point,

Do we ? IE, if we could push the flow control back up to hvc_console,
telling it how many chars we -really- could put in instead of dropping
anything, the hvc_console back end can then stop fetching from the
hypervisor, which would for most cases of virtual consoles push the flow
control all the way to the client terminal and thus not lose anything.

I haven't looked at the code in details and I may well be missing
something important, of course, and I agree that if there's no new line
we do have to impose a limit to our line buffer.

>  so trying to extend the non-drop 
> case just moves it somewhere else. If you are in canon mode, and the line 
> is longer than <some-number-that-happens-to-be-4kB>, you're basically 
> screwed.

Right.

 .../...

> I wonder a bit what in your particular environment makes this problem show 
> up, but I assume that your simulation environment ends up just blindly 
> stuffing the tty buffers through the virtual console, so you basically 
> have "simulated typing" that was (a) started long before the reader was 
> interested in accepting it and (b) was a huge dump rather than what any 
> real load would be.

Yes pretty much

> But if you change n_tty_set_termios() to count newlines when it sets 
> icanon, you might get the behaviour you want, and it would seem to me to 
> be an improvement over what we have now, so I wouldn't object to it, even 
> if I suspect nobody else has ever cared, and would ever care in the 
> future. 

Cheers,
Ben.

