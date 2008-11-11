From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: [Bug #11875] radeonfb lockup in .28-rc (bisected)
Date: Mon, 10 Nov 2008 18:47:23 -0800 (PST)
Message-ID: <alpine.LFD.2.00.0811101822350.3468@nehalem.linux-foundation.org>
References: <YrUCLn0F-xH.A.fhE.E4zFJB@chimera>  <wnN9HICUAgP.A._d.f5zFJB@chimera> <1226295985.7731.7.camel@pasglop>  <jetzafiad4.fsf@sykes.suse.de> <1226353979.7530.8.camel@pasglop>  <jefxlzi2x0.fsf@sykes.suse.de> <1226360094.7530.18.camel@pasglop> 
 <je1vxji1br.fsf@sykes.suse.de> <1226368174.7530.47.camel@pasglop>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1226368174.7530.47.camel@pasglop>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Benjamin Herrenschmidt <benh-XVmvHMARGAS8U2dJNN8I7kB+6BGkLq7r@public.gmane.org>
Cc: Andreas Schwab <schwab-l3A5Bk7waGM@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, "David S. Miller" <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, James Cloos <cloos-GRsvFm/Gh/pBDgjK7y7TUQ@public.gmane.org>, Paul Collins <paul-dsjeNyW6Qm/D+ROgJ3VA+kB+6BGkLq7r@public.gmane.org>



On Tue, 11 Nov 2008, Benjamin Herrenschmidt wrote:
> 
> In any case, I doesn't seem to be directly related to those radeonfb
> changes, though a clash with X like that is indeed more likely to
> actually happen if radeonfb relies more heavily on acceleration.

Just a silly question, without actually looking at the code - since you 
now do acceleration in radeonfb, do you wait for everything to drain 
before you switch consoles? 

There could be races that depend on timing, where perhaps X is unhappy 
about being entered with the acceleration engine busy, or conversely the 
radeonfb code is unhappy about perhaps some still-in-progress X thing that 
hasn't been synchronously waited for..

Before, radeonfb_imageblit() would always end up doing a 
"radeon_engine_idle()", so in practice, I think just about any fbcon 
access ended up idling the engine. Now, we can probably do a lot more 
without syncronizing - maybe there's insufficient synchronization at the 
switch-over from X to text-mode or vice versa?

		Linus
