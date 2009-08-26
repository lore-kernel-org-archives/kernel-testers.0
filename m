From: "Justin P. Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #14012] latest git fried my x86_64 imac
Date: Wed, 26 Aug 2009 14:58:03 -0700
Message-ID: <4A95AFEB.10809@gmail.com>
References: <riPp5fx5ECC.A.2IG.qsGlKB@chimera> <_yaHeGjHEzG.A.NXH.BtGlKB@chimera> <4A9481B9.3070607@gmail.com> <200908262306.38464.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=Bk118BLG72M+5yabI3kjQl0ARZD1oPatpLBE5M51gJU=;
        b=GPsu0NG3Yyj8SyezmMdtjFWzt2gHff+jpzF8/qSX278cr16qiPvwDt5AidStjbWser
         7OD+oOnzicNY7jIBSG9QGFE8WIxjY7czWvjWbhenqT7/dr8lRb5bP4yeHK6Y0QCl6Zgb
         6mvj7HlifDme2FYVrvmOulwERci1u49tp96J8=
In-Reply-To: <200908262306.38464.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>

Rafael J. Wysocki wrote:
> On Wednesday 26 August 2009, Justin P. Mattock wrote:
>    
>> Rafael J. Wysocki wrote:
>>      
>>> This message has been generated automatically as a part of a report
>>> of recent regressions.
>>>
>>> The following bug entry is on the current list of known regressions
>>> from 2.6.30.  Please verify if it still should be listed and let me know
>>> (either way).
>>>
>>>
>>> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14012
>>> Subject		: latest git fried my x86_64 imac
>>> Submitter	: Justin P. Mattock<justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
>>> Date		: 2009-08-13 07:20 (13 days old)
>>> References	: http://marc.info/?l=linux-kernel&m=125014080427090&w=4
>>>
>>>
>>>
>>>
>>>        
>> if I revert this commit:
>> af6af30c0fcd77e621638e53ef8b176bca8bd3b4
>> I can get a normal bootup.
>>      
>
> Hm, that's
>
> commit af6af30c0fcd77e621638e53ef8b176bca8bd3b4
> Author: Peter Zijlstra<peterz-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>
> Date:   Wed Aug 5 20:41:04 2009 +0200
>
>      ftrace: Fix perf-tracepoint OOPS
>
> I wonder what happens if you compile out ftrace?
>
>    
>> As for this  bug, it seems I'm the only
>> hitting this. The system is a fresh LFS build
>> x86_64.
>> In regards to keeping this open
>> not sure, I don't have a problem with closing this
>> and taking the blame as something I did during my build
>> of the system, then if this becomes more frequent
>> then open a new bug.
>>      
>
> OK, I'll close it for now.
>
> Thanks,
> Rafael
> --
> To unsubscribe from this list: send the line "unsubscribe linux-kernel" in
> the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at  http://www.tux.org/lkml/
>
>    
Ill give that a try and see.

Justin P. Mattock
