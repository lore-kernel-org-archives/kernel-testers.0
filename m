From: Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Subject: Re: [PATCH] [RFC] EEE PC hangs when booting off battery
Date: Sat, 16 May 2009 09:39:05 +0100
Message-ID: <4A0E7BA9.3030205@tuffmail.co.uk>
References: <49E065CF.6040408@tuffmail.co.uk> <49F6DA14.7030608@tuffmail.co.uk> <49F83699.3000307@tuffmail.co.uk> <200905152348.56449.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=gamma;
        h=domainkey-signature:received:received:sender:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=c5c7ZIIy/jw8tbdv4LNE7Eo/yvBRz4IvZmBKdQTjREo=;
        b=B/x2kRNH4eO3LJI4WeJf+2DtodK5Pn7RHfMnF6e8R/zPNxDP3ujDMRefaLJmYd3Uq+
         2b7bSuNcw/Q1kZvNWgYUP2L3HSZmBiYqt9Ies0J0/dc/C5ZK5gfvNn1l5algNKh/guMX
         czjjAjiyE37ZfDWbpW6y0lt9f5ENDrTliAdxE=
In-Reply-To: <200905152348.56449.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: John Linville <linville-2XuSBdqkA4R54TAoqtyWWQ@public.gmane.org>, Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>, "linux-wireless-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-wireless-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Arjan van de Ven <arjan-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>, linux-kernel <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

Rafael J. Wysocki wrote:
> On Wednesday 29 April 2009, Alan Jenkins wrote:
>   
>> Alan Jenkins wrote:
>>     
>>> Johannes Berg wrote:
>>>   
>>>       
>>>> That doesn't seem relevant, this just does some initialisation. However,
>>>> you definitely missed adding a call to wep_free().
>>>>   
>>>>     
>>>>         
>>> Hah, I should have realized something was wrong when I noticed I was
>>> removing more lines that I added. 
>>>
>>> The crypto init does cause the module load:
>>>
>>> wait_for_completion
>>> call_usermodehelper_exec
>>> __request_module
>>> crypto_larval_lookup
>>> ? extract_entropy
>>> crypto_alg_mod_lookup
>>> crypto_alloc_base
>>> ieee80211_wep_init
>>> ieee80211_register_hw
>>>   
>>>       
>> Here's a corrected patch complete with changelog.  If there are no other
>> problems with it, can you please  apply this for 2.6.30 to keep my EeePC
>> regression-free?
>>
>> Thanks
>> Alan
>>
>> ------>
>> From c5e9dc036247e70956d1a28e8850c3810385dda0 Mon Sep 17 00:00:00 2001
>> From: Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
>> Date: Wed, 29 Apr 2009 11:41:24 +0100
>> Subject: [PATCH] mac80211: fix modprobe deadlock by not calling wep_init under rtnl_lock
>>
>>  - ieee80211_wep_init(), which is called with rtnl_lock held, blocks in
>>    request_module() [waiting for modprobe to load a crypto module].
>>
>>  - modprobe blocks in a call to flush_workqueue(), when it closes a TTY
>>    [presumably when it exits].
>>
>>  - The workqueue item linkwatch_event() blocks on rtnl_lock.
>>
>> There's no reason for wep_init() to be called with rtnl_lock held, so
>> just move it outside the critical section.
>>     
>
> Has it been merged already or is it queued up for merging?
>
> Rafael
>   

It looks like it's been merged as v2.6.30-rc6~2^2~40^2~1.

Thanks for checking up
Alan
