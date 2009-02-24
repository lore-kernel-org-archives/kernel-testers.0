From: Alberto Gonzalez <luis6674@yahoo.com>
Subject: Re: [Bug #12337] ~100 extra wakeups reported by powertop
Date: Tue, 24 Feb 2009 09:04:52 -0800 (PST)
Message-ID: <405946.86220.qm@web53302.mail.re2.yahoo.com>
References: <200902240824.32155.jbarnes@virtuousgeek.org>
Reply-To: luis6674@yahoo.com
Mime-Version: 1.0
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1758678AbZBXRFK@vger.kernel.org>
In-Reply-To: <200902240824.32155.jbarnes@virtuousgeek.org>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Jesse Barnes <jbarnes@virtuousgeek.org>
Cc: Eric Anholt <eric@anholt.net>, Nick Piggin <nickpiggin@yahoo.com.au>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, "Rafael J. Wysocki" <rjw@sisk.pl>, Kernel Testers List <kernel-testers@vger.kernel.org>




--- On Tue, 2/24/09, Jesse Barnes <jbarnes@virtuousgeek.org> wrote:

> > Steps:
> > - Boot into Fedora 10 Live CD (obviously, into the
> default graphical mode)
> > - Install Powertop (yum install powertop) and run it
> > - I get about 60 wakeups per second from i915@pci....
> leaving the system
> > idle - Switch to console and back to X. The wakeups
> are gone.
> 
> Ah ok, it sounds like you're getting vblank interrupts
> at startup time, but 
> once you VT switch the kernel figures out that you
> don't need them, so it 
> disables them.  I think this is a bug in the 2D driver; it
> has an ioctl it 
> uses when doing modesetting which doubles as a
> "disabling the irq is ok" 
> signal, but we call it at a time when the corresponding
> pipe is off, so the 
> kernel ignores the call.

Yes, that's what E. Anholt supposed too.

> 
> Can you file a bug for this at bugs.freedesktop.org? Is it
> easy for you to 
> rebuild & test xf86-video-intel driver patches?

I filed the report:
http://bugs.freedesktop.org/show_bug.cgi?id=20296

Sure, I guess I can manage to patch the Intel driver and test it. I'm using 2.4.3 now, so maybe one thing I could do first is to try 2.5.x.
> 
> Thanks,
> -- 
> Jesse Barnes, Intel Open Source Technology Center

Thanks,
Alberto.


      
