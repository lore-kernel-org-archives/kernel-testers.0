From: Benjamin Herrenschmidt <benh-XVmvHMARGAS8U2dJNN8I7kB+6BGkLq7r@public.gmane.org>
Subject: Re: [Bug #13306] hibernate slow on _second_ run
Date: Thu, 04 Jun 2009 08:25:26 +1000
Message-ID: <1244067926.27194.35.camel@pasglop>
References: <4to6E2myxvG.A.muC.aIbIKB@chimera>
	 <1244018021.10665.4.camel@johannes.local> <200906031116.05114.rjw@sisk.pl>
	 <200906032210.54854.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200906032210.54854.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jan Scholz <scholz-wOpdxP1gw6Cc+IqHO83+wjjhTm2NLCe8@public.gmane.org>

On Wed, 2009-06-03 at 22:10 +0200, Rafael J. Wysocki wrote:
> Apparently, we have two hibernation and suspend bugs on macbooks
> related to suspend_device_irqs() and resume_device_irqs(), the other
> one is
> (http://bugzilla.kernel.org/show_bug.cgi?id=13407) and I have no idea
> what's
> up.

The other one is a _powerbook_ bug, very different machine (powerpc
mac). macbooks are just almost ordinary x86 gear :-)

I'll try to tackle the trackpad problem.

Cheers,
Ben.

