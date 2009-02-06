From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: WOL with forcedeth broken since f55c21fd9a92a444e55ad1ca4e4732d56661bf2e
Date: Fri, 6 Feb 2009 01:13:30 +0100
Message-ID: <200902060113.31651.rjw@sisk.pl>
References: <a47yn9c9JrF.A.hz.L5YiJB@chimera> <86802c440901292253ie9e2a9dmb4580a3da1480c81@mail.gmail.com> <20090205232343.GA9455@pmhahn.de>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090205232343.GA9455-isSyJ6YaLy+zQB+pC5nmwQ@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Philipp Matthias Hahn <pmhahn-u4khhh1J0LzF41mA0N3lWw@public.gmane.org>
Cc: Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Tobias Diedrich <ranma+kernel-YxUgxmcw2FPQD6PfKP4TzA@public.gmane.org>, Ayaz Abdulla <aabdulla-DDmLM1+adcrQT0dZR+AlfA@public.gmane.org>, Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Jeff Garzik <jgarzik-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>

On Friday 06 February 2009, Philipp Matthias Hahn wrote:
> Hello!
> 
> On Thu, Jan 29, 2009 at 10:53:40PM -0800, Yinghai Lu wrote:
> > can not find the reason why the WOL doesn't work...
> > 
> > please post
> > 1. boot log for just after AC is pluged-in... ===> you should have
> > "nv_probe: set workaround bit for reversed mac addr"
> > 2. and boot log after boot from WOL...==> you have have "nv_probe: set
> > workaround bit for reversed mac addr" too.
> 
> On Wed, Feb 04, 2009 at 11:58:53AM +0100, Rafael J. Wysocki wrote:
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12614
> > Subject		: WOL with forcedeth broken since f55c21fd9a92a444e55ad1ca4e4732d56661bf2e
> > Submitter	: Philipp Matthias Hahn <pmhahn-u4khhh1J0LzF41mA0N3lWw@public.gmane.org>
> > Date		: 2009-01-29 6:31 (7 days old)
> > References	: http://marc.info/?l=linux-kernel&m=123321232825316&w=4
> > Handled-By	: Yinghai Lu <yinghai-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
> > Patch		: http://marc.info/?l=linux-kernel&m=123330459229248&w=4
> 
> Strage, at the moment I can't seem to reproduce the problem. I've
> switched back to the version of 2.6.28.3 and now it seems to work.
> I'll continue with tesing.

OK, but for now I'll close the bug as unreproducible.

> Some additional data:
> The BIOS-upgrade tool (Afud408.exe) resets the MAC address. I had to run
> the tool a second time to re-programm the MAC-address using its /M
> option. I useed the unreversed MAC-address back than.
> I also tried the reversed address once, but after that forcedeth.c
> complained about a wrong MAC-address.
> 
> If I completely turn off the power (pull the plug), WOL doesn't work,
> even when it's enabled in the BIOS.
> 
> Only after I'v started Linux, do "echo NMAC > /proc/acpi/wakeup" and
> "ethtool -s eth0 wol g" does it work again.

The "echo NMAC > /proc/acpi/wakeup" thing shouldn't be necessary if you do
"ethtool -s eth0 wol g".

Thanks,
Rafael
