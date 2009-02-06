From: Philipp Matthias Hahn <pmhahn-u4khhh1J0LzF41mA0N3lWw@public.gmane.org>
Subject: Re: WOL with forcedeth broken since
	f55c21fd9a92a444e55ad1ca4e4732d56661bf2e
Date: Fri, 6 Feb 2009 07:59:12 +0100
Message-ID: <20090206065912.GA3614@pmhahn.de>
References: <86802c440901292253ie9e2a9dmb4580a3da1480c81@mail.gmail.com> <20090205232343.GA9455@pmhahn.de> <200902060113.31651.rjw@sisk.pl> <a47yn9c9JrF.A.hz.L5YiJB@chimera> <20090129063118.GA3586@pmhahn.de> <CGyEB0S4BpO.A.MFB.R5YiJB@chimera> <86802c440901292253ie9e2a9dmb4580a3da1480c81@mail.gmail.com> <20090205232343.GA9455@pmhahn.de> <86802c440902051535n118339bes88ae48a54ce4711a@mail.gmail.com> <20090206053320.GA4369@pmhahn.de>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20090206053320.GA4369-isSyJ6YaLy+zQB+pC5nmwQ@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Yinghai Lu <yinghai-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Tobias Diedrich <ranma+kern>

Hello again!

On Fri, Feb 06, 2009 at 06:33:20AM +0100, Philipp Matthias Hahn wrote:
> Just this morning I had to use the reverted address to wake up my
> desktop PC after 6 hours of poweroff.

I did some structured tesing:

1. WOL does _not_ work at all when I do:
	(grub) boot into initrd
	(initrd) modprobe forcedeth
	(initrd) ethtool -s eth0 wol g
*	(initrd) poweroff

2. WOL does _not_ work at all when I do:
	(grub) boot into initrd
	(initrd) modprobe forcedeth
	(initrd) ethtool -s eth0 wol g
*	(initrd) Alt-SysRq-O

3. WOL works using the _un-reversed_ MAC when I do:
	(grub) boot into initrd
	(initrd) modprobe forcedeth
	(initrd) ethtool -s eth0 wol g
*	(initrd) Alt-SysRq-B
*	(grub) halt

4. WOL works using the _reversed_ MAC when I do:
	(grub) boot into initrd
	(initrd) modprobe forcedeth
	(initrd) ethtool -s eth0 wol g
	(initrd) exit
*	(Debian) poweroff

If I do the poweroff from linux (either initrd or Debian), forcedeth
seems to display some messages just before poweroff. I'll try to get
hands on a Serial-USB-Converter and a NULL-modem-cable to capture it,
since my laptop is legacy-free :-(

BYtE
Philipp Hahn

PS: initrd is actually initramfs, before somebody wonders.
-- 
  / /  (_)__  __ ____  __ Philipp Hahn
 / /__/ / _ \/ // /\ \/ /
/____/_/_//_/\_,_/ /_/\_\ pmhahn-u4khhh1J0LzF41mA0N3lWw@public.gmane.org
