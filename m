From: Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Subject: Re: [Bug #13058] First hibernation attempt fails
Date: Sat, 18 Apr 2009 13:57:53 +0100
Message-ID: <49E9CE51.8000803@tuffmail.co.uk>
References: <EJaiQ4Wfaz.A.3YG.4v85JB@chimera> <alpine.LFD.2.00.0904171408081.4042@localhost.localdomain> <49E98C4C.8090007@tuffmail.co.uk> <200904181438.18166.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=gamma;
        h=domainkey-signature:received:received:sender:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=0YOxuyHV6eVX5inYjNnU3RphjUStzM7nxPCLY70BQVg=;
        b=Pp1Nks7qGq03csC3HcMjfC20dWApyIhqkQcsHkCJu4baBeeV1WQhp+bjmWO64LYpJF
         lKYzSQR2zTFUJlcI7iaxpYvP1r4RAkgdKMTnIqSRaTMGeAklzTlh+vcYseHz5Rxwd0Dm
         kI8ryazOuoBv51JzJAZs2egknhs/RsLIYhmds=
In-Reply-To: <200904181438.18166.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Jens Axboe <jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

Rafael J. Wysocki wrote:
> On Saturday 18 April 2009, Alan Jenkins wrote:
>   
>> Linus Torvalds wrote:
>>     
>>> On Fri, 17 Apr 2009, Rafael J. Wysocki wrote:
>>>   
>>>       
>>>> Can you please try to reproduce the problem with the appended debug patch
>>>> applied and send the output of dmesg to me?
>>>>     
>>>>         
>>> Maybe something like this instead (or in addition to).
>>>
>>> It does "show_mem()" when memory shrinking fails. It will show a _lot_ of 
>>> data.
>>>
>>> Untested, but trivial.
>>>
>>> 		Linus
>>> ---
>>>   
>>>       
>> Ok, I applied both your and Rafael's debug patches.  dmesg attached.
>>
>> After the failed hibernation, I noticed my touchpad wasn't working.  But 
>> I think that's something else.  I had another go and couldn't reproduce 
>> that.  It's happened to me once before while testing 2.6.30-; I've also 
>> had the keyboard stop working at least once.  I'm hoping it's the same 
>> bug as "20 ACPI interrupts per second on EEEPC" bug.  It could be 
>> overloading my bug-ridden EC, which also acts as the keyboard controller.
>>     
>
> Thanks for testing!
>
> Clearly, sc.nr_reclaimed is reset in each iteration of the loop in
> shrink_all_memory():
>
> [   61.135207] PM: Shrinking memory...  <6>before: sc.nr_reclaimed = 0
> [   61.180993] pass = 0, prio = 12, sc.nr_reclaimed = 0
> [   61.181004] pass = 0, prio = 11, sc.nr_reclaimed = 0
> [   61.181014] pass = 0, prio = 10, sc.nr_reclaimed = 0
> [   61.181024] pass = 0, prio = 9, sc.nr_reclaimed = 0
> [   61.181033] pass = 0, prio = 8, sc.nr_reclaimed = 0
> [   61.181043] pass = 0, prio = 7, sc.nr_reclaimed = 0
> [   61.186509] pass = 0, prio = 6, sc.nr_reclaimed = 0
> [   61.186525] pass = 0, prio = 5, sc.nr_reclaimed = 0
> [   61.186534] pass = 0, prio = 4, sc.nr_reclaimed = 0
> [   61.186544] pass = 0, prio = 3, sc.nr_reclaimed = 0
> [   61.333383] pass = 0, prio = 2, sc.nr_reclaimed = 7746
> [   61.436711] pass = 0, prio = 1, sc.nr_reclaimed = 1957
> [   61.556712] pass = 0, prio = 0, sc.nr_reclaimed = 4528
> [   61.556729] pass = 1, prio = 12, sc.nr_reclaimed = 0
> [   61.556739] pass = 1, prio = 11, sc.nr_reclaimed = 0
> [   61.556749] pass = 1, prio = 10, sc.nr_reclaimed = 0
> [   61.556759] pass = 1, prio = 9, sc.nr_reclaimed = 0
> [   61.556768] pass = 1, prio = 8, sc.nr_reclaimed = 0
> [   61.556778] pass = 1, prio = 7, sc.nr_reclaimed = 0
> [   61.556787] pass = 1, prio = 6, sc.nr_reclaimed = 0
> [   61.556797] pass = 1, prio = 5, sc.nr_reclaimed = 0
> [   61.556806] pass = 1, prio = 4, sc.nr_reclaimed = 0
> [   61.556816] pass = 1, prio = 3, sc.nr_reclaimed = 0
> [   61.556825] pass = 1, prio = 2, sc.nr_reclaimed = 0
> [   61.556835] pass = 1, prio = 1, sc.nr_reclaimed = 0
> [   61.595841] pass = 1, prio = 0, sc.nr_reclaimed = 0
> [   61.595854] pass = 2, prio = 12, sc.nr_reclaimed = 0
> [   61.595864] pass = 2, prio = 11, sc.nr_reclaimed = 0
> [   61.595873] pass = 2, prio = 10, sc.nr_reclaimed = 0
> [   61.595883] pass = 2, prio = 9, sc.nr_reclaimed = 0
> [   61.710044] pass = 2, prio = 8, sc.nr_reclaimed = 2895
> [   61.710062] pass = 2, prio = 7, sc.nr_reclaimed = 0
> [   61.710072] pass = 2, prio = 6, sc.nr_reclaimed = 0
> [   61.710081] pass = 2, prio = 5, sc.nr_reclaimed = 0
> [   61.710091] pass = 2, prio = 4, sc.nr_reclaimed = 0
> [   61.710100] pass = 2, prio = 3, sc.nr_reclaimed = 0
> [   61.710110] pass = 2, prio = 2, sc.nr_reclaimed = 0
> [   61.710119] pass = 2, prio = 1, sc.nr_reclaimed = 0
> [   61.823378] pass = 2, prio = 0, sc.nr_reclaimed = 1802
> [   61.823396] pass = 3, prio = 12, sc.nr_reclaimed = 0
> [   61.823406] pass = 3, prio = 11, sc.nr_reclaimed = 0
> [   61.823416] pass = 3, prio = 10, sc.nr_reclaimed = 0
> [   61.823425] pass = 3, prio = 9, sc.nr_reclaimed = 0
> [   61.823435] pass = 3, prio = 8, sc.nr_reclaimed = 0
> [   61.823444] pass = 3, prio = 7, sc.nr_reclaimed = 0
> [   61.823454] pass = 3, prio = 6, sc.nr_reclaimed = 0
> [   61.823464] pass = 3, prio = 5, sc.nr_reclaimed = 0
> [   61.823473] pass = 3, prio = 4, sc.nr_reclaimed = 0
> [   61.823483] pass = 3, prio = 3, sc.nr_reclaimed = 0
> [   61.823492] pass = 3, prio = 2, sc.nr_reclaimed = 0
> [   61.823502] pass = 3, prio = 1, sc.nr_reclaimed = 0
> [   62.586707] pass = 3, prio = 0, sc.nr_reclaimed = 2716
> [   62.608037] pass = 4, prio = 12, sc.nr_reclaimed = 3070
> [   62.634644] pass = 4, prio = 11, sc.nr_reclaimed = 5048
> [   62.638782] pass = 4, prio = 10, sc.nr_reclaimed = 192
> [   62.740052] pass = 4, prio = 9, sc.nr_reclaimed = 0
> [   62.843385] pass = 4, prio = 8, sc.nr_reclaimed = 640
> [   62.946726] pass = 4, prio = 7, sc.nr_reclaimed = 640
> [   63.046711] pass = 4, prio = 6, sc.nr_reclaimed = 640
> [   63.146717] pass = 4, prio = 5, sc.nr_reclaimed = 608
> [   63.246712] pass = 4, prio = 4, sc.nr_reclaimed = 600
> [   63.346704] pass = 4, prio = 3, sc.nr_reclaimed = 128
> [   63.446698] pass = 4, prio = 2, sc.nr_reclaimed = 0
> [   63.546705] pass = 4, prio = 1, sc.nr_reclaimed = 0
> [   63.646698] pass = 4, prio = 0, sc.nr_reclaimed = 0
> [   63.646708] after: sc.nr_reclaimed = 0
> [   63.646715] shrink_all_memory(10000) failed
>
> which obviously is done by shrink_all_zones().  Sigh.
>
> The appended patch should help, please verify.
>   

Yes, that fixes it.

Thanks
Alan
