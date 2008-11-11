From: Benjamin Herrenschmidt <benh-XVmvHMARGAS8U2dJNN8I7kB+6BGkLq7r@public.gmane.org>
Subject: Re: [Bug #11875] radeonfb lockup in .28-rc (bisected)
Date: Tue, 11 Nov 2008 12:49:34 +1100
Message-ID: <1226368174.7530.47.camel@pasglop>
References: <YrUCLn0F-xH.A.fhE.E4zFJB@chimera>
	 <wnN9HICUAgP.A._d.f5zFJB@chimera> <1226295985.7731.7.camel@pasglop>
	 <jetzafiad4.fsf@sykes.suse.de> <1226353979.7530.8.camel@pasglop>
	 <jefxlzi2x0.fsf@sykes.suse.de> <1226360094.7530.18.camel@pasglop>
	 <je1vxji1br.fsf@sykes.suse.de>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <je1vxji1br.fsf-+JVCjXrnBTholqkO4TVVkw@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Andreas Schwab <schwab-l3A5Bk7waGM@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, "David S. Miller" <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, James Cloos <cloos-GRsvFm/Gh/pBDgjK7y7TUQ@public.gmane.org>, Paul Collins <paul-dsjeNyW6Qm/D+ROgJ3VA+kB+6BGkLq7r@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>

On Tue, 2008-11-11 at 00:54 +0100, Andreas Schwab wrote:
> 
> > Can you describe your problem more precisely ?
> 
> It crashes during suspend (after the console was switched away from X),
> but I can only see a frame buffer with apparently random contents when
> it happens.  When suspend works then those random frame buffer contents
> are only briefly visible before the screen is cleared.

Does it actually switches away from X ?

IE. You see the console before the crap on console or not ?

I've seen what you describe happening when doing snooze -f (direct
kernel ioctl) straight from within X. It seems to me that the problem
was that for some reason it didn't switch the console, which would
definitely make it crash. I need to double check what's up, it's
possible that the kernel fails to switch it properly or fails to wait
for X to ack the switch.

In any case, I doesn't seem to be directly related to those radeonfb
changes, though a clash with X like that is indeed more likely to
actually happen if radeonfb relies more heavily on acceleration.

I'll have a look later today at the console switch from X in the kernel
see if it's been broken in a way or another.

Note: I just did some tests using both echo "mem" >/sys/power/state and
snooze -f and it worked fine. IE, the console switch away from X worked.
So while I think I observed your problem once, I also cannot reproduce
it now.

I wonder if there's a race condition in the VT switch. It's possible
that it could be yet another case of X whacking the chip after it has
effectively relinguished control of the VT to the kernel, or it could be
a kernel race.

Cheers,
Ben.

