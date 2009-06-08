From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #13306] hibernate slow on _second_ run
Date: Mon, 8 Jun 2009 22:54:29 +0200
Message-ID: <200906082254.30138.rjw@sisk.pl>
References: <4to6E2myxvG.A.muC.aIbIKB@chimera> <200906032351.01900.rjw@sisk.pl> <1244125570.22576.78.camel@johannes.local>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1244125570.22576.78.camel-YfaajirXv2244ywRPIzf9A@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Steven Rostedt <srostedt-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>

On Thursday 04 June 2009, Johannes Berg wrote:
> Alright, I have managed to trace this.
> 
> http://johannes.sipsolutions.net/files/hibernate-delay-dmesg.txt
> 
> has the dmesg, you can clearly see the delay:
> [50265.143330] ACPI: Waking up from system sleep state S4
> [50265.679141] HDA Intel 0000:00:08.0: restoring config space at offset 0x1 (was 0xb00006, writing 0xb00002)
> [50265.689525] forcedeth 0000:00:0a.0: restoring config space at offset 0x1 (was 0xb00003, writing 0xb00007)
> [50265.699775] ahci 0000:00:0b.0: restoring config space at offset 0x1 (was 0xb00403, writing 0xb00407)
> [50286.294910] pci 0000:00:03.2: PME# disabled

Quite frankly, it looks like resume_device_irqs() itself causes the delay to happen.

The next step would be to put a couple of printk()s in there and see which part
of it triggers the delay.

Best,
Rafael
