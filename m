From: Brad Campbell <brad-UPaTOFvTz1K6c6uEtOJ/EA@public.gmane.org>
Subject: Re: [Bug #11039] 2.6.28-rc8-git3 forcedeth WARNING (kills the interface)
Date: Sun, 06 Jul 2008 17:44:48 +0400
Message-ID: <4870CC50.5070004@wasp.net.au>
References: <Vu1KV8Wj_GP.A.qW.DzLcIB@albercik> <uBi7uNfg81L.A.tp.QzLcIB@albercik>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <uBi7uNfg81L.A.tp.QzLcIB@albercik>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.25.  Please verify if it still should be listed.
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11039
> Subject		: 2.6.28-rc8-git3 forcedeth WARNING (kills the interface)
> Submitter	: Brad Campbell <brad-UPaTOFvTz1K6c6uEtOJ/EA@public.gmane.org>
> Date		: 2008-07-03 10:07 (4 days old)
> References	: http://marc.info/?l=linux-netdev&m=121508714430752&w=4

While it is certainly a problem I can't verify it as a regression. When I got the machine I ran it 
with 2.6.25 but found SATA errors were locking the box.

The SATA issue is resolved with 2.6.26-rc and I'm not terribly keen to risk my data to go back and 
check unless someone absolutely needs me to.

It does appear to be quite a problem though.

brad@srv:~$ dmesg | head -n5
[    0.000000] Linux version 2.6.26-rc8-git4 (brad@srv) (gcc version 4.1.2 20061115 (prerelease) 
(Debian 4.1.1-21)) #5 SMP Fri Jul 4 23:08:38 GST 2008
[    0.000000] Command line: root=/dev/md1 ro
[    0.000000] BIOS-provided physical RAM map:
[    0.000000]  BIOS-e820: 0000000000000000 - 000000000009d400 (usable)
[    0.000000]  BIOS-e820: 000000000009d400 - 00000000000a0000 (reserved)

brad@srv:~$ dmesg | grep 'eth1: tx_timeout' | wc -l
27

brad@srv:~$ uptime
  17:40:25 up 1 day,  1:15,  5 users,  load average: 0.73, 0.61, 0.49

Regards,
Brad
-- 
Dolphins are so intelligent that within a few weeks they can
train Americans to stand at the edge of the pool and throw them
fish.
