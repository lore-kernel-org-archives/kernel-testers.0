From: Joao Correia <joaomiguelcorreia-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #13660] Crashes during boot on 2.6.30 / 2.6.31-rc, random 
	programs
Date: Tue, 7 Jul 2009 15:22:57 +0100
Message-ID: <a5d9929e0907070722j563cf485j720274e776f736e4@mail.gmail.com>
References: <etTXaRqGgAC.A.SaE.6iASKB@chimera> <5Hhc7UkUKEO.A.5zE.DjASKB@chimera> 
	<a5d9929e0907011336g31599a29hca3c204f1b53b775@mail.gmail.com> 
	<2375c9f90907070705p1ae6ebe4x61bda34dd072c1c@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :from:date:message-id:subject:to:cc:content-type
         :content-transfer-encoding;
        bh=ExrnTDgcONf21T63eV6oGVyypNo3gcUXI/1Z+uJyIl4=;
        b=uG9mPEcVis6c9doKky3cjKs0hRCZmHjHU/JqIbFGUOawvQtVg5guSMhFcHnEzdBk9b
         q4ZqUJJoe14OB/ibBHcGo230xlSGdex9dz5QUFYRRAqnDEROq+m9veWoV5WYLBY8iOEp
         WYLMKa5SEZde9w0gLPw8d7knX3QhW6+BK3to0=
In-Reply-To: <2375c9f90907070705p1ae6ebe4x61bda34dd072c1c-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: =?ISO-8859-1?Q?Am=E9rico_Wang?= <xiyou.wangcong-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

Already testing the changes, just to see if something else breaks.

Any special notes on the patch (a basic guideline info on patches
would be great, just so i dont mess it up)? Never submited one before.

Joao Correia

On Tue, Jul 7, 2009 at 3:05 PM, Am=E9rico Wang<xiyou.wangcong-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org=
> wrote:
> On Thu, Jul 2, 2009 at 4:36 AM, Joao Correia<joaomiguelcorreia@gmail.=
com> wrote:
>> No formal patch has been sent yet, that i am aware of. I have made
>> some changes following suggestion by Americo Wang advise, to the
>> following:
>>
>> (patch by Ingo)
>>
>> diff --git a/kernel/lockdep_internals.h b/kernel/lockdep_internals.h
>> index 699a2ac..031f4c6 100644
>> --- a/kernel/lockdep_internals.h
>> +++ b/kernel/lockdep_internals.h
>> @@ -65,7 +65,7 @@ enum {
>> =A0* Stack-trace: tightly packed array of stack backtrace
>> =A0* addresses. Protected by the hash_lock.
>> =A0*/
>> -#define MAX_STACK_TRACE_ENTRIES =A0 =A0 =A0 =A0262144UL
>> +#define MAX_STACK_TRACE_ENTRIES =A0 =A0 =A0 =A01048576UL
>>
>> =A0extern struct list_head all_lock_classes;
>> =A0extern struct lock_chain lock_chains[];
>>
>> and afterwards, a new bug popped up, solved by changing
>>
>> include/linux/sched.h
>>
>> # define MAX_LOCK_DEPTH 48UL
>>
>> to
>>
>> # define MAX_LOCK_DEPTH 96UL
>>
>>
>> I have now found a third limit bug, related to MAX_LOCKDEP_CHAINS,
>> which was hidden so far, which im trying to raise and replicate. Thi=
s
>> is being discussed in detail in another message exchange on the lkml=
,
>> between me and Americo.
>
> How about changing MAX_LOCKDEP_CHAINS_BITS to 16?
>
> kernel/lockdep_internals.h:59:#define MAX_LOCKDEP_CHAINS_BITS =A0 15
>
> And can you make a complete patch and send it to lkml with Peter and =
me
> Cc'ed?
>
> Thank you!
>
