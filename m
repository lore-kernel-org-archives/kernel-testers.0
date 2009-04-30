From: Andriy Gapon <avg-+43SdJ71VxTsG83rWm+8vg@public.gmane.org>
Subject: Re: [WATCHDOG] iTCO_wdt.c - ICH9 reboot issue - testing wanted
Date: Thu, 30 Apr 2009 13:33:37 +0300
Message-ID: <49F97E81.8020201@icyb.net.ua>
References: <20090430094918.GC4141@infomag.iguana.be>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090430094918.GC4141-flHiHfN8CTwhDM6iD19NGrNAH6kLmebB@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Wim Van Sebroeck <wim-IQzOog9fTRqzQB+pC5nmwQ@public.gmane.org>
Cc: Stephen Clark <sclark46-ihVZJaRskl1bRRN4PJnoQQ@public.gmane.org>, Denys Fedoryschenko <denys-EpTYZhqHKuJnTudFRACr3A@public.gmane.org>, Johannes Dewender <arch-ArHZ4xy2k9XR7s880joybQ@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>, Rutger Nijlunsing <bugzilla.kernel-iCbNM5W9OABowPkYzbXIcw@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, LKML <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

on 30/04/2009 12:49 Wim Van Sebroeck said the following:
> Hi All,
> 
> I'm looking for people that can test the below patch(es).
> I'm mainly interested in knowing if you experience any side-effects when using this patch.
> (See also bugzilla 9868, 10195, 12363 & 12162).
> 
> For people not using the watchdog or without any reboot problems the driver should
> work as normal after compilation/installation/...
> 
> For people that have the ICH9 reboot problems: load the module with module-parameter
> gbl_smi_en=0 and test the watchdog functionality again.

BTW: when I suggested a similar patch for FreeBSD ichwd driver I was advised to
prominently warn that globally disabling SMI could possibly lead to dramatic
problems, especially on laptops. I.e. various ACPI things where SMI is used for
communication between OS and firmware. I am not sure if this issue is applicable
to laptops at all, but just in case.

-- 
Andriy Gapon
