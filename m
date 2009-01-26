From: Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>
Subject: Re: [Bug #12426] TMDC Joystick no longer works in kernel 2.6.28
Date: Mon, 26 Jan 2009 12:49:47 +0100 (CET)
Message-ID: <alpine.LNX.1.10.0901261249100.5377@jikos.suse.cz>
References: <KTnguC9mFUC.A.VNB.TJRdJB@chimera> <200901201848.32080.andy@asjohnson.com> <alpine.LRH.1.10.0901221432320.13438@twin.jikos.cz> <200901222006.44919.andy@asjohnson.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200901222006.44919.andy-9eXmkf4BiQ2aMJb+Lgu22Q@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Andrew S. Johnson" <andy-9eXmkf4BiQ2aMJb+Lgu22Q@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Thu, 22 Jan 2009, Andrew S. Johnson wrote:

> These are almost the same when running "find /sys/bus/gameport -ls":
> 
> Kernel 2.6.28.1 (missing one line):
> 
>   9575    0 drwxr-xr-x   4 root     root            0 Jan 22 18:13 /sys/bus/gameport
>   9576    0 --w-------   1 root     root         4096 Jan 22 18:16 /sys/bus/gameport/uevent
>   9577    0 drwxr-xr-x   2 root     root            0 Jan 22 18:13 /sys/bus/gameport/devices
>   9783    0 lrwxrwxrwx   1 root     root            0 Jan 22 18:13 /sys/bus/gameport/devices/gameport0 -> ../../../devices/pnp0/00:07/gameport0
>   9578    0 drwxr-xr-x   3 root     root            0 Jan 22 18:15 /sys/bus/gameport/drivers
>  12186    0 drwxr-xr-x   2 root     root            0 Jan 22 18:15 /sys/bus/gameport/drivers/tmdc
>  12187    0 lrwxrwxrwx   1 root     root            0 Jan 22 18:17 /sys/bus/gameport/drivers/tmdc/module -> ../../../../module/tmdc
>  12190    0 --w-------   1 root     root         4096 Jan 22 18:17 /sys/bus/gameport/drivers/tmdc/uevent
>  12191    0 -r--r--r--   1 root     root         4096 Jan 22 18:17 /sys/bus/gameport/drivers/tmdc/description
>  12192    0 --w-------   1 root     root         4096 Jan 22 18:17 /sys/bus/gameport/drivers/tmdc/unbind
>  12193    0 --w-------   1 root     root         4096 Jan 22 18:17 /sys/bus/gameport/drivers/tmdc/bind
>   9579    0 --w-------   1 root     root         4096 Jan 22 18:16 /sys/bus/gameport/drivers_probe
>   9580    0 -rw-r--r--   1 root     root         4096 Jan 22 18:16 /sys/bus/gameport/drivers_autoprobe
> 
> Kernel 2.6.27.9 has one more line (see 12040):
> 
>   9489    0 drwxr-xr-x   4 root     root            0 Jan 22 18:23 /sys/bus/gameport
>   9490    0 --w-------   1 root     root         4096 Jan 22 18:53 /sys/bus/gameport/uevent
>   9491    0 drwxr-xr-x   2 root     root            0 Jan 22 18:23 /sys/bus/gameport/devices
>   9774    0 lrwxrwxrwx   1 root     root            0 Jan 22 18:23 /sys/bus/gameport/devices/gameport0 -> ../../../devices/pnp0/00:07/gameport0
>   9492    0 drwxr-xr-x   3 root     root            0 Jan 22 18:23 /sys/bus/gameport/drivers
>  12039    0 drwxr-xr-x   2 root     root            0 Jan 22 18:23 /sys/bus/gameport/drivers/tmdc
>  12040    0 lrwxrwxrwx   1 root     root            0 Jan 22 18:53 /sys/bus/gameport/drivers/tmdc/gameport0 -> ../../../../devices/pnp0/00:07/gameport0
>  12078    0 lrwxrwxrwx   1 root     root            0 Jan 22 18:53 /sys/bus/gameport/drivers/tmdc/module -> ../../../../module/tmdc
>  12081    0 --w-------   1 root     root         4096 Jan 22 18:53 /sys/bus/gameport/drivers/tmdc/uevent
>  12082    0 -r--r--r--   1 root     root         4096 Jan 22 18:53 /sys/bus/gameport/drivers/tmdc/description
>  12083    0 --w-------   1 root     root         4096 Jan 22 18:53 /sys/bus/gameport/drivers/tmdc/unbind
>  12084    0 --w-------   1 root     root         4096 Jan 22 18:53 /sys/bus/gameport/drivers/tmdc/bind
>   9493    0 --w-------   1 root     root         4096 Jan 22 18:53 /sys/bus/gameport/drivers_probe
>   9494    0 -rw-r--r--   1 root     root         4096 Jan 22 18:53 /sys/bus/gameport/drivers_autoprobe
> 
> If there is anything else I can provide, please let me know.

Could you please verify whether reverting 6902c0bead4c fixes the issue for 
you?

-- 
Jiri Kosina
SUSE Labs
