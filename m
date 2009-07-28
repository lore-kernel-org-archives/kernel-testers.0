From: Jan Scholz <scholz-wOpdxP1gw6Cc+IqHO83+wjjhTm2NLCe8@public.gmane.org>
Subject: Re: [Bug #13407] adb trackpad disappears after suspend to ram
Date: Tue, 28 Jul 2009 16:49:56 +0200
Message-ID: <87iqhcvp4b.fsf@scholz.fias.uni-frankfurt.de>
References: <DizPU9GBfHF.A.kgF.iWObKB@chimera>
	<H5-1lZIIeYK.A.BsH.IYObKB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <H5-1lZIIeYK.A.BsH.IYObKB@chimera> (Rafael J. Wysocki's message
	of "Sun, 26 Jul 2009 22:45:28 +0200 (CEST)")
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Benjamin Herrenschmidt <benh-XVmvHMARGAS8U2dJNN8I7kB+6BGkLq7r@public.gmane.org>, Jan Scholz <scholz-wOpdxP1gw6Cc+IqHO83+wjjhTm2NLCe8@public.gmane.org>

Hi,

The bug is still present in v2.6.31-rc4, it is fixed by commenting out
{suspend,resume}_device_irqs() in drivers/base/power/main.c as suggested
by Rafael. Any success in reproducing it?

Regards,
   Jan

"Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> writes:

> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.29 and 2.6.30.
>
> The following bug entry is on the current list of known regressions
> introduced between 2.6.29 and 2.6.30.  Please verify if it still should
> be listed and let me know (either way).
>
>
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13407
> Subject		: adb trackpad disappears after suspend to ram
> Submitter	: Jan Scholz <scholz-wOpdxP1gw6Cc+IqHO83+wjjhTm2NLCe8@public.gmane.org>
> Date		: 2009-05-28 7:59 (60 days old)
> First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=2ed8d2b3a81bdbb0418301628ccdb008ac9f40b7
> References	: http://marc.info/?l=linux-kernel&m=124349762314976&w=4
> Handled-By	: Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>
>
>
>

-- 
 Jan Scholz                                ____  ____    __    ___ 
                                          ( ___)(_  _)  /__\  / __)
 Frankfurt Institute for Advanced Studies  )__)  _)(_  /(__)\ \__ \
                                          (__)  (____)(__)(__)(___/
 Goethe Universitaet Frankfurt
 Ruth-Moufang-Str. 1                             Tel. 069-798-47534
 60438 Frankfurt am Main
