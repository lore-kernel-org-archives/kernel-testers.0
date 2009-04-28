From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #13177] 2.6.30-rc2-git7 build problem
Date: Wed, 29 Apr 2009 00:06:51 +0200
Message-ID: <200904290006.51707.rjw@sisk.pl>
References: <47KgT3nlbjD.A.lnB.jc48JB@chimera> <Fg2zLW93smL.A.9VC.wc48JB@chimera> <906747.62115.qm@web32604.mail.mud.yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <906747.62115.qm-lSXk2nNw7cevuULXzWHTWIglqE1Y4D90QQ4Iyu8u01E@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Martin Knoblauch <spamtrap-Ys4E+72pFW0hFhg+JK9F0w@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On Monday 27 April 2009, Martin Knoblauch wrote:
> ----- Original Message ----
> 
> > From: Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>
> > To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
> > Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>; Martin Knoblauch <spamtrap-Ys4E+72pFW0hFhg+JK9F0w@public.gmane.org>
> > Sent: Saturday, April 25, 2009 9:31:51 PM
> > Subject: [Bug #13177] 2.6.30-rc2-git7 build problem
> > 
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.29.  Please verify if it still should be listed and let me know
> > (either way).
> > 
> > 
> > Bug-Entry    : http://bugzilla.kernel.org/show_bug.cgi?id=13177
> > Subject        : 2.6.30-rc2-git7 build problem
> > Submitter    : Martin Knoblauch 
> > Date        : 2009-04-21 13:39 (5 days old)
> > References    : http://marc.info/?l=linux-kernel&m=124032163602132&w=4
> 
>  still happens with 2.6.30-rc3-git7 when USB_SERIAL_KLSI=m.
> 
> BUILD   arch/x86/boot/bzImage
> Root device is (104, 3)
> Setup is 12664 bytes (padded to 12800 bytes).
> System is 2651 kB
> CRC 4864576
> Kernel: arch/x86/boot/bzImage is ready  (#2)
>   Building modules, stage 2.
>   MODPOST 470 modules
> ERROR: ".L192" [drivers/usb/serial/kl5kusb105.ko] undefined!
> make[1]: *** [__modpost] Error 1
> make: *** [modules] Error 2
> 
>  Config attached.

Thanks for the update.

Rafael
