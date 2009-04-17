From: Alexey Starikovskiy <aystarik@gmail.com>
Subject: Re: [BISECTED] 20 ACPI interrupts per second on EEEPC 4G
Date: Sat, 18 Apr 2009 00:54:09 +0400
Message-ID: <49E8EC71.2010104@gmail.com>
References: <49DF6835.9040501@tuffmail.co.uk> <49DFE345.3010109@gmail.com> <49E05F83.2090500@tuffmail.co.uk> <49E20EBA.2090708@tuffmail.co.uk>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-acpi-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=cTJrm6c1wxUBmA+Isc9bpKwLtmWQoqV2icUjmx6mRT8=;
        b=b0OVlwhJIwXRFzVh1GEIVe+uwr5sxl3nKAyjt33pMPLkBfbn/PDDxgMAXQ8yStpV4I
         +jdFNHWUT+tGb5DMegKeH8UP57icSEGASGvyNPOc95l3t70X76TPhcmI0CqmAOFGjKyp
         Soi/PZ4BSUSqeFPKkYBb2FIsFSBVnzRohgL80=
In-Reply-To: <49E20EBA.2090708@tuffmail.co.uk>
Sender: linux-acpi-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Alan Jenkins <alan-jenkins@tuffmail.co.uk>
Cc: Matthew Garrett <mjg59@srcf.ucam.org>, linux-acpi@vger.kernel.org, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>

Alan Jenkins wrote:
> Alan Jenkins wrote:
>   
>> Alexey Starikovskiy wrote:
>>     
>>> Alan Jenkins wrote:
>>>       
>>>> On latest git, powertop shows 20 ACPI interrupts per second. 
>>>> Previously, this was closer to 1 per second.  See attached output (a
>>>> vs b, "a" is from 2.6.29-rc8).
>>>>
>>>> This is from a pretty sparse KDE desktop.  Normally I run
>>>> gnome-power-manager, but I killed it to make sure that wasn't
>>>> causing any problems.
>>>>
>>>>         
>>>> gpe18:   60975  enabled
>>>> gpe_all:   60975
>>>> sci:   60975
>>>>
>>>> which I presume means lots of EC interrupts.
>>>>
>>>> [    0.134068] ACPI: EC: GPE = 0x18, I/O: command/status = 0x66,
>>>> data = 0x62
>>>>
>>>>         
>>> This patch looks to be a suspect:
>>> 34ff4dbccccce54c83b1234d39b7ad9e548a75dd,
>>> Please check if reversing it helps
>>>       
>> No, I still get 20 ACPI interrupts per second.
>>
>> I tried without powertop, just in case that was provoking it, but it
>> still happens:
>>
>> alan@alan-eeepc:/sys/firmware/acpi/interrupts$ cat sci; sleep 5; cat sci
>>    2583
>>    2680
>>     
>
> I did wonder whether this was due to thermal polling.  So look what I
> found with bisection :-).
>   
Great!
>
> b1569e99c795bf83b4ddf41c4f1c42761ab7f75e is first bad commit
> commit b1569e99c795bf83b4ddf41c4f1c42761ab7f75e
> Author: Matthew Garrett <mjg59@srcf.ucam.org>
> Date:   Wed Dec 3 17:55:32 2008 +0000
>
>     ACPI: move thermal trip handling to generic thermal layer
>
>     The ACPI code currently carries its own thermal trip handling,
> meaning that
>     any other thermal implementation will need to reimplement it. Move
> the code
>     to the generic thermal layer.
>
>
> Regards
> Alan
>   

