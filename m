From: Alan Jenkins <alan-jenkins@tuffmail.co.uk>
Subject: Re: [BISECTED] EEE PC hangs when booting off battery
Date: Tue, 14 Apr 2009 16:37:37 +0100
Message-ID: <49E4ADC1.7010503@tuffmail.co.uk>
References: <49E065CF.6040408@tuffmail.co.uk>	<49E44415.1040500@tuffmail.co.uk>	<49E456B5.6030006@tuffmail.co.uk>	<200904140859.02188.bjorn.helgaas@hp.com> <20090414081728.10de978a@infradead.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-acpi-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=gamma;
        h=domainkey-signature:received:received:sender:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=nkN+MLYsp9TN/5ZMCpk3TkD4tkRb2Nj1/AJ3SD//+0k=;
        b=WEntXJrFc/eKNkjDyMEXpTqXrpuYKdAC2IOsHsVoKMBhZMzrdRAQMzv1VyBpsUe69A
         cqgb3wS30dCuk5Zo9lKmK4LySqiom6armQ6NLS6nORDia69g8amiYj3yEDO2L0P/XN3H
         IMTCOBjq4B6blLg/6ig53q/PfaQS6E+0uKbbs=
In-Reply-To: <20090414081728.10de978a@infradead.org>
Sender: linux-acpi-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Arjan van de Ven <arjan@infradead.org>
Cc: Bjorn Helgaas <bjorn.helgaas@hp.com>, linux-acpi@vger.kernel.org, linux-kernel <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Venkatesh Pallipadi <venkatesh.pallipadi@intel.com>

Arjan van de Ven wrote:
> On Tue, 14 Apr 2009 08:59:01 -0600
> Bjorn Helgaas <bjorn.helgaas@hp.com> wrote:
>
>   
>> I can't help with the real problem of why the asynchronous battery
>> init causes the hang.
>>     
>
> that got fixed already for the module case.
>   

Are you not thinking of the BUG due to calling __init functions from async?

I have a distinct _hang_ which occurs in v2.6.30-rc1-205-g08f4416.  Do
you have a fix for that I can try?

Thanks
Alan

