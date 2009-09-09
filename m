From: Stefan Schmidt <stefan-OrPQZGeq07wqhVmZOOOmNx2eb7JE58TQ@public.gmane.org>
Subject: Re: [Bug #14103] cdc_acm gives I/O error
Date: Wed, 9 Sep 2009 18:49:12 +0200
Message-ID: <20090909164912.GD4992@dodger.lab.datenfreihafen.org>
References: <2ehA7xoGvXL.A.4PB.3eBpKB@chimera>
 <Vm51Upp4EV.A.yPC.KfBpKB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <Vm51Upp4EV.A.yPC.KfBpKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Oliver Neukum <oliver-GvhC2dPhHPQdnm+yROfE0A@public.gmane.org>, Paul Martin <pm-8fiUuRrzOP0dnm+yROfE0A@public.gmane.org>

Hello.

On Sun, 2009-09-06 at 19:24, Rafael J. Wysocki wrote:
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14103
> Subject		: cdc_acm gives I/O error
> Submitter	: Paul Martin <pm-8fiUuRrzOP0dnm+yROfE0A@public.gmane.org>
> Date		: 2009-09-01 13:30 (6 days old)
> Handled-By	: Oliver Neukum <oliver-GvhC2dPhHPQdnm+yROfE0A@public.gmane.org>

I had the same problem here at least since -rc4. Oliver already did a two-liner
patch to fix the issue. Can be found here:

http://bugzilla.kernel.org/attachment.cgi?id=23046

It fixes the issue for me on two different cdc_acm devices. Don't know if it is
already in the USB tre, but I had to apply it to linus HEAD from today. Would
be good to get this in before the -final as it would cause a real regression.

regards
Stefan Schmidt
