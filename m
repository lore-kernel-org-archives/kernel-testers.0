From: Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Subject: Re: BISECTED: 2.6.29-rc2 regression: hibernation hang on eeepc-701
Date: Fri, 23 Jan 2009 09:45:48 +0000
Message-ID: <497991CC.9030200@tuffmail.co.uk>
References: <9b2b86520901180345j434eacbdn7386958991ee50b@mail.gmail.com> <200901221344.16178.rjw@sisk.pl> <49787339.7080900@tuffmail.co.uk> <200901222305.25824.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=gamma;
        h=domainkey-signature:received:received:sender:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=nc7jWnV+YFDZJwx/zw/xzezmftbJfzgyeCnnhmZLwHo=;
        b=f65faylYAWmUFqJ0aIbB0t3Kcxo9I/MdgK3TXFVfIQNAB2XliKKEOa6UhlEwKQ4adr
         mA97Ofcl+3fC97aPwOfNkj3U83clo53YJnLaOb6SbzhOIdSTGaliU/YG5j/5bB7jtTI7
         LcJsKAC/54V8b1ZHpKeIhefsIOzHcCGJwUqzM=
In-Reply-To: <200901222305.25824.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org, Pavel Machek <pavel-AlSwsSmVLrQ@public.gmane.org>, Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>

Rafael J. Wysocki wrote:
> On Thursday 22 January 2009, Alan Jenkins wrote:
>   
>> Rafael J. Wysocki wrote:
>>     
>>> On Thursday 22 January 2009, Alan Jenkins wrote:
>>>   
>>>       
>>>> Alan Jenkins wrote:
>>>>     
>>>>         
>>>>> Hibernation hangs just after writing the image.  With s2disk I can see
>>>>> this from the console messages.  The same hang happens with kernel
>>>>> swsusp ('echo disk | sudo tee /sys/power/state'), and I can see that
>>>>> the image has been written from the HDD led.
>>>>>
>>>>> In either case, I can still hard-power-off and resume from hibernation.
>>>>>
>>>>> It doesn't hang if I use the shutdown method (either 'echo shutdown |
>>>>> sudo tee /sys/power/disk' or  's2disk -P "shutdown method=shutdown"').
>>>>>   
>>>>>       
>>>>>           
>>>> I've bisected this to commit 571ff7584bb9e05fca0eb79752ae55a46faf3a98. 
>>>> It doesn't revert cleanly from RC2.
>>>>
>>>> I think it's distinct from the other two reported suspend regressions. 
>>>> I'm not using acpi-cpufreq, and the issue doesn't affect resume.
>>>>     
>>>>         
>>> It looks distinct.
>>>
>>> Do you suspend this box to RAM and does it work?
>>>   
>>>       
>> Yes, I do use STR on it occasionally, and it still works in RC2.
>>
>>     
>>> Please retest with the appended patch applied.
>>>   
>>>       
>> That fixes it.
>>     
>
> OK, it won't hurt to apply it.
>
> Still, the hardware or the BIOS in your box seems to be broken, or both, so I'd
> like to debug it a bit more if you don't mind.
>
> Can you please test the patch below instead of the previous one?
>   

It hangs at the same point as the unpatched RC2.  As before, it doesn't
hang if I use "shutdown" instead of "platform".

Going by sysfs, I have 4 PCI devices without a kernel driver.

8086:2592   Mobile 915 Express Graphics Controller
8086:2792   Mobile 915 Express Graphics Controller (driven by X)
8086:2448   82801 Mobile PCI Bridge
8086:2641   82801FBM (ICH6M) LPC Interface Bridge

Thanks
Alan
