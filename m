From: Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Subject: Re: 2.6.28-rc1: [drm:i915] *ERROR* ... Disabling tiling
Date: Mon, 27 Oct 2008 15:12:08 +0000
Message-ID: <4905DA48.2070409@tuffmail.co.uk>
References: <4905CFC3.1060907@tuffmail.co.uk> <4905D750.7000006@tuffmail.co.uk>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding:sender;
        bh=8rWjVlOed/aKjk/4G1kW6iPYOzv3ad+rrrP/rc0Sgmw=;
        b=BT3EI+vNSlWI/p57Pk+o8VFoS7aA4hsH6d8vvxf8TYjX2Y0/Mvfcy8FL70BVEcGkQb
         rNrjQlG64fyJT2bTC5VuqKxAxAYA04eZNmET4FZC34lDpdG2FCNOKQjIRUdeVbgZg/cJ
         npJ7Pz45peRvyy6FMhVfj/yoOQEfVGZ9kpElk=
In-Reply-To: <4905D750.7000006-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: dri-devel-5NWGOfrQmneRv+LV9MX5uipxlwaOVQ5f@public.gmane.org
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, linux-kernel <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

Alan Jenkins wrote:
> Alan Jenkins wrote:
>> What does this mean, should I do anything about it?  Is tiling nice 
>> to have?
>>
>> It sounds like GEM broke something - though maybe it just added a 
>> more verbose error report.
>>
>> System: EeePC 701
>> Kernel: v2.6.36-rc1-5-g23cf24c
>> Chipset: Intel mobile 915G-something
>> Regretably necessary kernel boot option: noapic
>>
>>
>> [    1.438441] Linux agpgart interface v0.103
>> [    1.438441] agpgart-intel 0000:00:00.0: Intel 915GM Chipset
>> [    1.438441] agpgart-intel 0000:00:00.0: detected 7932K stolen memory
>> [    1.443353] agpgart-intel 0000:00:00.0: AGP aperture is 256M @ 
>> 0xd0000000
>> [    1.443353] [drm] Initialized drm 1.1.0 20060810
>> [    1.443353] pci 0000:00:02.0: PCI INT A -> Link[LNKA] -> GSI 5 
>> (level, low) -> IRQ 5
>> [    1.443353] pci 0000:00:02.0: setting latency timer to 64
>> [    1.443353] [drm:i915_gem_detect_bit_6_swizzle] *ERROR* Couldn't 
>> read from MCHBAR.  Disabling
>> tiling.

There's no obvious difference in Xorg.log (compared to 2.6.27).  In fact 
it claims to have successfuly enabled tiling.

(**) intel(0): Tiling enabled
(II) intel(0): Attempting memory allocation with tiled buffers.
(II) intel(0): Success.

So these new kernel error messages seem a bit random.

Thanks
Alan
