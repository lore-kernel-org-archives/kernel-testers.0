From: Santiago Garcia Mantinan <manty-gaW6/AuhO2xeoWH0uzbU5w@public.gmane.org>
Subject: Re: [Bug #14294] kernel BUG at drivers/ide/ide-disk.c:187
Date: Sun, 29 Nov 2009 00:54:00 +0100
Message-ID: <20091128235359.GA6877@dis.manty.net>
References: <7qTjLRFNcGF.A.eSE.kCACLB@chimera>
 <mYW9sxtWd2G.A.EcF.bDACLB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <mYW9sxtWd2G.A.EcF.bDACLB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Bartlomiej Zolnierkiewicz <bzolnier-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>

> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14294

Hi!

Sorry for not answering before, I've been running 2.6.31 patched for all
this time and the results are a bit dissapointing...

The first run was for almost a month and ended up with half a hang, I could
read on the console that there had been an error on one of the disks, dma
error, the keyboard was working, getty seemed to work but then login didn't
show up when entering the username even though the disks led was flashing
when I operated the console entering usernames and all that. This hang was
not like the hangs I had before, don't know if it was due to the patch and
the unknown operation arriving to the IDE disk, but the message that the
patch was supposed to display was not displayed at all.

The second run is current run I believe, currently it has an uptime of 18
days and not problem was showed over this time.

So... I'm afraid I'm not able to reproduce this and maybe the whole problem
is hardware related, even though the machine had been running with 2.6.30 in
a stable way, it is an old machine, so maybe it is not as healthy as I
believed, and even though memtest doesn't show any errors there could be
some dma problems or other weird things happening around :-(

So... I'd say you can close the bug and if I happen to find it again... I'll
report it again.

Sorry for all the noise.

Regards...
-- 
Manty/BestiaTester -> http://manty.net
