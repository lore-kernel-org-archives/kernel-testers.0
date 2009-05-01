From: Wim Van Sebroeck <wim-IQzOog9fTRqzQB+pC5nmwQ@public.gmane.org>
Subject: Re: [WATCHDOG] iTCO_wdt.c - ICH9 reboot issue - testing wanted
Date: Fri, 1 May 2009 20:32:38 +0200
Message-ID: <20090501183238.GF4141@infomag.iguana.be>
References: <20090430094918.GC4141@infomag.iguana.be> <49F97E81.8020201@icyb.net.ua>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <49F97E81.8020201-+43SdJ71VxTsG83rWm+8vg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Andriy Gapon <avg-+43SdJ71VxTsG83rWm+8vg@public.gmane.org>
Cc: Wim Van Sebroeck <wim-IQzOog9fTRqzQB+pC5nmwQ@public.gmane.org>, Stephen Clark <sclark46-ihVZJaRskl1bRRN4PJnoQQ@public.gmane.org>, Denys Fedoryschenko <denys-EpTYZhqHKuJnTudFRACr3A@public.gmane.org>, Johannes Dewender <arch-ArHZ4xy2k9XR7s880joybQ@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>, Rutger Nijlunsing <bugzilla.kernel-iCbNM5W9OABowPkYzbXIcw@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, LKML <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

Hi Andriy,

> > I'm looking for people that can test the below patch(es).
> > I'm mainly interested in knowing if you experience any side-effects when using this patch.
> > (See also bugzilla 9868, 10195, 12363 & 12162).
> > 
> > For people not using the watchdog or without any reboot problems the driver should
> > work as normal after compilation/installation/...
> > 
> > For people that have the ICH9 reboot problems: load the module with module-parameter
> > gbl_smi_en=0 and test the watchdog functionality again.
> 
> BTW: when I suggested a similar patch for FreeBSD ichwd driver I was advised to
> prominently warn that globally disabling SMI could possibly lead to dramatic
> problems, especially on laptops. I.e. various ACPI things where SMI is used for
> communication between OS and firmware. I am not sure if this issue is applicable
> to laptops at all, but just in case.

That is correct: i.e. Bug 12162; this broke startup on Toshiba Portege R500.
That's why I made this an option (which has to be turned on before you use it).
Another possibility would have been to put it in the iTCO_vendor_support code.
Reminds me though that in the final patch we need to make a warning about the effect of this.

And secondly: as we were discussing allready, since this seems to be a bug in the BIOS of
most ICH9 based Intel boards we need to find out how we can get into touch with people at
Intel to whom we can report this bug...

Kind regards,
Wim.
