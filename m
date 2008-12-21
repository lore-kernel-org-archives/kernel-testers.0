From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Subject: Re: [Bug #11849] default IRQ affinity change in v2.6.27 (breaking
	several SMP PPC based systems)
Date: Sun, 21 Dec 2008 09:11:50 +0100
Message-ID: <20081221081150.GA4773@elte.hu>
References: <vYigq6XkyUN.A.E1H.7ZYTJB@chimera> <vy-yJy0f3YP.A.x9B.8cYTJB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <vy-yJy0f3YP.A.x9B.8cYTJB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Chris Snook <csnook-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Kumar Gala <galak-XVmvHMARGAS8U2dJNN8I7kB+6BGkLq7r@public.gmane.org>, Max Krasnyansky <maxk-zC7DfRvBq/JWk0Htik3J/w@public.gmane.org>, Scott Wood <scottwood-KZfg59tc24xl57MIdRCFDg@public.gmane.org>


* Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.27.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11849
> Subject		: default IRQ affinity change in v2.6.27 (breaking several SMP PPC based systems)
> Submitter	: Kumar Gala <galak-XVmvHMARGAS8U2dJNN8I7kB+6BGkLq7r@public.gmane.org>
> Date		: 2008-10-24 12:45 (58 days old)
> References	: http://marc.info/?l=linux-kernel&m=122485245924125&w=4

hm, i think these were all fixed a long time ago, via:

 f6d87f4: genirq: keep affinities set from userspace across free/request_irq()
 612e368: genirq: fix the affinity setting in setup_irq
 6c2e940: x86: apic honour irq affinity which was set in early boot

Kumar, could you please check v2.6.28-rc9 to see whether all issues are 
fixed?

	Ingo
