From: Alexey Fisher <bug-track-M18mAb7Tlt0yCq4wW13eYl6hYfS7NtTn@public.gmane.org>
Subject: Re: SLAB break supsned and cpu-hotplug on SMP, using SLUB instead.
Date: Fri, 13 Jun 2008 23:22:31 +0200
Message-ID: <1213392151.11059.2.camel@zwerg>
References: <1213389587.10307.12.camel@zwerg>
	 <200806132307.19393.Rafal.Wysocki@fuw.edu.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200806132307.19393.Rafal.Wysocki-/6eP1D/FSf3VItvQsEIGlw@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "R. J. Wysocki" <Rafal.Wysocki-/6eP1D/FSf3VItvQsEIGlw@public.gmane.org>
Cc: kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

Am Freitag, den 13.06.2008, 23:07 +0200 schrieb R. J. Wysocki:
> On Friday, 13 of June 2008, Alexey Fisher wrote:
> > I found that SLAB breaking supsned and cpu-hotplug on my PC. I didn't
> > get to bisect it, so i think it is just the part of SLAB. At the moment
> > i converted my kernel to SLUB and it working just fine, about 10
> > suspends and no reboot or crush ... it ist a record for my PC.
> > 
> > Easy way to reproduce is to compile SLAB kernel and 
> > echo 0 > /sys/devices/system/cpu/cpu1/online
> > echo 1 > /sys/devices/system/cpu/cpu1/online
> > 
> > other work around to make my PC working stable are kernel options: nosmp
> > or mem=1024M
> > kernel 2.6.26-rc6-00028-gc6d8f40 #68 SMP PREEMPT 
> 
> Is this a regression from 2.6.25?
No. I can find this bug till 2.6.20... with 2.6.19 and 2.6.18 it getting
more unstable.

--
To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
