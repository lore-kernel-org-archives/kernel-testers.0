From: Sitsofe Wheeler <sitsofe-/E1597aS9LQAvxtiuMwx3w@public.gmane.org>
Subject: DEBUG_LOCK_ALLOC causes hostap kernel lockup
Date: Tue, 10 Jun 2008 23:16:13 +0100
Message-ID: <g2mufc$c16$1@ger.gmane.org>
References: <g2760n$7f0$1@ger.gmane.org> <g2la7s$g8r$1@ger.gmane.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7Bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-wireless-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

Sitsofe Wheeler wrote:

> Sitsofe Wheeler wrote:
> 
>> hostap_pci on a 32bit x86 machine seems to be unstable under load in
>> next-20080604. Using iperf between a wired machine on the other side of
>> the AP and the hostap box makes hostap output the message
>> wifi0: SW TICK stuck? bits=0x0 EvStat=8000 IntEn=e09f
>> before things slowly grind to a halt in a lockup that seemingly needs a
> 
> things always seem to be recoverable. Sometimes the system will recover
> after the lockup with a message like:
> Clocksource tsc unstable (delta = 9377016871 ns)
> Time acpi_pm clocksource has been installed.

The lockups seem to be down to DEBUG_LOCK_ALLOC (Lock debugging: detect
incorrect freeing of live locks). If that is enabled then after enough
iperf runs the kernel will lock solid. This problems seems to happen in
kernels from at least 2.6.22 onwards.

I had no idea that enabling lock checking could itself result in a lockup...

-- 
Sitsofe | http://sucs.org/~sits/

--
To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
