From: Mariusz Kozlowski <m.kozlowski-NWF1p15JEu3VItvQsEIGlw@public.gmane.org>
Subject: Re: [Bug #11555] rmmod ide-cd_mod: tried to init an initialized =?utf-8?q?=C2=A0object?=, something is seriously wrong.
Date: Sun, 21 Sep 2008 22:43:20 +0200
Message-ID: <200809212243.21256.m.kozlowski@tuxland.pl>
References: <PJz8fNrJNHG.A.65F.wzq1IB@albercik> <7lIhZC4hCxE.A.0gG.R0q1IB@albercik>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <7lIhZC4hCxE.A.0gG.R0q1IB@albercik>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, FUJITA Tomonori <fujita.tomonori-Zyj7fXuS5i5L9jVzuh4AOg@public.gmane.org>, Jens Axboe <jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>

Hi,

> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.26.  Please verify if it still should be listed and let me know
> (either way).

It was present in 2.6.27-rc6. A day or two later I checked mainline and
it was gone. I will recheck this and notify if needed.

> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11555
> Subject		: rmmod ide-cd_mod: tried to init an initialized =C2=A0object, something is s= eriously wrong.
> Submitter	: Mariusz Kozlowski <m.kozlowski-NWF1p15JEu3VItvQsEIGlw@public.gmane.org>
> Date		: 2008-07-16 2:22 (68 days old)
> References	: http://marc.info/?l=linux-ide&m=122061839713526&w=4
> Handled-By	: Jens Axboe <jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
> Patch		: http://marc.info/?l=linux-kernel&m=122095622602315&w=4

Thanks,

	Mariusz
