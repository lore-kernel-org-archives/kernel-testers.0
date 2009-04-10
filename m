From: Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Subject: Weird oops in wiphy_update_regulatory after having loaded ath5k (on
 latest git)
Date: Fri, 10 Apr 2009 16:13:26 +0100
Message-ID: <49DF6216.8040303@tuffmail.co.uk>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=gamma;
        h=domainkey-signature:received:received:sender:message-id:date:from
         :user-agent:mime-version:to:cc:subject:content-type
         :content-transfer-encoding;
        bh=OG0QU2CNm7CMFlWce1/2dAo8gX3B54NQaeY44BTa4K4=;
        b=x+EJpPpjQ1BDKBxcLcYeu9y1jCodPJMHaErK84igrSUfvSxlJjmPFcyu7qpOSR9f8l
         dFeL+BlfpXH4S0+KfjIXFh6fDVUtlKmFKH64XEvN+r3p0+UZaG+Ci/La+9/eDauvRnte
         wofab2takda5AOVmV7CpDLPp0uwY+eUslKZSQ=
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: ath5k-devel-xDcbHBWguxEUs3QNXV6qNA@public.gmane.org
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

Hi, while testing latest Git (i.e. 2.6.30-rc1 + a bit), I hit a bug 
which killed my keyboard.  SysRQ keys worked, but I couldn't type in X 
or on the console.  I've not been able to reproduce it so far.  After 
rebooting, I extracted the following from syslog:

[    4.513996] usual_tables: module license 'unspecified' taints kernel.
(this is a libusual bug - I am *not* using proprietary modules)

[  214.739245] cfg80211: Using static regulatory domain info
[  214.739255] cfg80211: Regulatory domain: US
[  214.739261]       (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[  214.739272]       (2402000 KHz - 2472000 KHz @ 40000 KHz), (600 mBi, 
2700 mBm)
[  214.739282]       (5170000 KHz - 5190000 KHz @ 40000 KHz), (600 mBi, 
2300 mBm)
[  214.739292]       (5190000 KHz - 5210000 KHz @ 40000 KHz), (600 mBi, 
2300 mBm)
[  214.739302]       (5210000 KHz - 5230000 KHz @ 40000 KHz), (600 mBi, 
2300 mBm)
[  214.739312]       (5230000 KHz - 5330000 KHz @ 40000 KHz), (600 mBi, 
2300 mBm)
[  214.739322]       (5735000 KHz - 5835000 KHz @ 40000 KHz), (600 mBi, 
3000 mBm)
[  214.821571] ath5k 0000:01:00.0: enabling device (0000 -> 0002)
[  214.821598] ath5k 0000:01:00.0: PCI INT A -> GSI 18 (level, low) -> 
IRQ 18
[  214.821740] ath5k 0000:01:00.0: registered as 'phy0'
[  214.889455] *pdpt = 00000000120b3001 *pde = 0000000000000000
[  214.889485] Modules linked in: ath5k(+) mac80211 led_class cfg80211 
cpufreq_stats freq_table i915 drm i2c_algo_bit cfbcopyarea cfbimgblt 
cfbfillrect ipv6 rfkill_input joydev usual_tables(P) 
snd_hda_codec_realtek snd_hda_intel snd_hda_codec snd_hwdep uhci_hcd 
snd_pcm_oss snd_mixer_oss ehci_hcd i2c_i801 psmouse pcspkr snd_pcm 
intel_agp i2c_core serio_raw atl2 snd_timer agpgart usbcore 
snd_page_alloc video output eeepc_laptop backlight ac battery rfkill 
button processor evdev thermal fan ata_generic
[  214.889594]
[  214.889604] Pid: 2881, comm: modprobe Tainted: P           
(2.6.30-rc1eeepc #112) 701
[  214.889615] EIP: 0060:[<e01e9332>] EFLAGS: 00010246 CPU: 0
[  214.889641] EIP is at wiphy_update_regulatory+0x20f/0x295 [cfg80211]
[  214.889650] EAX: 00000000 EBX: d21d0000 ECX: 00000000 EDX: d21d0060
[  214.889660] ESI: 0000001a EDI: d21d0060 EBP: d2103d70 ESP: d2103d40
[  214.889669]  DS: 007b ES: 007b FS: 0000 GS: 0033 SS: 0068
[  214.889692]  d2103d90 d21d0060 c04277e0 00000001 00000044 c04277e4 
d21d006000000002
[  214.890293] ---[ end trace 38a1eb1e36762638 ]---

This happened when ath5k was loaded dynamically, in response to my 
pressing the "wireless toggle" key.  (rfkill-input -> eeepc-laptop, 
which does weird acpi-driven PCI hotplug).

Can anyone at least explain where this weird backtrace comes from?  It 
doesn't look like a normal OOPS or BUG, and it doesn't even seem to have 
a proper backtrace.

Thanks!
Alan
