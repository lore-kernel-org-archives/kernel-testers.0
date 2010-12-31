From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Subject: Re: [Bug #22542] [2.6.37-rc1] drm:i195 errors
Date: Fri, 31 Dec 2010 10:52:48 -0500 (EST)
Message-ID: <alpine.DEB.2.00.1012311050530.3688@localhost6.localdomain6>
References: <96DQe4a_2tH.A.4RE.497GNB@chimera> <sV7shrPOroO.A.3WH.nA8GNB@chimera> <20101231113021.1f086baa@tux.DEF.witbe.net> <201012311647.24673.rjw@sisk.pl>
Mime-Version: 1.0
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <201012311647.24673.rjw@sisk.pl>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Paul Rolland <rol@witbe.net>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Florian Mickler <florian@mickler.org>, Dave Airlie <airlied@redhat.com>, Keith Packard <keithp@keithp.com>

On Fri, 31 Dec 2010, Rafael J. Wysocki wrote:

> On Friday, December 31, 2010, Paul Rolland wrote:
> > Hello,
> >
> > I'm now running 2.6.37-rc8, and I still have :
> > Dec 31 11:03:10 tux kernel: [drm:i915_gem_mmap_gtt_ioctl] *ERROR* Attempting to mmap a purgeable buffer
> >
> > as well as :
> >
> > Dec 31 10:44:53 tux kernel: [drm:intel_panel_get_max_backlight] *ERROR* fixme: max PWM is zero.
> > Dec 31 10:49:34 tux kernel: [drm:intel_panel_get_max_backlight] *ERROR* fixme: max PWM is zero.
>
> There were some last-minute fixes related to i915 added to the
> Linus' tree after 2.6.37-rc8.  Perhaps you can give them a try?

  if this is in any way related to various systems booting to a black
screen (as i described earlier), i built an absolutely up-to-date
kernel from the latest tree and that didn't solve the problem.  i'm
open to testing suggestions.

rday

-- 

========================================================================
Robert P. J. Day                               Waterloo, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================
