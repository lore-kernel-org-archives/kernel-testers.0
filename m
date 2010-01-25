From: Sid Boyce <sboyce-QgLWrMLu8clzjhtm8Ag3mw@public.gmane.org>
Subject: Re: HDA Intel Audio hang on boot
Date: Mon, 25 Jan 2010 01:48:42 +0000
Message-ID: <4B5CF87A.20101@blueyonder.co.uk>
References: <wnS54-l8PVO.A.TlF.oMlSLB@chimera> <omZ8aBZReyD.A.jbH.QNlSLB@chimera> <4B4A9D8F.9030300@blueyonder.co.uk> <4B4FC3B0.9070207@blueyonder.co.uk>
Reply-To: sboyce-QgLWrMLu8clzjhtm8Ag3mw@public.gmane.org
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <4B4FC3B0.9070207-QgLWrMLu8clzjhtm8Ag3mw@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On 15/01/10 01:24, Sid Boyce wrote:
This is the only outstanding bug. No problems up 2.6.32-git1, but I get
a solid lock-up on 2.6.32-git2 through 2.6.33-rc5 if the on-board audio
is not disabled in the BIOS.
Regards
Sid.

> tindog:~ # uname -r
> 2.6.33-rc4-smp
> On 2.6.32-git1 which boots, hwinfo shows:-
>   oss.card_id = 'HDA NVidia'
>   oss.card_id = 'HDA NVidia'
>   oss.card_id = 'HDA NVidia'
>   alsa.card_id = 'HDA NVidia'
>   alsa.card_id = 'HDA NVidia'
>   alsa.card_id = 'HDA NVidia'
>   alsa.card_id = 'HDA NVidia'
>   info.product = 'HDA NVidia ALSA hardware specific Device'
>   alsa.card_id = 'HDA NVidia'
>   info.product = 'HDA NVidia ALSA Control Device'
>   alsa.card_id = 'HDA NVidia'
>   info.product = 'HDA NVidia Sound Card'
>   sound.card_id = 'HDA NVidia'
>   info.linux.driver = 'HDA Intel'
>     22:     489835        578   IO-APIC-fasteoi   sata_nv, HDA Intel
>        HDA Intel: /devices/pci0000:00/0000:00:0e.1
>        HDA Intel: module = snd_hda_intel
> irq:0 22 (   490413) "sata_nv" "HDA Intel"
>        HDA Intel: /devices/pci0000:00/0000:00:0e.1
>        HDA Intel: module = snd_hda_intel
>        HDA Intel: /devices/pci0000:00/0000:00:0e.1
>        HDA Intel: module = snd_hda_intel
>   E: DRIVER=HDA Intel
>   <6>HDA Intel 0000:00:0e.1: PCI INT B -> Link[AAZA] -> GSI 22 (level,
> low) -> IRQ 22
>   <7>HDA Intel 0000:00:0e.1: setting latency timer to 64
>   Driver: "HDA Intel"
> 
> Regards
> Sid.
> 



-- 
Sid Boyce ... Hamradio License G3VBV, Licensed Private Pilot
Emeritus IBM/Amdahl Mainframes and Sun/Fujitsu Servers Tech Support
Specialist, Cricket Coach
Microsoft Windows Free Zone - Linux used for all Computing Tasks
