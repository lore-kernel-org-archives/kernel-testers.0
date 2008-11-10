From: Benjamin Herrenschmidt <benh-XVmvHMARGAS8U2dJNN8I7kB+6BGkLq7r@public.gmane.org>
Subject: Re: [Bug #11875] radeonfb lockup in .28-rc (bisected)
Date: Tue, 11 Nov 2008 10:34:54 +1100
Message-ID: <1226360094.7530.18.camel@pasglop>
References: <YrUCLn0F-xH.A.fhE.E4zFJB@chimera>
	 <wnN9HICUAgP.A._d.f5zFJB@chimera> <1226295985.7731.7.camel@pasglop>
	 <jetzafiad4.fsf@sykes.suse.de> <1226353979.7530.8.camel@pasglop>
	 <jefxlzi2x0.fsf@sykes.suse.de>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <jefxlzi2x0.fsf-+JVCjXrnBTholqkO4TVVkw@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Andreas Schwab <schwab-l3A5Bk7waGM@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, "David S. Miller" <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, James Cloos <cloos-GRsvFm/Gh/pBDgjK7y7TUQ@public.gmane.org>, Paul Collins <paul-dsjeNyW6Qm/D+ROgJ3VA+kB+6BGkLq7r@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>


> There seems to be some race involved here.  I cannot reproduce the
> problem ATM.

I wonder if it's related to the new acceleration at all then.

I've tried various suspend/resume cycles in straight console mode using
directly snooze -f (kernel ioctl) and from X using ubuntu intrepid and
gnome power manager and it worked fine on a 5,6 which should be fairly
similar to your 6,7 I think.

It's possible that there's yet another X related race though. I've seen
cases of X whacking the chip -after- it has religuished the console back
to the kernel (back to KD_TEXT) in the past which is very wrong, though
I didn't spot that during my testing, there could be some race lurking
there.

Can you describe your problem more precisely ? I didn't see (or forgot)
your initial report. Did it crash on suspend or wakeup ? what symptoms ?

Note also that on PowerBooks, there's a platform hook that allows
radeonfb to wake up the video chip _very_ early, thus allowing easier
debugging of the boot process, so even races like that on wakeup would
surprise me since we do wakup up the chip before we even get a chance to
schedule userspace again (in fact before we even bring back the L2
cache !)  

Cheers,
Ben.

