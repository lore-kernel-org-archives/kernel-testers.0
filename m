From: Benjamin Herrenschmidt <benh-XVmvHMARGAS8U2dJNN8I7kB+6BGkLq7r@public.gmane.org>
Subject: Re: [Bug #11875] radeonfb lockup in .28-rc (bisected)
Date: Tue, 11 Nov 2008 14:21:02 +1100
Message-ID: <1226373662.7530.76.camel@pasglop>
References: <YrUCLn0F-xH.A.fhE.E4zFJB@chimera>
	 <wnN9HICUAgP.A._d.f5zFJB@chimera> <1226295985.7731.7.camel@pasglop>
	 <jetzafiad4.fsf@sykes.suse.de> <1226353979.7530.8.camel@pasglop>
	 <jefxlzi2x0.fsf@sykes.suse.de> <1226360094.7530.18.camel@pasglop>
	 <je1vxji1br.fsf@sykes.suse.de> <1226368174.7530.47.camel@pasglop>
	 <alpine.LFD.2.00.0811101822350.3468@nehalem.linux-foundation.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.LFD.2.00.0811101822350.3468-nfNrOhbfy2R17+2ddN/4kux8cNe9sq/dYPYVAmT7z5s@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: Andreas Schwab <schwab-l3A5Bk7waGM@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, "David S. Miller" <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, James Cloos <cloos-GRsvFm/Gh/pBDgjK7y7TUQ@public.gmane.org>, Paul Collins <paul-dsjeNyW6Qm/D+ROgJ3VA+kB+6BGkLq7r@public.gmane.org>

On Mon, 2008-11-10 at 18:47 -0800, Linus Torvalds wrote:
> 
> On Tue, 11 Nov 2008, Benjamin Herrenschmidt wrote:
> > 
> > In any case, I doesn't seem to be directly related to those radeonfb
> > changes, though a clash with X like that is indeed more likely to
> > actually happen if radeonfb relies more heavily on acceleration.
> 
> Just a silly question, without actually looking at the code - since you 
> now do acceleration in radeonfb, do you wait for everything to drain 
> before you switch consoles? 

radeonfb has been doing acceleration for some time :-) Just not color
expansion, only blits and solid fills (so basically scrolling). That is
a lot less common though and thus it's possible that existing races
didn't show up until now.

It does drain the engine in various cases, typically mode change,
blanking, sync callback. fbcon core should at least sync if not blank
when switching to KD_GRAPHICS (or at least used to, I need to double
check). I have additional guards also that disable use of the engine
when sleeping.

> There could be races that depend on timing, where perhaps X is unhappy 
> about being entered with the acceleration engine busy, or conversely the 
> radeonfb code is unhappy about perhaps some still-in-progress X thing that 
> hasn't been synchronously waited for..

Yes. From what's been reported, the more likely thing would be a race
when switching away from X.

> Before, radeonfb_imageblit() would always end up doing a 
> "radeon_engine_idle()", so in practice, I think just about any fbcon 
> access ended up idling the engine. Now, we can probably do a lot more 
> without syncronizing - maybe there's insufficient synchronization at the 
> switch-over from X to text-mode or vice versa?

Switch over from X should restore KD_TEXT which should turn to a call to
set_par() that idles the engine before anything gets written to the
screen, but those code path are intricated between the VT code and fbcon
and things may well be subtely broken. I'll dig later today after I'm
done with some other emergency.

At one point, I fixed a crapload of VT bugs where things were done
without any locking, nowadays, everything should pretty much be covered
by the console semaphore, but maybe there's still a problem there.
Another area to look at is X itself. I've had problems with X (or the
DRM) still whacking the card after handing back the console to the
kernel in the past, so it wouldn't surprise me if there was something
bogus there too.

I also had problems with fbcon trying to draw before it re-initialized
the card (ie, it -should- call set_par before any new draw operation
when switching back from KD_GRAPHICS, if not, we don't properly get to
reconfigure the engine before we try to use it, which can be fatal), but
those were fixed last time I looked.

Anyway, I'll dig and let you know what I find.

Cheers,
Ben.
