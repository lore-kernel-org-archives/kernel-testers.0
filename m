From: Jiri Slaby <jirislaby-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: pnp changes -> suspend oops [Was: 2.6.26-rc5-mm2]
Date: Thu, 12 Jun 2008 23:57:58 +0200
Message-ID: <48519BE6.5080107@gmail.com>
References: <20080609223145.5c9a2878.akpm@linux-foundation.org> <200806121522.44199.bjorn.helgaas@hp.com> <48519782.9070306@gmail.com> <200806121557.28505.bjorn.helgaas@hp.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :x-enigmail-version:content-type:content-transfer-encoding;
        bh=wX2Icpnhfefre22QxWJqYih+TVEflBiUmDq6HKU3pWs=;
        b=pCVmnZnTB+ix+1VJc0w+h9stx2oGrh42tggcshPPnwfYvNHLzITZfxB8mwHExVE6DJ
         EksxJ6MxSW4VE0u47diPxgGxB7F9yu8qvEk/+hKXE73Bui/7xYoVvGECxWyrUw3DUJsh
         cg8Vpy2g32X/b+BkPQF1RcRHzYG47NadMYpC8=
In-Reply-To: <200806121557.28505.bjorn.helgaas-VXdhtT5mjnY@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Bjorn Helgaas <bjorn.helgaas-VXdhtT5mjnY@public.gmane.org>
Cc: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On 06/12/2008 11:57 PM, Bjorn Helgaas wrote:
> On Thursday 12 June 2008 03:39:14 pm Jiri Slaby wrote:
>> On 06/12/2008 11:22 PM, Bjorn Helgaas wrote:
>>> On Thursday 12 June 2008 03:10:04 pm Jiri Slaby wrote:
>>>> On 06/11/2008 09:03 PM, Bjorn Helgaas wrote:
>>>>> Before you go to all the trouble of bisecting it, can you turn on
>>>>> CONFIG_PNP_DEBUG and try the following debug patch?  I think this
>>>>> will prevent the oops, but it's just papering over the real problem,
>>>>> so please capture the complete dmesg log.
>>>> ACPI: PCI interrupt for device 0000:00:02.0 disabled
>>>> serial 00:07: disabled
>>>> serial 00:06: disabled
>>>> ACPI handle has no context!
>>>> ACPI: PCI interrupt for device 0000:00:1d.7 disabled
>>>> ...
>>>> serial 00:06:   no dma resource to encode!
>>>> serial 00:06: activated
>>>> serial 00:07:   no dma resource to encode!
>>>> serial 00:07: activated
>>>> ACPI: PCI Interrupt 0000:00:02.0[A] -> GSI 16 (level, low) -> IRQ 16
>>> Interesting.  I wonder why a serial device would have a DMA resource.
>>> We encode resources by following a template from _CRS, so evidently
>>> that template had a DMA resource.  Or something deeper is wrong.
>>>
>>> Can you send me the rest of that dmesg log?
>> Below.
> 
> Thanks, but it looks like CONFIG_PNP_DEBUG is not turned on.  Can
> you turn that on and capture the log again, please?

Sorry, too tired, so I overlooked it. Tomorrow. Thanks.
--
To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
