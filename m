From: brot <schnitzelkuchen-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>
Subject: [regression] [drm:i915_gem_execbuffer] *ERROR* Execbuf while wedged
Date: Wed, 11 Nov 2009 16:41:32 +0100
Message-ID: <55f47b0b0911110741h13e45af0vd4920fc1c8a716ce@mail.gmail.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=gamma;
        h=domainkey-signature:mime-version:received:date:message-id:subject
         :from:to:cc:content-type;
        bh=5rvdxzh2b005yXjpIn44hNhPIzkpYVT7LDjCJCq/R40=;
        b=WqdyDtXFKnRfrcfYmezx7US+mkHLegWRKKyjOi1NRhWEox8OO2aEthjIgAParFTPaI
         quFLre8dLkFZpXMEswy1Eg8an14y+pBCq8ZePrwlarBkXZJl+u4rIPbQZLfkayz9Wkb/
         WZS8fujFPiMjC4NoYY3NK/uCtGnuYO01Ivcxw=
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
Cc: Zhenyu Wang <zhenyu.z.wang-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

Hello everyone.

I tried 2.6.32-rc6 with my Dell Inspiron 1525, but the KDM didnt
display right - It was mostly black with only the cursor displayed.
Other things which use X dont work with the kernel, too. dmesg shows
the following:

i915: Waking up sleeping processes
[drm:i915_wait_request] *ERROR* i915_wait_request returns -5 (awaiting 5 at 3)
[drm:i915_gem_execbuffer] *ERROR* Execbuf while wedged
[drm:i915_hangcheck_elapsed] *ERROR* Hangcheck timer elapsed... GPU hung
render error detected, EIR: 0x00000000
i915: Waking up sleeping processes
[drm:i915_wait_request] *ERROR* i915_wait_request returns -5 (awaiting 12 at 6)
[drm:i915_gem_execbuffer] *ERROR* Execbuf while wedged
eth0: no IPv6 routers present
[drm:i915_hangcheck_elapsed] *ERROR* Hangcheck timer elapsed... GPU hung
render error detected, EIR: 0x00000000
i915: Waking up sleeping processes
(...)
i915: Waking up sleeping processes
[drm:i915_wait_request] *ERROR* i915_wait_request returns -5 (awaiting
1161 at 1153)
[drm:i915_hangcheck_elapsed] *ERROR* Hangcheck timer elapsed... GPU hung
render error detected, EIR: 0x00000000
i915: Waking up sleeping processes
[drm:i915_wait_request] *ERROR* i915_wait_request returns -5 (awaiting
1163 at 1162)


GFX-Hardware is: Intel GM965/GL960 (rev0c)


After bisecting i got to the following commit:

176616814d700f19914d8509d9f65dec51a6ebf7 is the first bad commit
commit 176616814d700f19914d8509d9f65dec51a6ebf7
Author: Zhenyu Wang <zhenyu.z.wang-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Date:   Mon Jul 27 12:59:57 2009 +0100

    intel_agp: Use PCI DMA API correctly on chipsets new enough to have IOMMU

    When graphics dma remapping engine is active, we must fill
    gart table with dma address from dmar engine, as now graphics
    device access to graphics memory must go through dma remapping
    table to get real physical address.

    Add this support to all drivers which use intel_i915_insert_entries()

    Signed-off-by: Zhenyu Wang <zhenyu.z.wang-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
    Signed-off-by: David Woodhouse <David.Woodhouse-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

:040000 040000 2e225bb921aba5b816886d0d8ada8fd81e00e7a7
03d1ce91543e61975802c3a26df1ae5b75902b51 M	drivers



If you have any more questions, feel free to ask. (CC'ing would be a
good idea ;) )


Thanks everyone for the work for linux so far,

Michael
