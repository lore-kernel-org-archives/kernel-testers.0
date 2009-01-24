From: Alan Jenkins <alan-jenkins@tuffmail.co.uk>
Subject: Re: BISECTED: 2.6.29-rc2 regression: hibernation hang on eeepc-701
Date: Sat, 24 Jan 2009 11:15:17 +0000
Message-ID: <497AF845.2000002@tuffmail.co.uk>
References: <9b2b86520901180345j434eacbdn7386958991ee50b@mail.gmail.com> <200901222305.25824.rjw@sisk.pl> <497991CC.9030200@tuffmail.co.uk> <200901232306.33309.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1755559AbZAXLLS@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=gamma;
        h=domainkey-signature:received:received:sender:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=pAPYblUQUoRGZREHQA9KROljcJrACidwOSZmfrWQlVY=;
        b=agBK02DDvxS5mgEMjGXYiQTf9lhTszmNIR7QSWvp4k5zsj/9irLhOXQ2sP2lehyJ3V
         ohBqcZCJa9SSVzYu6FzrRQttqNrjnYOqs7Hd0Wn0JnhTuPQb4b5m0R7ApIw4uNZ3ms3k
         HqHlvx6sd/O0Vr2uie+Ix7w8ZtSU1GRHuPrJ4=
In-Reply-To: <200901232306.33309.rjw@sisk.pl>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: kernel-testers@vger.kernel.org, linux-kernel@vger.kernel.org, linux-pm@lists.linux-foundation.org, Pavel Machek <pavel@suse.cz>, Jesse Barnes <jbarnes@virtuousgeek.org>

Rafael J. Wysocki wrote:
> On Friday 23 January 2009, Alan Jenkins wrote:
>   
>> Rafael J. Wysocki wrote:
>>     
>>> On Thursday 22 January 2009, Alan Jenkins wrote:
>>>   
>>>       
>>>> Rafael J. Wysocki wrote:
>>>>     
>>>>         
>>>>> On Thursday 22 January 2009, Alan Jenkins wrote:
>>>>>   
>>>>>       
>>>>>           
>>>>>> Alan Jenkins wrote:
>>>>>>     
>>>>>>         
>>>>>>             
>>>>>>> Hibernation hangs just after writing the image.  With s2disk I can see
>>>>>>> this from the console messages.  The same hang happens with kernel
>>>>>>> swsusp ('echo disk | sudo tee /sys/power/state'), and I can see that
>>>>>>> the image has been written from the HDD led.
>>>>>>>
>>>>>>> In either case, I can still hard-power-off and resume from hibernation.
>>>>>>>
>>>>>>> It doesn't hang if I use the shutdown method (either 'echo shutdown |
>>>>>>> sudo tee /sys/power/disk' or  's2disk -P "shutdown method=shutdown"').
>>>>>>>   
>>>>>>>       
>>>>>>>           
>>>>>>>               
>>>>>> I've bisected this to commit 571ff7584bb9e05fca0eb79752ae55a46faf3a98. 
>>>>>> It doesn't revert cleanly from RC2.
>>>>>>
>>>>>> I think it's distinct from the other two reported suspend regressions. 
>>>>>> I'm not using acpi-cpufreq, and the issue doesn't affect resume.
>>>>>>     
>>>>>>         
>>>>>>             
>>>>> It looks distinct.
>>>>>
>>>>> Do you suspend this box to RAM and does it work?
>>>>>   
>>>>>       
>>>>>           
>>>> Yes, I do use STR on it occasionally, and it still works in RC2.
>>>>
>>>>     
>>>>         
>>>>> Please retest with the appended patch applied.
>>>>>   
>>>>>       
>>>>>           
>>>> That fixes it.
>>>>     
>>>>         
>>> OK, it won't hurt to apply it.
>>>
>>> Still, the hardware or the BIOS in your box seems to be broken, or both, so I'd
>>> like to debug it a bit more if you don't mind.
>>>
>>> Can you please test the patch below instead of the previous one?
>>>   
>>>       
>> It hangs at the same point as the unpatched RC2.  As before, it doesn't
>> hang if I use "shutdown" instead of "platform".
>>
>> Going by sysfs, I have 4 PCI devices without a kernel driver.
>>
>> 8086:2592   Mobile 915 Express Graphics Controller
>> 8086:2792   Mobile 915 Express Graphics Controller (driven by X)
>> 8086:2448   82801 Mobile PCI Bridge
>> 8086:2641   82801FBM (ICH6M) LPC Interface Bridge
>>     
>
> The bridges shouldn't be affected, so I bet on the graphics.
>
> It seems that the BIOS doesn't expect it to be in D3 while entering S4,
> although it apparently doesn't mind it to be in D3 while entering S3.
>
> I blame the Asus BIOS writers. ;-)
>   

Wouldn't Windows normally put it into D3?  There are many reports of  
successful hibernation under Windows on this hardware.  The motivation 
being that S3 drains the battery in <24 hours.  (Fewer people hibernate 
on linux because you only have a 4G SSD, so a swap partition wastes a 
lot of space, and most installers can't set up swap files).

Also it sounds like it would break when the linux kernel mode setting 
driver is used.  I thought kernel mode setting was going to make suspend 
_more_ reliable :-).

So in the long term I think we either need to find a more specific root 
cause, or implement a PCI quirk for this quirky machine.

Thanks
Alan
