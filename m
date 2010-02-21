From: Daniel Mack <daniel-rDUAYElUppE@public.gmane.org>
Subject: Re: [Bug #15039] leds_alix2: can't allocate I/O for GPIO
Date: Mon, 22 Feb 2010 00:37:36 +0100
Message-ID: <20100221233736.GI28972@buzzloop.caiaq.de>
References: <b_eAfX__uZL.A.lvE.HcagLB@chimera>
 <ClJsQB_ZlxO.A.wdH.7fagLB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <ClJsQB_ZlxO.A.wdH.7fagLB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Richard Purdie <rpurdie-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Arnd Hannemann <hannemann-JasiFyN5vQG662+jY7v6MhvVK+yQ3ZXh@public.gmane.org>

Hi Richard,

On Sun, Feb 21, 2010 at 10:30:13PM +0100, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a summary report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.32.  Please verify if it still should be listed and let the tracking team
> know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15039
> Subject		: leds_alix2: can't allocate I/O for GPIO
> Submitter	: Arnd Hannemann <hannemann-JasiFyN5vQG662+jY7v6MhvVK+yQ3ZXh@public.gmane.org>
> Date		: 2010-01-07 10:26 (46 days old)
> References	: http://marc.info/?l=linux-kernel&m=126286001106257&w=4
> Handled-By	: Daniel Mack <daniel-rDUAYElUppE@public.gmane.org>
> Patch		: http://patchwork.kernel.org/patch/72006/
> 

This regression is fixedi (or better worked around) in your git by the
commit "leds: ALIX2: Add dependency to !GPIO_CS5335" (38b52483) but it
seems this isn't merged yet. Any plans to get this in for -rc8?

Thanks,
Daniel
