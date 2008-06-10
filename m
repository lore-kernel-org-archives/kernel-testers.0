From: Sitsofe Wheeler <sitsofe-/E1597aS9LQAvxtiuMwx3w@public.gmane.org>
Subject: Re: hostap kernel lockup?
Date: Tue, 10 Jun 2008 08:24:44 +0100
Message-ID: <g2la7s$g8r$1@ger.gmane.org>
References: <g2760n$7f0$1@ger.gmane.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7Bit
Return-path: <linux-wireless-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: linux-wireless-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-wireless-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
Cc: kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

Sitsofe Wheeler wrote:

> hostap_pci on a 32bit x86 machine seems to be unstable under load in
> next-20080604. Using iperf between a wired machine on the other side of
> the AP and the hostap box makes hostap output the message
> wifi0: SW TICK stuck? bits=0x0 EvStat=8000 IntEn=e09f
> before things slowly grind to a halt in a lockup that seemingly needs a
> sysrq reboot. This problem seems to be reproducible every time but does
> not happen with Ubuntu's 2.6.22 kernel.

This issue seems to be happening at least as far back as 2.6.22 vanilla with
the config on http://sucs.org/~sits/test/config-2.6.22.txt although things
always seem to be recoverable. Sometimes the system will recover after the
lockup with a message like:
Clocksource tsc unstable (delta = 9377016871 ns)
Time acpi_pm clocksource has been installed.
Unfortunately even after if this does happen supsequent runs can still
freeze things to the extent that caps lock will stop responding. It can get
to the stage where screen updates in X only seem to happen when a key is
pressed on the keyboard. 

-- 
Sitsofe | http://sucs.org/~sits/

--
To unsubscribe from this list: send the line "unsubscribe linux-wireless" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
