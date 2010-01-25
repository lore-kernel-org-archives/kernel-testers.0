From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: HDA Intel Audio hang on boot
Date: Mon, 25 Jan 2010 22:39:02 +0100
Message-ID: <201001252239.03017.rjw@sisk.pl>
References: <wnS54-l8PVO.A.TlF.oMlSLB@chimera> <4B4FC3B0.9070207@blueyonder.co.uk> <4B5CF87A.20101@blueyonder.co.uk>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <4B5CF87A.20101-QgLWrMLu8clzjhtm8Ag3mw@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: sboyce-QgLWrMLu8clzjhtm8Ag3mw@public.gmane.org, Takashi Iwai <tiwai-l3A5Bk7waGM@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Monday 25 January 2010, Sid Boyce wrote:
> On 15/01/10 01:24, Sid Boyce wrote:
> This is the only outstanding bug. No problems up 2.6.32-git1, but I get
> a solid lock-up on 2.6.32-git2 through 2.6.33-rc5 if the on-board audio
> is not disabled in the BIOS.

I guess we should let Takashi know.
 
> > tindog:~ # uname -r
> > 2.6.33-rc4-smp
> > On 2.6.32-git1 which boots, hwinfo shows:-
> >   oss.card_id = 'HDA NVidia'
> >   oss.card_id = 'HDA NVidia'
> >   oss.card_id = 'HDA NVidia'
> >   alsa.card_id = 'HDA NVidia'
> >   alsa.card_id = 'HDA NVidia'
> >   alsa.card_id = 'HDA NVidia'
> >   alsa.card_id = 'HDA NVidia'
> >   info.product = 'HDA NVidia ALSA hardware specific Device'
> >   alsa.card_id = 'HDA NVidia'
> >   info.product = 'HDA NVidia ALSA Control Device'
> >   alsa.card_id = 'HDA NVidia'
> >   info.product = 'HDA NVidia Sound Card'
> >   sound.card_id = 'HDA NVidia'
> >   info.linux.driver = 'HDA Intel'
> >     22:     489835        578   IO-APIC-fasteoi   sata_nv, HDA Intel
> >        HDA Intel: /devices/pci0000:00/0000:00:0e.1
> >        HDA Intel: module = snd_hda_intel
> > irq:0 22 (   490413) "sata_nv" "HDA Intel"
> >        HDA Intel: /devices/pci0000:00/0000:00:0e.1
> >        HDA Intel: module = snd_hda_intel
> >        HDA Intel: /devices/pci0000:00/0000:00:0e.1
> >        HDA Intel: module = snd_hda_intel
> >   E: DRIVER=HDA Intel
> >   <6>HDA Intel 0000:00:0e.1: PCI INT B -> Link[AAZA] -> GSI 22 (level,
> > low) -> IRQ 22
> >   <7>HDA Intel 0000:00:0e.1: setting latency timer to 64
> >   Driver: "HDA Intel"

Rafael
