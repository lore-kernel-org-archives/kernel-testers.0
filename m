From: Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>
Subject: Re: [Bug #11382] e1000e: 2.6.27-rc1 corrupts EEPROM/NVM
Date: Thu, 25 Sep 2008 12:36:09 -0700
Message-ID: <200809251236.12287.jbarnes@virtuousgeek.org>
References: <20080923.150722.141587696.davem@davemloft.net> <200809251156.10648.jbarnes@virtuousgeek.org> <alpine.LNX.1.10.0809252218470.3389@pegasus.suse.cz>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.LNX.1.10.0809252218470.3389-JCEl3tv+2Z8CVLCxKZUutA@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>
Cc: Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>, airlied-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>, davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org, jeffrey.t.kirsher-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, david.vrabel-kQvG35nSl+M@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, chrisl-pghWNbHTmq7QT0dZR+AlfA@public.gmane.org, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, jesse.brandeburg-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org

On Thursday, September 25, 2008 1:22 pm Jiri Kosina wrote:
> On Thu, 25 Sep 2008, Jesse Barnes wrote:
> > > Yes, I think that xorg/xorg i915 driver/libdrm/GEM/whatever are the
> > > biggest suspect currently, according to the data that has been
> > > gathered so far.
> >
> > We have confirmation that this isn't GEM related; according to the
> > Novell bug at https://bugzilla.novell.com/show_bug.cgi?id=425480 people
> > have hit the problem with kernels w/o GEM.
>
> But the xorg intel driver shipped with xorg 7.4 already has support for
> GEM, right? So there could still be some bug in the GEM-aware driver
> running on non-GEM kernel, can't it?

X.Org 7.4 came with xf86-video-intel 2.4.2 right?  That doesn't have any GEM 
bits in it either.

However, the "Factory" log at #425480 *does* indicate that a GEM aware 2D 
driver was loaded (the "[drm:i915_getparam] *ERROR* Unknown parameter 5" 
message indicates as much), but the kernel was definitely not GEM aware 
otherwise the call would have succeeded.  So that rules out GEM proper, but 
it could still be a bug in one of the non-GEM paths in the experimental 
xf86-video-intel bits the various distros seem to be picking up.

> > That doesn't rule out i915 (though I don't think any changes have gone
> > in since 2.6.26 that would have caused this) or xf86-video-intel.  It's
> > possible that X is getting confused about BAR mappings somehow,
> > resulting in a clobbered e1000e NVRAM, but why would the kernel version
> > matter in that case?  The only thing that comes to mind would be PAT...
>
> Yes, booting with 'nopat' is on my list to try immediately after we are
> able to recover the corrupted EEPROM.
>
> > Recent versions of the X drivers (using recent libpciaccess code) will
> > try to map the resourceN_wc file in sysfs.  It's possible that the map
> > size we end up using is wrong, leading to the situation Dave described
> > earlier where we map too much MMIO space.
>
> This we could catch easily even with strace, right?

Yep, that one's easy to catch.

-- 
Jesse Barnes, Intel Open Source Technology Center
