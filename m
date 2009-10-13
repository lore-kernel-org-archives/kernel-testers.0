From: "Justin P. Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #14379] ACPI Warning for _SB_.BAT0._BIF: Converted Buffer
 to   expected String
Date: Mon, 12 Oct 2009 20:12:11 -0700
Message-ID: <4AD3F00B.3030802@gmail.com>
References: <zJ_pXHNwoHC.A.akB.Aal0KB@chimera> <1255318556.11664.11.camel@minggr.sh.intel.com> <4AD2A97A.3020909@gmail.com> <200910122358.42255.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=jv32kJqlzaNN1zNK1vQ45aRSTm6kE8nSfTaa3CiaskU=;
        b=ofVd5knNinN5y65M8XUz+HyYfLT/n7QLHoqHmCOwIgF7s2i4e2ul/XfsdXy9cWBqqo
         pHGA+Lkx4otRx/WuLI0X4XDgR9nSQrOZuQ8+9ZYvQ3gfGvjhNVW1qOTwdNxZe4H2wZoC
         aaGaJUE3pcVGUcDVEX9IpLlV1hQvJjtE4hrJ0=
In-Reply-To: <200910122358.42255.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Lin Ming <ming.m.lin-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

Rafael J. Wysocki wrote:
> On Monday 12 October 2009, Justin P. Mattock wrote:
>    
>> Lin Ming wrote:
>>      
>>> On Mon, 2009-10-12 at 11:14 +0800, Justin Mattock wrote:
>>>
>>>        
>>>> On Sun, Oct 11, 2009 at 3:22 PM, Rafael J. Wysocki<rjw-KKrjLPT3xs0@public.gmane.org>   wrote:
>>>>
>>>>          
>>>>> This message has been generated automatically as a part of a report
>>>>> of recent regressions.
>>>>>
>>>>> The following bug entry is on the current list of known regressions
>>>>> from 2.6.31.  Please verify if it still should be listed and let me know
>>>>> (either way).
>>>>>
>>>>>
>>>>> Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=14379
>>>>> Subject         : ACPI Warning for _SB_.BAT0._BIF: Converted Buffer to expected String
>>>>> Submitter       : Justin Mattock<justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
>>>>> Date            : 2009-10-08 21:46 (4 days old)
>>>>> References      : http://marc.info/?l=linux-kernel&m=125504031328941&w=4
>>>>>
>>>>>
>>>>>
>>>>>
>>>>>            
>>>> pulled rc4 today and the warning is still present.
>>>> here is the results of git bisect:
>>>>
>>>>          
>>> Patch at http://bugzilla.kernel.org/show_bug.cgi?id=14379#c1 fixes the
>>> warning.
>>>
>>> Actually, the _BIF warning was fixed at commit
>>> e899b6485c332aa2d7510739507ab5e5d7b28e59.
>>> See http://bugzilla.kernel.org/show_bug.cgi?id=11822#c14
>>>
>>> I made a mistake at the cleanup of predefined method table so the
>>> warning shows up again.
>>>
>>> Lin Ming
>>>
>>>
>>>        
>> Cool, I can give that a try.
>> then I guess just leave this open(bugreport) until this patch
>> http://bugzilla.kernel.org/show_bug.cgi?id=14379#c1
>> gets pushed into the main tree then close the bugreport.
>>      
>
> I updated the bug entry with the patch information.
>
> Thanks,
> Rafael
>
>    
o.k. after somehow blowing my system up, I'm up and
running. Anyways I applied that patch and yes it works.

Justin P. Mattock
