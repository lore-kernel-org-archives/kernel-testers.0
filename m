From: Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Subject: Re: Bisected: s2disk (uswsusp only) hangs just before poweroff
Date: Wed, 02 Dec 2009 11:11:13 +0000
Message-ID: <4B164B51.6040203@tuffmail.co.uk>
References: <4B1575AC.6080904@tuffmail.co.uk> <20091201214529.GA1457@csn.ul.ie>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=gamma;
        h=domainkey-signature:received:received:sender:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=W9Ff34VMyB0cr4vjIFMSnUrOujhWvHwVRulVMMxli2M=;
        b=LveseUeTE4HV8h0/ZkzHpUiTX0SFB83SK7yMlmftJc7zNM2p5imlAkNEJ2Kqs4xNhO
         A+1IMuwn1b5ADXOBlaZbZMtDNrv6jFkYqNHj5SrRbyF9ZBj2YjmOn6pI8xcCL/FYB64u
         hEBpcAPLqmWD9toPhG8YqhhiZ86fFV/uiJnqc=
In-Reply-To: <20091201214529.GA1457-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: pm list <linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org>, linux-kernel <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

Mel Gorman wrote:
> On Tue, Dec 01, 2009 at 07:59:40PM +0000, Alan Jenkins wrote:
>   
>> Hi
>>
>> Suspend to disk is (sometimes) hanging for me in 2.6.32-rc.  I finally  
>> got around to bisecting it, which blamed the following commit by Mel:
>>
>> 5f8dcc2 "page-allocator: split per-cpu list into one-list-per-migrate-type"
>>
>> I was able to confirm this by reverting the commit, which fixed the  
>> hang.  I had to revert one other commit first to avoid a conflict:
>>
>> a6f9edd "page-allocator: maintain rolling count of pages to free from  
>> the PCP"
>>
>>     
>
> Which RC kernel? Specifically, are the commits
>
> cc4a6851466039a8a688c843962a05689059ff3b always wake kswapd when restarting an allocation attempt
> 9d0ed60fe9cd1fbf57f755cd27a23ae9114d7210 Do not allow interrupts to use ALLOC_HARDER
>
> applied?
>
> The latter one in particular might make a difference if s2disk is
> pushing the system far below the watermarks. I don't suppose you know
> where it's hanging? i.e. is it hanging in the allocator itself?
>   

After enabling "suspend loglevel = 8" in uswsusp.conf (grr), I saw a 
pair of hung task backtraces.

<http://picasaweb.google.com/Alan.Christopher.Jenkins/Screenshots#5410594126006567282>


> would you mind trying the following patch?
> Unfortunately, it's totally untested. The intention of the patch is to
> use other PCP lists if the desired one cannot be refilled.
>
> Thanks.
>   

Sure, will do.

Thanks
Alan
