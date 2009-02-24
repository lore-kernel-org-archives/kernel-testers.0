From: Alberto Gonzalez <luis6674-/E1597aS9LQAvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #12337] ~100 extra wakeups reported by powertop
Date: Tue, 24 Feb 2009 05:50:34 -0800 (PST)
Message-ID: <819821.83409.qm@web53303.mail.re2.yahoo.com>
References: <200902242338.14105.nickpiggin@yahoo.com.au>
Reply-To: luis6674-/E1597aS9LQAvxtiuMwx3w@public.gmane.org
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200902242338.14105.nickpiggin-/E1597aS9LT0CCvOHzKKcA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Eric Anholt <eric-WhKQ6XTQaPysTnJN9+BGXg@public.gmane.org>, Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>, Nick Piggin <nickpiggin-/E1597aS9LT0CCvOHzKKcA@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

--- On Tue, 2/24/09, Nick Piggin <nickpiggin-/E1597aS9LT0CCvOHzKKcA@public.gmane.org> wrote:

> > I really wish I could do more, but learning to compile
> a custom kernel for
> > my hardware and do a git bisect is something I just
> can't afford now. If
> > relevant people try to reproduce it but can't, and
> say only possible
> > solution would be for me to bisect it I guess I could
> try to give it a go
> > when I get some spare time.
> 
> Fair enough. Reporting a problem is always very
> appreciated.
> 
> Pinging Eric and Jesse ;)

Thank you Nick.

Since Arch Linux is not popular among kernel developers I just tested Fedora 10 Live-CD (KDE) and I can reproduce the exact same problem, even if Fedora 10 has kernel 2.6.27 and for me the problem appeared in .28 (but I guess Fedora adds many patches, so probably the "guilty" commit was backported to 2.6.27.5-117-FC10-i686).

Steps:
- Boot into Fedora 10 Live CD (obviously, into the default graphical mode)
- Install Powertop (yum install powertop) and run it
- I get about 60 wakeups per second from i915@pci.... leaving the system idle
- Switch to console and back to X. The wakeups are gone.

I hope that helps.


      
