From: "Justin P. Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #14012] latest git fried my x86_64 imac
Date: Thu, 27 Aug 2009 14:01:28 -0700
Message-ID: <4A96F428.3060806@gmail.com>
References: <riPp5fx5ECC.A.2IG.qsGlKB@chimera>	<200908262306.38464.rjw@sisk.pl>	<4A96CA0A.90405@gmail.com>	<200908272145.01901.rjw@sisk.pl> <20090827134756.53359c08.randy.dunlap@oracle.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=pasloqXizOcPofaaOfryEqxjitCU+2vjZocePu0T550=;
        b=sA1sBCZoKiHFOp+XR8pjHOvj0EeM0Cl35s/pNv3V1J3YC75N93hP0ZX5jF1pglfMC5
         nzRjAHGKHu3aVpDgQI2gx4cYXagWufCdio2v7XikOxvqG2WlPuAZDuCU4zGoBmGwjh4b
         krCud42/Hsg1leeSnPcCXyFhV7QPPmxdLtw58=
In-Reply-To: <20090827134756.53359c08.randy.dunlap-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Randy Dunlap <randy.dunlap-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>

Randy Dunlap wrote:
> On Thu, 27 Aug 2009 21:45:01 +0200 Rafael J. Wysocki wrote:
>
>    
>> On Thursday 27 August 2009, Justin P. Mattock wrote:
>>      
>>> Rafael J. Wysocki wrote:
>>>        
>>>> On Wednesday 26 August 2009, Justin P. Mattock wrote:
>>>>
>>>>          
>>>>> Rafael J. Wysocki wrote:
>>>>>
>>>>>            
>>>>>> This message has been generated automatically as a part of a report
>>>>>> of recent regressions.
>>>>>>
>>>>>> The following bug entry is on the current list of known regressions
>>>>>> from 2.6.30.  Please verify if it still should be listed and let me know
>>>>>> (either way).
>>>>>>
>>>>>>
>>>>>> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14012
>>>>>> Subject		: latest git fried my x86_64 imac
>>>>>> Submitter	: Justin P. Mattock<justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
>>>>>> Date		: 2009-08-13 07:20 (13 days old)
>>>>>> References	: http://marc.info/?l=linux-kernel&m=125014080427090&w=4
>>>>>>
>>>>>>
>>>>>>
>>>>>>
>>>>>>
>>>>>>              
>>>>> if I revert this commit:
>>>>> af6af30c0fcd77e621638e53ef8b176bca8bd3b4
>>>>> I can get a normal bootup.
>>>>>
>>>>>            
>>>> Hm, that's
>>>>
>>>> commit af6af30c0fcd77e621638e53ef8b176bca8bd3b4
>>>> Author: Peter Zijlstra<peterz-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>
>>>> Date:   Wed Aug 5 20:41:04 2009 +0200
>>>>
>>>>       ftrace: Fix perf-tracepoint OOPS
>>>>
>>>> I wonder what happens if you compile out ftrace?
>>>>
>>>>
>>>>          
>>>>> As for this  bug, it seems I'm the only
>>>>> hitting this. The system is a fresh LFS build
>>>>> x86_64.
>>>>> In regards to keeping this open
>>>>> not sure, I don't have a problem with closing this
>>>>> and taking the blame as something I did during my build
>>>>> of the system, then if this becomes more frequent
>>>>> then open a new bug.
>>>>>
>>>>>            
>>>> OK, I'll close it for now.
>>>>
>>>> Thanks,
>>>> Rafael
>>>> --
>>>> To unsubscribe from this list: send the line "unsubscribe linux-kernel" in
>>>> the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
>>>> More majordomo info at  http://vger.kernel.org/majordomo-info.html
>>>> Please read the FAQ at  http://www.tux.org/lkml/
>>>>
>>>>
>>>>          
>>> o.k. I tried disabling all of ftrace in the kernel,
>>> unfortunately the only one left
>>> is HAVE_FTRACE_SYSCALLS
>>> which seems to be selected by x86.
>>> seems the system still sticks
>>> without reverting perf-tracepoint oops.
>>>        
>> That's kind of strange.  Can you attach the .config, please?
>>      
>
> That's what arch/x86/Kconfig does:
>
> ### Arch settings
> config X86
> 	def_bool y
> ...
> 	select HAVE_FTRACE_SYSCALLS
>
> It just means that the $arch has that capability, not that it is enabled.
>
>
> ---
> ~Randy
> *** Remember to use Documentation/SubmitChecklist when testing your code ***
>
>    
Alright(see how much of newbie I am),
then disabling ftrace(if its safe to say)
still doesn't resolve the issue
for me then.

best bet, in my honest opinion
is to hold off on anything, until
"if any", other reports start showing up in this manner.
if in the future there is no such reports then it's
probably safe to say I did something wrong.
Then if there is issues later in time by anybody,
then we have an idea of where/what might be the causing this.


Justin P. Mattock
