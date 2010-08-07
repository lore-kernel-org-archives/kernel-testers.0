From: Alexey Fisher <bug-track-M18mAb7Tlt0yCq4wW13eYl6hYfS7NtTn@public.gmane.org>
Subject: regression: after x86: Convert common clocksources to use
 clocksource_register_hz/khz
Date: Sat, 07 Aug 2010 23:04:37 +0200
Message-ID: <1281215077.6171.18.camel@mini>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, John Stultz <johnstul-r/Jw6+rmf7HQT0dZR+AlfA@public.gmane.org>
Cc: Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>

Hallo John,
i have regression after commit f12a15be6.
With this patch my netbook (Asus Eeepc 1005) starting really slow. It
looks like printk comes 1/min.

commit f12a15be63d1de9a35971f35f06b73088fa25c3a
Author: John Stultz <johnstul-r/Jw6+rmf7HQT0dZR+AlfA@public.gmane.org>
Date:   Tue Jul 13 17:56:27 2010 -0700
    x86: Convert common clocksources to use clocksource_register_hz/khz
    
    This converts the most common of the x86 clocksources over to use
    clocksource_register_hz/khz.
    
    Signed-off-by: John Stultz <johnstul-r/Jw6+rmf7HQT0dZR+AlfA@public.gmane.org>
    LKML-Reference:
<1279068988-21864-11-git-send-email-johnstul-r/Jw6+rmf7HQT0dZR+AlfA@public.gmane.org>
    Signed-off-by: Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>
