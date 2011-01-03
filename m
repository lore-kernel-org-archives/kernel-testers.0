From: Paul Rolland (=?UTF-8?B?44Od44O844Or44O744Ot44Op44Oz?=) 
	<rol-fjEKYshTNZ1eoWH0uzbU5w@public.gmane.org>
Subject: Re: [Bug #22542] [2.6.37-rc1] drm:i195 errors
Date: Mon, 3 Jan 2011 09:10:55 +0100
Message-ID: <20110103091055.600c72d5@tux.DEF.witbe.net>
References: <96DQe4a_2tH.A.4RE.497GNB@chimera>
	<sV7shrPOroO.A.3WH.nA8GNB@chimera>
	<20101231113021.1f086baa@tux.DEF.witbe.net>
	<201012311647.24673.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <201012311647.24673.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Dave Airlie <airlied-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Keith Packard <keithp-aN4HjG94KOLQT0dZR+AlfA@public.gmane.org>, rol-fjEKYshTNZ1eoWH0uzbU5w@public.gmane.org

Hello Rafael,

On Fri, 31 Dec 2010 16:47:24 +0100
"Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> On Friday, December 31, 2010, Paul Rolland wrote:
> > Hello,
> > 
> > I'm now running 2.6.37-rc8, and I still have :
> > Dec 31 11:03:10 tux kernel: [drm:i915_gem_mmap_gtt_ioctl] *ERROR*
> > Attempting to mmap a purgeable buffer
> > 
> > as well as :
> > 
> > Dec 31 10:44:53 tux kernel: [drm:intel_panel_get_max_backlight] *ERROR*
> > fixme: max PWM is zero. Dec 31 10:49:34 tux kernel:
> > [drm:intel_panel_get_max_backlight] *ERROR* fixme: max PWM is zero.
> 
> There were some last-minute fixes related to i915 added to the Linus' tree
> after 2.6.37-rc8.  Perhaps you can give them a try?

OK, currently running : 
[root@tux ~]# uname -a
Linux tux.DEF.witbe.net 2.6.37-rc8-00014-g3643e0e #1 SMP Sun Jan 2 16:25:04 CET 2011 x86_64 x86_64 x86_64 GNU/Linux

and I've seen that too :
Jan  3 08:27:30 tux kernel: [drm:i915_gem_mmap_gtt_ioctl] *ERROR* Attempting to mmap a purgeable buffer
Jan  3 08:27:30 tux kernel: [drm:i915_gem_mmap_gtt_ioctl] *ERROR* Attempting to mmap a purgeable buffer
Jan  3 08:27:30 tux kernel: [drm:i915_gem_mmap_gtt_ioctl] *ERROR* Attempting to mmap a purgeable buffer
Jan  3 08:27:30 tux kernel: [drm:i915_gem_mmap_gtt_ioctl] *ERROR* Attempting to mmap a purgeable buffer

So, two possibilities :
 - 2.6.37-rc8-00014-g3643e0e is not what you wanted me to test,
 - the problem's still there.

Best,
Paul

-- 
Paul Rolland                                E-Mail : rol(at)witbe.net
CTO - Witbe.net SA                          Tel. +33 (0)1 47 67 77 77
Les Collines de l'Arche                     Fax. +33 (0)1 47 67 77 99
F-92057 Paris La Defense                    RIPE : PR12-RIPE

LinkedIn : http://www.linkedin.com/in/paulrolland
Skype    : rollandpaul

"I worry about my child and the Internet all the time, even though she's
too young to have logged on yet. Here's what I worry about. I worry that 10
or 15 years from now, she will come to me and say 'Daddy, where were you
when they took freedom of the press away from the Internet?'"
--Mike Godwin, Electronic Frontier Foundation 

