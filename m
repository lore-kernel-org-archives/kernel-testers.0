From: Martin Knoblauch <spamtrap-Ys4E+72pFW0hFhg+JK9F0w@public.gmane.org>
Subject: Re: [Bug #13177] 2.6.30-rc2-git7 build problem
Date: Mon, 18 May 2009 07:05:47 -0700 (PDT)
Message-ID: <759339.47729.qm@web32606.mail.mud.yahoo.com>
References: <_AjETDMbIoL.A.DcH.RYzDKB@chimera> <385Pu-agh7M.A.ffB.HZzDKB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <385Pu-agh7M.A.ffB.HZzDKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, oliver-Q6YOFhsQ4GZ7tPAFqOLdPg@public.gmane.org




----- Original Message ----
> From: Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>
> To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
> Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>; Martin Knoblauch <spamtrap-Ys4E+72pFW0hFhg+JK9F0w@public.gmane.org>
> Sent: Saturday, May 16, 2009 9:20:40 PM
> Subject: [Bug #13177] 2.6.30-rc2-git7 build problem
> 
> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.29.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry    : http://bugzilla.kernel.org/show_bug.cgi?id=13177
> Subject        : 2.6.30-rc2-git7 build problem
> Submitter    : Martin Knoblauch 
> Date        : 2009-04-21 13:39 (26 days old)
> References    : http://marc.info/?l=linux-kernel&m=124032163602132&w=4
>           http://lkml.org/lkml/2009/4/27/56

 Still a problem in 2.6.30-rc6-git3. Adding maintainer

BUILD   arch/x86/boot/bzImage
Root device is (104, 3)
Setup is 12664 bytes (padded to 12800 bytes).
System is 2648 kB
CRC 91a1a400
Kernel: arch/x86/boot/bzImage is ready  (#2)
  Building modules, stage 2.
  MODPOST 471 modules
WARNING: drivers/gpu/drm/i915/i915.o(.text+0x1313e): Section mismatch in reference from the function intel_lvds_init() to the variable .init.data:intel_no_lvds
The function intel_lvds_init() references
the variable __initdata intel_no_lvds.
This is often because intel_lvds_init lacks a __initdata
annotation or the annotation of intel_no_lvds is wrong.

ERROR: ".L192" [drivers/usb/serial/kl5kusb105.ko] undefined!
make[1]: *** [__modpost] Error 1
make: *** [modules] Error 2

Cheers
Martin
