From: Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Subject: Re: Bisected: s2disk (uswsusp only) hangs just before poweroff
Date: Wed, 02 Dec 2009 11:49:47 +0000
Message-ID: <4B16545B.3090703@tuffmail.co.uk>
References: <4B1575AC.6080904@tuffmail.co.uk> <20091201214529.GA1457@csn.ul.ie> <200912012253.08522.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=gamma;
        h=domainkey-signature:received:received:sender:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=2ci9o0SGqLXGwnaMj+11cH1Z9dSJolRUzvPkM1o/d+k=;
        b=VnZjCAMxQuQPQ93jz43aKizb38e1zWXN35FbFL4JuGmqCkGge7EUKWwCiAHk+bAvyC
         OVKVldRNtuZnBsOuh64dgwB4adHBa13soGalUJ1yTtA3a/jb+OedBLIM3yiS03nAwYul
         TPrF8grW6pvu476NB5yJer0KqWZKSbtdek7sw=
In-Reply-To: <200912012253.08522.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>, pm list <linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org>, linux-kernel <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

Rafael J. Wysocki wrote:
> On Tuesday 01 December 2009, Mel Gorman wrote:
>   
>> On Tue, Dec 01, 2009 at 07:59:40PM +0000, Alan Jenkins wrote:
>>     
>>> Hi
>>>
>>> Suspend to disk is (sometimes) hanging for me in 2.6.32-rc.  I finally  
>>> got around to bisecting it, which blamed the following commit by Mel:
>>>
>>> 5f8dcc2 "page-allocator: split per-cpu list into one-list-per-migrate-type"
>>>
>>> I was able to confirm this by reverting the commit, which fixed the  
>>> hang.  I had to revert one other commit first to avoid a conflict:
>>>
>>> a6f9edd "page-allocator: maintain rolling count of pages to free from  
>>> the PCP"
>>>
>>>       
>> Which RC kernel? Specifically, are the commits
>>
>> cc4a6851466039a8a688c843962a05689059ff3b always wake kswapd when restarting an allocation attempt
>> 9d0ed60fe9cd1fbf57f755cd27a23ae9114d7210 Do not allow interrupts to use ALLOC_HARDER
>>
>> applied?
>>
>> The latter one in particular might make a difference if s2disk is
>> pushing the system far below the watermarks. I don't suppose you know
>> where it's hanging? i.e. is it hanging in the allocator itself?
>>
>> If those patches are applied, then one difference that 5f8dcc2 makes is
>> that pages on the PCP lists but not of the right migratetype are not
>> used. Prior to that commit, an allocation might succeed even if the
>> buddy lists were empty because one of the other PCP page types would be
>> used.
>>
>>     
>>> -- detail --
>>>
>>> When I suspend my EeePc 701 to disk, it sometimes hangs after writing  
>>> out the hibernation image.  The system is still able to resume from this  
>>> image (after working around the hang by pressing the power button). 
>>>
>>> This is specific to s2disk from the uswsusp package (which is now  
>>> installed by default on debian unstable).  It doesn't happen if I  
>>> uninstall uswsusp and use the in-kernel suspend instead.
>>>
>>>       
>> This leads me to believe that uswsusp is able to push available pages
>> far below what is expected. It's a total guess though, I have no idea
>> how uswsusp is implemented or how it differs from what is in kernel.
>>     
>
> It doesn't differ at all in that respect.  Actually, it uses the same code, but
> the distro configuration may be such that it leaves fewer available pages
> than the default in-kernel hibernation.
>
> Thanks,
> Rafael
>   

It seems unintuitive that lack of memory is a problem _after we've 
written out the hibernation image_.  The backtrace I captured shows the 
hang happens within hibernation_platform_enter()...

Hmm.  Doesn't the in-kernel suspend free the in-memory image before 
powering off?

int hibernate(void)
...
        pr_debug("PM: writing image.\n");
        error = swsusp_write(flags);
        swsusp_free();
        if (!error)
            power_down();



Would that explain why only uswsusp is affected?  Do we want to fix 
snapshot_read() in user.c, so that it calls swsusp_free() once all the 
data has been read?

Regards
Alan
