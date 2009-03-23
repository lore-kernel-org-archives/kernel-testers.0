From: Alan Jenkins <sourcejedi.lkml-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>
Subject: Re: 2.6.28-rc1: [drm:i915] *ERROR* ... Disabling tiling
Date: Mon, 23 Mar 2009 09:52:15 +0000
Message-ID: <9b2b86520903230252m4d95351ejcd0742c9d271a2b5@mail.gmail.com>
References: <4905CFC3.1060907@tuffmail.co.uk>
	 <1225130422.4845.35.camel@gaiman.anholt.net>
	 <9b2b86520903230250q15ffd726k8f20bb13f8321f22@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=KkMEtjXE5CyrSC2ONMzZIgNH3+85eThDB1Ql/kkdbDs=;
        b=ET79V5CijkgXPXDiLAg11yQrGmVf2IgK5vcdlUyM9rp4AsEnaN2dcz6qJaHwpHBuDx
         k2Qe5QRevsH+ZAE/TSjMr8TjloKtPOMGKq1XlD6hIOerjDIepAU9Z5wMFPK4brJtGYVo
         KfsySRThtGDTSnvPrYtpUgFtzBhY+vWzJ0pv4=
In-Reply-To: <9b2b86520903230250q15ffd726k8f20bb13f8321f22-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Eric Anholt <eric-WhKQ6XTQaPysTnJN9+BGXg@public.gmane.org>
Cc: dri-devel-5NWGOfrQmneRv+LV9MX5uipxlwaOVQ5f@public.gmane.org, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, linux-kernel <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On 3/23/09, Alan Jenkins <sourcejedi.lkml-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org> wrote:
> On 10/27/08, Eric Anholt <eric-WhKQ6XTQaPysTnJN9+BGXg@public.gmane.org> wrote:
>> On Mon, 2008-10-27 at 14:27 +0000, Alan Jenkins wrote:
>>> What does this mean, should I do anything about it?  Is tiling nice to
>>> have?
>>>
>>> It sounds like GEM broke something - though maybe it just added a more
>>> verbose error report.
>>>
>>> System: EeePC 701
>>> Kernel: v2.6.28-rc1-5-g23cf24c
>>> Chipset: Intel mobile 915G-something
>>> Regretably necessary kernel boot option: noapic
>>>
>>>
>>> [    1.438441] Linux agpgart interface v0.103
>>> [    1.438441] agpgart-intel 0000:00:00.0: Intel 915GM Chipset
>>> [    1.438441] agpgart-intel 0000:00:00.0: detected 7932K stolen memory
>>> [    1.443353] agpgart-intel 0000:00:00.0: AGP aperture is 256M @
>>> 0xd0000000
>>> [    1.443353] [drm] Initialized drm 1.1.0 20060810
>>> [    1.443353] pci 0000:00:02.0: PCI INT A -> Link[LNKA] -> GSI 5
>>> (level, low) -> IRQ 5
>>> [    1.443353] pci 0000:00:02.0: setting latency timer to 64
>>> [    1.443353] [drm:i915_gem_detect_bit_6_swizzle] *ERROR* Couldn't read
>>> from MCHBAR.  Disabling
>>> tiling.
>>
>> This means that something went wrong with our detection of the
>> CPU-versus-GPU tiling swizzling mode, and object tiling under GEM will
>> be disabled as a result.  I should get access to an eee 7xx on Thursday
>> to see what's up with it -- it's supposed to be just a normal 915gm as
>> far as I know.
>
> Any news about this tiling error?
>
> It's already been reported as a bug in Ubuntu Jaunty, in the belief
> that it "reduces video performance" [1], and is also mentioned on a
> similar bug in Fedora [2].
>
> [1] <https://bugzilla.redhat.com/show_bug.cgi?id=444328#c37>
> [2]
> <https://bugs.launchpad.net/ubuntu/+source/xserver-xorg-video-intel/+bug/329266>

Ah, I should also mention that I still see the error on the latest RC,
2.6.29-rc8.

Alan
