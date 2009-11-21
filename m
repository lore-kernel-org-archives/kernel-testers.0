From: Henrique de Moraes Holschuh <hmh-N3TV7GIv+o9fyO9Q7EP/yw@public.gmane.org>
Subject: Re: [Bug #14597] thinkpad-acpi: driver fails to load on old BIOS
 for the A31, T23-T30, X30-X31
Date: Sat, 21 Nov 2009 18:45:32 -0200
Message-ID: <20091121204532.GC10888@khazad-dum.debian.net>
References: <pohDdrcORVG.A.U2B.-6_BLB@chimera>
 <l2_yP_tdgYK.A.OpC.W7_BLB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=messagingengine.com; h=date:from:to:cc:subject:message-id:references:mime-version:content-type:in-reply-to; s=smtpout; bh=w+ooAwGh6NTp7yJdN0i/QY8aRBA=; b=MOBTyoLmHCwkTAs+ATpxJVU4++3+e4zagFnJf8g/Rd+AsS2S2/WrmhbGNOQ428S7LDsVJZzieyAE2fIg9ouBdAwv6u9XB5YGYJKUAk9DAK88XbpBoEN9x6QJIoTPbMqUlDoMzisIrMioLUc4ZoGncdknB/Hu0zGItYEGkO3dZNQ=
Content-Disposition: inline
In-Reply-To: <l2_yP_tdgYK.A.OpC.W7_BLB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Sat, 21 Nov 2009, Rafael J. Wysocki wrote:
> The following bug entry is on the current list of known regressions
> from 2.6.31.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14597
> Subject		: thinkpad-acpi: driver fails to load on old BIOS for the A31, T23-T30, X30-X31
> Submitter	: Henrique de Moraes Holschuh <hmh-N3TV7GIv+o9fyO9Q7EP/yw@public.gmane.org>
> Date		: 2009-11-13 20:45 (9 days old)
> Handled-By	: Henrique de Moraes Holschuh <hmh-N3TV7GIv+o9fyO9Q7EP/yw@public.gmane.org>
> Patch		: http://bugzilla.kernel.org/attachment.cgi?id=23770

Still outstanding.  Andrew said he was going to send the patch to Linus, so
I hope it will be fixed for 2.6.32-final.

-- 
  "One disk to rule them all, One disk to find them. One disk to bring
  them all and in the darkness grind them. In the Land of Redmond
  where the shadows lie." -- The Silicon Valley Tarot
  Henrique Holschuh
