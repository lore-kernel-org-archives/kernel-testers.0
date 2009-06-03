From: Wim Van Sebroeck <wim-IQzOog9fTRqzQB+pC5nmwQ@public.gmane.org>
Subject: Re: [WATCHDOG] iTCO_wdt.c - ICH9 reboot issue - testing wanted
Date: Wed, 3 Jun 2009 23:04:39 +0200
Message-ID: <20090603210439.GO21360@infomag.iguana.be>
References: <20090430094918.GC4141@infomag.iguana.be> <4A254EBF.70004@grupopie.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <4A254EBF.70004-TSnNRl9vlf1Wk0Htik3J/w@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Rui Santos <rsantos-TSnNRl9vlf1Wk0Htik3J/w@public.gmane.org>
Cc: Stephen Clark <sclark46-ihVZJaRskl1bRRN4PJnoQQ@public.gmane.org>, Denys Fedoryschenko <denys-EpTYZhqHKuJnTudFRACr3A@public.gmane.org>, Johannes Dewender <arch-ArHZ4xy2k9XR7s880joybQ@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>, Rutger Nijlunsing <bugzilla.kernel-iCbNM5W9OABowPkYzbXIcw@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andriy Gapon <avg-+43SdJ71VxTsG83rWm+8vg@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, LKML <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

Hi Rui,

> Just to let you know that gbl_smi_en=0, also solves the problem with
> Intel DG35EC motherboard, witch uses a  82801HB I/O Controller Hub (ICH8)

Thanks for the feedback. I'm going to put the code in the iTCO_vendor_support code
so that the iTCO_wdt watchdog code stays clean. The glb_smi_en is and stays a dirty
hack... (and I will also document it as such). The real solution is to have the BIOS
code fixed...

Kind regards,
Wim.
