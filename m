From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #11988] Eliminate recursive mutex in compat fb ioctl path
Date: Sat, 15 Nov 2008 12:51:37 +0100
Message-ID: <200811151251.38492.rjw@sisk.pl>
References: <YrUCLn0F-xH.A.fhE.E4zFJB@chimera> <wnN9HICUAgP.A.Z-E.Q4zFJB@chimera> <Pine.LNX.4.64.0811141549140.5955@vixen.sonytel.be>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <Pine.LNX.4.64.0811141549140.5955-DVqXPGhgXSn9uFGNBm7GzQ@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Geert Uytterhoeven <Geert.Uytterhoeven-osDt5Q4Chk1BDgjK7y7TUQ@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Keith Packard <keithp-aN4HjG94KOLQT0dZR+AlfA@public.gmane.org>

On Friday, 14 of November 2008, Geert Uytterhoeven wrote:
> On Sun, 9 Nov 2008, Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.27.  Please verify if it still should be listed and let me know
> > (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11988
> > Subject		: Eliminate recursive mutex in compat fb ioctl path
> > Submitter	: Keith Packard <keithp-aN4HjG94KOLQT0dZR+AlfA@public.gmane.org>
> > Date		: 2008-11-03 7:06 (7 days old)
> > References	: http://marc.info/?l=linux-kernel&m=122569604828448&w=4
> > Handled-By	: Keith Packard <keithp-aN4HjG94KOLQT0dZR+AlfA@public.gmane.org>
> > 		  Geert Uytterhoeven <Geert.Uytterhoeven-osDt5Q4Chk1BDgjK7y7TUQ@public.gmane.org>
> > Patch		: http://marc.info/?l=linux-kernel&m=122569604828448&w=4
> > 		  http://lkml.org/lkml/2008/10/31/162
> 
> Fixed in mainline.
> 
> commit a684e7d33096892093456dd56a582cfc3bfad648
> Author: Geert Uytterhoeven <Geert.Uytterhoeven-osDt5Q4Chk1BDgjK7y7TUQ@public.gmane.org>
> Date:   Thu Nov 6 12:53:37 2008 -0800
> 
>     fbdev: fix fb_compat_ioctl() deadlocks
> 
>     commit 3e680aae4e53ab54cdbb0c29257dae0cbb158e1c ("fb: convert
>     lock/unlock_kernel() into local fb mutex") introduced several deadlocks
>     in the fb_compat_ioctl() path, as mutex_lock() doesn't allow recursion,
>     unlike lock_kernel().  This broke frame buffer applications on 64-bit
>     systems with a 32-bit userland.
>     
>     commit 120a37470c2831fea49fdebaceb5a7039f700ce6 ("framebuffer compat_ioctl
>     deadlock") fixed one of the deadlocks.
>     
>     This patch fixes the remaining deadlocks:
>       - Revert commit 120a37470c2831fea49fdebaceb5a7039f700ce6,
>       - Extract the core logic of fb_ioctl() into a new function do_fb_ioctl(),
>       - Change all callsites of fb_ioctl() where info->lock is already held to
>         call do_fb_ioctl() instead,
>       - Add sparse annotations to all routines that take info->lock.
>     
>     Signed-off-by: Geert Uytterhoeven <Geert.Uytterhoeven-osDt5Q4Chk1BDgjK7y7TUQ@public.gmane.org>
>     Cc: Mikulas Patocka <mpatocka-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
>     Cc: Krzysztof Helt <krzysztof.h1-5tc4TXWwyLM@public.gmane.org>
>     Cc: Alan Cox <alan-qBU/x9rampVanCEyBjwyrvXRex20P6io@public.gmane.org>
>     Signed-off-by: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
>     Signed-off-by: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>

Thanks, closed.

Rafael
