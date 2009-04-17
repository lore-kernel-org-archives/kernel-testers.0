From: Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Subject: Re: [Bug #13058] First hibernation attempt fails
Date: Fri, 17 Apr 2009 11:46:21 +0100
Message-ID: <49E85DFD.9030306@tuffmail.co.uk>
References: <EJaiQ4Wfaz.A.3YG.4v85JB@chimera> <nY3-4PrO6XH.A.xtB.yw85JB@chimera> <20090417063007.GB4593@kernel.dk> <49E83DC4.8040207@tuffmail.co.uk> <20090417091321.GP4593@kernel.dk> <20090417093359.GQ4593@kernel.dk> <49E84DF8.7030802@tuffmail.co.uk> <20090417094558.GR4593@kernel.dk>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=gamma;
        h=domainkey-signature:received:received:sender:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=KFAfaeixNXkXGV6HQJ6Dn4aOrgihz5LYd/Km6KfF3Qc=;
        b=iwea8S0ZeHuKGEgXHDbtplndIny5/yTeN4rKj8q2u2yV4G8+AQYB2lBW1eVziqoA6f
         +KwQLvEiMyDWuT6L/KG+bk1qB74OyfZZDdnCni5gZYLpcmTpPtYjkAgfgmSSm6imyuAY
         Ju1fGZ2LxgLkeov+ALbGSCjCJtxwQ5YVoGvGw=
In-Reply-To: <20090417094558.GR4593-tSWWG44O7X1aa/9Udqfwiw@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Jens Axboe <jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>

Jens Axboe wrote:
> On Fri, Apr 17 2009, Alan Jenkins wrote:
>   
>> Jens Axboe wrote:
>>     
>>> On Fri, Apr 17 2009, Jens Axboe wrote:
>>>   
>>>       
>>>> On Fri, Apr 17 2009, Alan Jenkins wrote:
>>>>     
>>>>         
>>>>> Jens Axboe wrote:
>>>>>       
>>>>>           
>>>>>> On Thu, Apr 16 2009, Rafael J. Wysocki wrote:
>>>>>>   
>>>>>>         
>>>>>>             
>>>>>>> This message has been generated automatically as a part of a report
>>>>>>> of recent regressions.
>>>>>>>
>>>>>>> The following bug entry is on the current list of known regressions
>>>>>>> from 2.6.29.  Please verify if it still should be listed and let me know
>>>>>>> (either way).
>>>>>>>
>>>>>>>
>>>>>>> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13058
>>>>>>> Subject		: First hibernation attempt fails
>>>>>>> Submitter	: Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
>>>>>>> Date		: 2009-04-10 10:58 (7 days old)
>>>>>>> First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=1faa16d22877f4839bd433547d770c676d1d964c
>>>>>>> References	: http://marc.info/?l=linux-kernel&m=123928022321917&w=2
>>>>>>>     
>>>>>>>           
>>>>>>>               
>>>>>> Alan, is this still a problem?
>>>>>>   
>>>>>>         
>>>>>>             
>>>>> Yup.  Still present in v2.6.30-rc2-195-g9f76208.
>>>>>       
>>>>>           
>>>> Given the somewhat odd nature of the bug and the requirements to trigger
>>>> it, how confident are you in the bisection results?
>>>>
>>>> I'll try and reproduce it here.
>>>>     
>>>>         
>>> I can't reproduce it here. It seems very odd that an ENOMEM would happen
>>> as a consequence of the rq allocation change, it doesn't really change
>>> the allocation at all (and it'll never return -ENOMEM).
>>>
>>> Can you please recheck the git bisect results. It'd be nice if the
>>> hibernation failure would actually log where the problem occured...
>>>   
>>>       
>> Once I found the right conditions (wireless disabled and a specific KDE
>> session), it was 100% reproducible. 
>>
>> Reverting your commit fixed the problem.  I can do another test of that
>> if you like.
>>
>> My _bisection_ was not absolute, rock-solid certain because I only found
>> the right conditions half-way through.  There's always the possibility I
>> would get different results if I redid it properly, from the start.  But
>> I have some experience of this and took care to re-validate my upper &
>> lower bounds.
>>     
>
> Well, if you can and have the time, reproducing the bisect results with
> the same conditions all the way through would definitely help.
>   

I can do that, yes.

As another datapoint:  I tried blindly applying the commit to 2.6.29. 
The resulting kernel was able to hibernate fine the first time.

I'm going to be annoying and try something slightly different.  In
theory, I should be able to find the "first bad commit" where
cherry-picking 1faa16d22 causes a problem.

> Or perhaps Rafael can suggest adding some printk()'s to catch where that
> ENOMEM is coming from. That would help, right now I basically have zero
> clue on where this might be.
>   

