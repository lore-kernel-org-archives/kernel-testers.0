From: Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Subject: Re: 2.6.28-rc1: [drm:i915] *ERROR* ... Disabling tiling
Date: Mon, 27 Oct 2008 14:59:28 +0000
Message-ID: <4905D750.7000006@tuffmail.co.uk>
References: <4905CFC3.1060907@tuffmail.co.uk>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding:sender;
        bh=qLFjbHhAxsl4szD+Sejz1gGEIout+xz3gEMvvVnNCSQ=;
        b=o4oOJQHWSS6k/hzPSpokdOhGjMjq+2SckhB7uXTrfUIPLTkU8drJQc07IIuvMurwWk
         r5LLBYLt8gCQwVLcsYLb7YHyALopoB2y2iOw0+TUqA/FfxC4YP/7qeU35rxgqvjumlaq
         W20sKoF0EQ+aW3vTpYLpiIzNSEQ+VqCZB6fu0=
In-Reply-To: <4905CFC3.1060907-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: dri-devel-5NWGOfrQmneRv+LV9MX5uipxlwaOVQ5f@public.gmane.org
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, linux-kernel <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

Alan Jenkins wrote:
> What does this mean, should I do anything about it?  Is tiling nice to have?
>
> It sounds like GEM broke something - though maybe it just added a more 
> verbose error report.
>
> System: EeePC 701
> Kernel: v2.6.36-rc1-5-g23cf24c
> Chipset: Intel mobile 915G-something
> Regretably necessary kernel boot option: noapic
>
>
> [    1.438441] Linux agpgart interface v0.103
> [    1.438441] agpgart-intel 0000:00:00.0: Intel 915GM Chipset
> [    1.438441] agpgart-intel 0000:00:00.0: detected 7932K stolen memory
> [    1.443353] agpgart-intel 0000:00:00.0: AGP aperture is 256M @ 0xd0000000
> [    1.443353] [drm] Initialized drm 1.1.0 20060810
> [    1.443353] pci 0000:00:02.0: PCI INT A -> Link[LNKA] -> GSI 5 
> (level, low) -> IRQ 5
> [    1.443353] pci 0000:00:02.0: setting latency timer to 64
> [    1.443353] [drm:i915_gem_detect_bit_6_swizzle] *ERROR* Couldn't read 
> from MCHBAR.  Disabling
> tiling.
> [    1.443353] [drm:i915_driver_load] *ERROR* failed to enable MSI
>
>
> I expect noapic explains the MSI failure.  I can boot without noapic if 
> necessary for testing, but I can't run with it because I get nasty hangs 
> & reboots.  I don't see why that merits an *ERROR*... anyway, what I'm 
> interested in is the "Disabling tiling".
>   

Actually... MSI does seem to be working for my ethernet.

$ grep eth /proc/interrupts
 44:       2446   PCI-MSI-edge      eth1

DRM wasn't using MSI in 2.6.27 though.  So I'm still doubtful that the 
MSI issue is really an "*ERROR*".

Thanks
Alan
