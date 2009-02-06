From: Philipp Matthias Hahn <pmhahn-u4khhh1J0LzF41mA0N3lWw@public.gmane.org>
Subject: Re: WOL with forcedeth broken since
	f55c21fd9a92a444e55ad1ca4e4732d56661bf2e
Date: Fri, 6 Feb 2009 06:33:20 +0100
Message-ID: <20090206053320.GA4369@pmhahn.de>
References: <a47yn9c9JrF.A.hz.L5YiJB@chimera> <86802c440901292253ie9e2a9dmb4580a3da1480c81@mail.gmail.com> <20090205232343.GA9455@pmhahn.de> <200902060113.31651.rjw@sisk.pl> <a47yn9c9JrF.A.hz.L5YiJB@chimera> <20090129063118.GA3586@pmhahn.de> <CGyEB0S4BpO.A.MFB.R5YiJB@chimera> <86802c440901292253ie9e2a9dmb4580a3da1480c81@mail.gmail.com> <20090205232343.GA9455@pmhahn.de> <86802c440902051535n118339bes88ae48a54ce4711a@mail.gmail.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <200902060113.31651.rjw-KKrjLPT3xs0@public.gmane.org> <86802c440902051535n118339bes88ae48a54ce4711a-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Yinghai Lu <yinghai-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Tobias Diedrich <ranma+kernel-YxUgxmcw2FPQD6PfKP4TzA@public.gmane.org>, Ayaz Abdulla <aabdulla-DDmLM1+adcrQT0dZR+AlfA@public.gmane.org>, Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Jeff Garzik <jgarzik-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>

Hello!

On Fri, Feb 06, 2009 at 01:13:30AM +0100, Rafael J. Wysocki wrote:
...
> > > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12614
> > > Subject		: WOL with forcedeth broken since f55c21fd9a92a444e55ad1ca4e4732d56661bf2e
...
> > Strage, at the moment I can't seem to reproduce the problem. I've
> > switched back to the version of 2.6.28.3 and now it seems to work.
> > I'll continue with tesing.
> 
> OK, but for now I'll close the bug as unreproducible.

Just this morning I had to use the reverted address to wake up my
desktop PC after 6 hours of poweroff.

Yesterdays tests were domething like the following:
	Grub: Linux "loglevel=9 ignore_loglevel break=modules"
	dmesg -c > /dev/null
	modprobe forcedeth
	dmesg
	ethtool -s eth0 wol g
	echo NMAC > /proc/acpi/wakeup
	reboot to Grub using Alt-SysRq-B
	Grub: "halt"
I have to reboot back to Grub, since doing a "poweroff" from initrd or
pressing Alt-SysRq-O seems to turn of WOL.

...
> The "echo NMAC > /proc/acpi/wakeup" thing shouldn't be necessary if you do
> "ethtool -s eth0 wol g".

Will try.

On Thu, Feb 05, 2009 at 03:35:25PM -0800, Yinghai Lu wrote:
> > Nether the less here's the output of dmesg:
> >        forcedeth: Reverse Engineered nFoce ethernet driver. Version 0.61.
> >        ACPI: PCI Interrupt Link [LMAC] enables at IRQ 23
> >        forcedeth: 0000:00:14.0: PCI INT A -> Link[LMAC] -> GSI 23 (level, low) -> IRQ 23
> >        forcedeth: 0000:00:14.0: setting latency timer to 64
> > *       nv_probe: MAC_ADDR_REV ELSE
> >        nv_probe: set workaround bit for reversed mac addr
> 
> that means your BIOS doesn't reverse mac addr.
> this is the one for new BIOS or old BIOS?

This is the new BIOS.

BYtE
Philipp Hahn
-- 
  / /  (_)__  __ ____  __ Philipp Hahn
 / /__/ / _ \/ // /\ \/ /
/____/_/_//_/\_,_/ /_/\_\ pmhahn-u4khhh1J0LzF41mA0N3lWw@public.gmane.org
