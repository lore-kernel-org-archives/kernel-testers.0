From: Jesse Barnes <jbarnes@virtuousgeek.org>
Subject: Re: [Bug #12337] ~100 extra wakeups reported by powertop
Date: Tue, 24 Feb 2009 08:24:31 -0800
Message-ID: <200902240824.32155.jbarnes@virtuousgeek.org>
References: <819821.83409.qm@web53303.mail.re2.yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1758479AbZBXQYv@vger.kernel.org>
In-Reply-To: <819821.83409.qm@web53303.mail.re2.yahoo.com>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: luis6674@yahoo.com
Cc: Eric Anholt <eric@anholt.net>, Nick Piggin <nickpiggin@yahoo.com.au>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, "Rafael J. Wysocki" <rjw@sisk.pl>, Kernel Testers List <kernel-testers@vger.kernel.org>

On Tuesday, February 24, 2009 5:50:34 am Alberto Gonzalez wrote:
> --- On Tue, 2/24/09, Nick Piggin <nickpiggin@yahoo.com.au> wrote:
> > > I really wish I could do more, but learning to compile
> >
> > a custom kernel for
> >
> > > my hardware and do a git bisect is something I just
> >
> > can't afford now. If
> >
> > > relevant people try to reproduce it but can't, and
> >
> > say only possible
> >
> > > solution would be for me to bisect it I guess I could
> >
> > try to give it a go
> >
> > > when I get some spare time.
> >
> > Fair enough. Reporting a problem is always very
> > appreciated.
> >
> > Pinging Eric and Jesse ;)
>
> Thank you Nick.
>
> Since Arch Linux is not popular among kernel developers I just tested
> Fedora 10 Live-CD (KDE) and I can reproduce the exact same problem, even if
> Fedora 10 has kernel 2.6.27 and for me the problem appeared in .28 (but I
> guess Fedora adds many patches, so probably the "guilty" commit was
> backported to 2.6.27.5-117-FC10-i686).
>
> Steps:
> - Boot into Fedora 10 Live CD (obviously, into the default graphical mode)
> - Install Powertop (yum install powertop) and run it
> - I get about 60 wakeups per second from i915@pci.... leaving the system
> idle - Switch to console and back to X. The wakeups are gone.

Ah ok, it sounds like you're getting vblank interrupts at startup time, but 
once you VT switch the kernel figures out that you don't need them, so it 
disables them.  I think this is a bug in the 2D driver; it has an ioctl it 
uses when doing modesetting which doubles as a "disabling the irq is ok" 
signal, but we call it at a time when the corresponding pipe is off, so the 
kernel ignores the call.

Can you file a bug for this at bugs.freedesktop.org?  Is it easy for you to 
rebuild & test xf86-video-intel driver patches?

Thanks,
-- 
Jesse Barnes, Intel Open Source Technology Center
