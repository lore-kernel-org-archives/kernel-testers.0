From: Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>
Subject: Re: [Bug #11382] e1000e: 2.6.27-rc1 corrupts EEPROM/NVM
Date: Thu, 25 Sep 2008 11:56:08 -0700
Message-ID: <200809251156.10648.jbarnes@virtuousgeek.org>
References: <20080923.150722.141587696.davem@davemloft.net> <200809250401.54818.elendil@planet.nl> <Pine.LNX.4.64.0809251921340.18801@twin.jikos.cz>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <Pine.LNX.4.64.0809251921340.18801-1ReQVI26iDCaZKY3DrU6dA@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>
Cc: Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>, airlied-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>, davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, jeffrey.t.kirsher-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, david.vrabel-kQvG35nSl+M@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, chrisl-pghWNbHTmq7QT0dZR+AlfA@public.gmane.org, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, jesse.brandeburg-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org

On Thursday, September 25, 2008 10:24 am Jiri Kosina wrote:
> On Thu, 25 Sep 2008, Frans Pop wrote:
> > Extra datapoint. As far as I've seen this problem has not yet been
> > reported by any people running Debian. This could point to X.Org as
> > Debian currently has 7.3 while I think the reports so far have been with
> > 7.4.
>
> Yes, I think that xorg/xorg i915 driver/libdrm/GEM/whatever are the
> biggest suspect currently, according to the data that has been gathered so
> far.

We have confirmation that this isn't GEM related; according to the Novell bug 
at https://bugzilla.novell.com/show_bug.cgi?id=425480 people have hit the 
problem with kernels w/o GEM.

That doesn't rule out i915 (though I don't think any changes have gone in 
since 2.6.26 that would have caused this) or xf86-video-intel.  It's possible 
that X is getting confused about BAR mappings somehow, resulting in a 
clobbered e1000e NVRAM, but why would the kernel version matter in that case?  
The only thing that comes to mind would be PAT...

Recent versions of the X drivers (using recent libpciaccess code) will try to 
map the resourceN_wc file in sysfs.  It's possible that the map size we end 
up using is wrong, leading to the situation Dave described earlier where we 
map too much MMIO space.

> Still, what confuses me a little bit -- the EEPROM of the card is set to
> all 0xff, once the corruption happens. Isn't that a quite a coincidence,
> that bytes representing "nothing" in this context are used?

Presumably one has to write all ones to the EEPROM BAR of the e1000 device to 
see that pattern?  Or is there some way of configuring the EEPROM such that 
it'll fail to respond to read cycles resulting in all ones for every read 
back (i.e. target abort)?

Jesse
