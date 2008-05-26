From: Adrian Bunk <bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: USB scanner not working with 2.6.26-rc3
Date: Mon, 26 May 2008 13:27:02 +0300
Message-ID: <20080526102702.GA4709@cs181133002.pp.htv.fi>
References: <48399143.2030100@googlemail.com> <20080525204724.GM1791@cs181133002.pp.htv.fi> <483A8B9C.5000601@googlemail.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <483A8B9C.5000601-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: brot <schnitzelkuchen-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On Mon, May 26, 2008 at 12:06:20PM +0200, brot wrote:
> Well, the kernel is only tainted because of the nvidia driver. which i have in every kernel. It seems like my printer/scanner or usb controller is
> having problems atm, as it is causing problems on 2.6.25.3 where it should work.

It's not impossible that the nvidia driver messed with interrupts in 
a way causing your problem.

There have been too many problems in the kernel in the past that 
turned out to be caused by binary-only modules after developers
had wasted much time on them.

A kernel module has the full power to break _everything_ and we cannot 
debug their blob.

Please try without this driver ever loaded since booting
(you should even be able to reproduce this problem without running X).

If you still see it, please send the output of:
- dmesg -s 1000000
- cat /proc/interrupts

> Another question: http://lkml.org/lkml/2008/5/9/229 - it doesnt seem that anyone looked at this bug, or am i wrong ? maybe one should point ingo or
> peter at it.

Rafael, did they ever answer?

> Have a nice day.
> 
> brot

cu
Adrian

-- 

       "Is there not promise of rain?" Ling Tan asked suddenly out
        of the darkness. There had been need of rain for many days.
       "Only a promise," Lao Er said.
                                       Pearl S. Buck - Dragon Seed

--
To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
