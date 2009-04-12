From: Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Subject: [BISECTED] 20 ACPI interrupts per second on EEEPC 4G
Date: Sun, 12 Apr 2009 16:54:34 +0100
Message-ID: <49E20EBA.2090708@tuffmail.co.uk>
References: <49DF6835.9040501@tuffmail.co.uk> <49DFE345.3010109@gmail.com> <49E05F83.2090500@tuffmail.co.uk>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=gamma;
        h=domainkey-signature:received:received:sender:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=CeI43sviA8B/53Q4yRE4rDwSq2skFWTA/FkXQwLECes=;
        b=RqHs5VVXBl3MArBVdkKyyHNmw9uI1YdOyIo4aLQV6G5sLqq8dKX04iUFrUHm2OUmV8
         8RZhUZn4HMJup92b8m0ipLhMV3yz/d/+HOlfs4bnhN24DAI58Q87Oqy2g/hqnHsE23ox
         DcnG4r6HRaHzObxdbF+7roriTE6uDAPGMsSfY=
In-Reply-To: <49E05F83.2090500-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Matthew Garrett <mjg59-1xO5oi07KQx4cg9Nei1l7Q@public.gmane.org>
Cc: Alexey Starikovskiy <aystarik-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, linux-acpi-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

Alan Jenkins wrote:
> Alexey Starikovskiy wrote:
>> Alan Jenkins wrote:
>>> On latest git, powertop shows 20 ACPI interrupts per second. 
>>> Previously, this was closer to 1 per second.  See attached output (a
>>> vs b, "a" is from 2.6.29-rc8).
>>>
>>> This is from a pretty sparse KDE desktop.  Normally I run
>>> gnome-power-manager, but I killed it to make sure that wasn't
>>> causing any problems.
>>>
>
>>> gpe18:   60975  enabled
>>> gpe_all:   60975
>>> sci:   60975
>>>
>>> which I presume means lots of EC interrupts.
>>>
>>> [    0.134068] ACPI: EC: GPE = 0x18, I/O: command/status = 0x66,
>>> data = 0x62
>>>
>
>> This patch looks to be a suspect:
>> 34ff4dbccccce54c83b1234d39b7ad9e548a75dd,
>> Please check if reversing it helps
>
> No, I still get 20 ACPI interrupts per second.
>
> I tried without powertop, just in case that was provoking it, but it
> still happens:
>
> alan@alan-eeepc:/sys/firmware/acpi/interrupts$ cat sci; sleep 5; cat sci
>    2583
>    2680

I did wonder whether this was due to thermal polling.  So look what I
found with bisection :-).


b1569e99c795bf83b4ddf41c4f1c42761ab7f75e is first bad commit
commit b1569e99c795bf83b4ddf41c4f1c42761ab7f75e
Author: Matthew Garrett <mjg59-1xO5oi07KQx4cg9Nei1l7Q@public.gmane.org>
Date:   Wed Dec 3 17:55:32 2008 +0000

    ACPI: move thermal trip handling to generic thermal layer

    The ACPI code currently carries its own thermal trip handling,
meaning that
    any other thermal implementation will need to reimplement it. Move
the code
    to the generic thermal layer.


Regards
Alan
