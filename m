From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #22542] [2.6.37-rc1] drm:i195 errors
Date: Fri, 31 Dec 2010 16:47:24 +0100
Message-ID: <201012311647.24673.rjw@sisk.pl>
References: <96DQe4a_2tH.A.4RE.497GNB@chimera> <sV7shrPOroO.A.3WH.nA8GNB@chimera> <20101231113021.1f086baa@tux.DEF.witbe.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20101231113021.1f086baa-Hu5lHNoInTV+MQpiyFM1nV6hYfS7NtTn@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: "Paul Rolland (=?utf-8?b?44Od44O844Or44O744Ot44Op44Oz?=)" <rol-fjEKYshTNZ1eoWH0uzbU5w@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Dave Airlie <airlied-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Keith Packard <keithp-aN4HjG94KOLQT0dZR+AlfA@public.gmane.org>

On Friday, December 31, 2010, Paul Rolland wrote:
> Hello,
> 
> I'm now running 2.6.37-rc8, and I still have :
> Dec 31 11:03:10 tux kernel: [drm:i915_gem_mmap_gtt_ioctl] *ERROR* Attempting to mmap a purgeable buffer
> 
> as well as :
> 
> Dec 31 10:44:53 tux kernel: [drm:intel_panel_get_max_backlight] *ERROR* fixme: max PWM is zero.
> Dec 31 10:49:34 tux kernel: [drm:intel_panel_get_max_backlight] *ERROR* fixme: max PWM is zero.

There were some last-minute fixes related to i915 added to the Linus' tree
after 2.6.37-rc8.  Perhaps you can give them a try?

Rafael
