From: Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Subject: Re: BISECTED: 2.6.29-rc2 regression: hibernation hang on eeepc-701
Date: Thu, 22 Jan 2009 13:23:05 +0000
Message-ID: <49787339.7080900@tuffmail.co.uk>
References: <9b2b86520901180345j434eacbdn7386958991ee50b@mail.gmail.com> <497858E1.5070303@tuffmail.co.uk> <200901221344.16178.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=gamma;
        h=domainkey-signature:received:received:sender:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=xvb8iRWG/otGE6Rj+MYqlj5RV7kuCSbn6Rc05WA+2T4=;
        b=RuUQqFQnKT7A1FinZKzy+oHk9aEm3Ybr1JK3pDFPfjqIgGoBgym7Jp0xHwz03mfT32
         m6zvg3A5lCMrx9Huy4lTTBuHobkRQnL3rL54IcEanSNWOlHxrQrhasCXLO5GvjhqnDTy
         Yk1btajn4lGxdtn/K2dQTBJjfcI6XCDyUtKdA=
In-Reply-To: <200901221344.16178.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org, Pavel Machek <pavel-AlSwsSmVLrQ@public.gmane.org>, Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>

Rafael J. Wysocki wrote:
> On Thursday 22 January 2009, Alan Jenkins wrote:
>   
>> Alan Jenkins wrote:
>>     
>>> Hibernation hangs just after writing the image.  With s2disk I can see
>>> this from the console messages.  The same hang happens with kernel
>>> swsusp ('echo disk | sudo tee /sys/power/state'), and I can see that
>>> the image has been written from the HDD led.
>>>
>>> In either case, I can still hard-power-off and resume from hibernation.
>>>
>>> It doesn't hang if I use the shutdown method (either 'echo shutdown |
>>> sudo tee /sys/power/disk' or  's2disk -P "shutdown method=shutdown"').
>>>   
>>>       
>> I've bisected this to commit 571ff7584bb9e05fca0eb79752ae55a46faf3a98. 
>> It doesn't revert cleanly from RC2.
>>
>> I think it's distinct from the other two reported suspend regressions. 
>> I'm not using acpi-cpufreq, and the issue doesn't affect resume.
>>     
>
> It looks distinct.
>
> Do you suspend this box to RAM and does it work?
>   
Yes, I do use STR on it occasionally, and it still works in RC2.

> Please retest with the appended patch applied.
>   

That fixes it.

Thanks!
Alan

> Thanks,
> Rafael
>
>
> ---
>  drivers/pci/pci-driver.c |    5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>
> Index: linux-2.6/drivers/pci/pci-driver.c
> ===================================================================
> --- linux-2.6.orig/drivers/pci/pci-driver.c
> +++ linux-2.6/drivers/pci/pci-driver.c
> @@ -660,7 +660,10 @@ static int pci_pm_poweroff(struct device
>  	if (pci_has_legacy_pm_support(pci_dev))
>  		return pci_legacy_suspend(dev, PMSG_HIBERNATE);
>  
> -	if (drv && drv->pm && drv->pm->poweroff) {
> +	if (!drv || !drv->pm)
> +		return 0;
> +
> +	if (drv->pm->poweroff) {
>  		error = drv->pm->poweroff(dev);
>  		suspend_report_result(drv->pm->poweroff, error);
>  	}
>
>   
