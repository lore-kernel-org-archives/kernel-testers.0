From: Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Subject: [BISECTED] Regression: First hibernation attempt fails
Date: Fri, 10 Apr 2009 15:04:06 +0100
Message-ID: <49DF51D6.9080000@tuffmail.co.uk>
References: <49DDD83F.507@tuffmail.co.uk> <20090410092318.GB30093@elf.ucw.cz> <49DF289D.5070604@tuffmail.co.uk> <20090410112115.GA2513@elf.ucw.cz> <49DF2EE6.20203@tuffmail.co.uk>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=gamma;
        h=domainkey-signature:received:received:sender:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=uQI9sviM/348AfOT0XYR4tGRtaSP3EMGTv84pIihypE=;
        b=RviuiH91u/VV06Jjxet31BOmR6U8obcEEzpR/WZ5LomxBGCbOF9RClzUigcw050+aa
         etq7+a91gY2qDjGdHSRpa86yBo4BjlDCMhX2AuaxcQR8WGXkx6XbLK7JrUyVsvJZyBCi
         9yVSkwdTo8WCmVMz8COn7HnUILZh+41dD+x4g=
In-Reply-To: <49DF2EE6.20203-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Jens Axboe <jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
Cc: Pavel Machek <pavel-+ZI9xUNit7I@public.gmane.org>, linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, linux-kernel <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>

Alan Jenkins wrote:
> Pavel Machek wrote:
>   
>> On Fri 2009-04-10 12:08:13, Alan Jenkins wrote:
>>   
>>     
>>> Pavel Machek wrote:
>>>     
>>>       
>>>> On Thu 2009-04-09 12:13:03, Alan Jenkins wrote:
>>>>   
>>>>       
>>>>         
>>>>> Yet another issue in 2.6.30-rc1 which was not present in 2.6.29 :-).  I
>>>>> wonder if it rings any bells?
>>>>>
>>>>> On my laptop (EEE 4G), the first attempt at hibernation fails. 
>>>>> Subsequent attempts succeed.
>>>>>
>>>>> If I use s2disk as normal, I see "snapshotting system", then before it
>>>>> gets to write out the image, it aborts and switches back to X.   I can't
>>>>> see any error message, even if I check the log with "dmesg".
>>>>>
>>>>> If I use "echo disk > /sys/power/state", echo reports the error "Cannot
>>>>> allocate memory".
>>>>>
>>>>> This only happens if I've logged in to X first.  In fact, I narrowed it
>>>>> down to gnome-power-manager.  If I kill gnome-power-manager beforehand,
>>>>> then it doesn't happen.
>>>>>         
>>>>>           
>>>> Anything interesting in dmesg?      
>>>>         

>>> Nothing obvious. I've attached my latest at
>>> <http://bugzilla.kernel.org/show_bug.cgi?id=13058>.
>>>       

Bisection succeeded:

1faa16d22877f4839bd433547d770c676d1d964c
"block: change the request allocation/congestion logic to be sync/async
based"

If I revert the commit, it fixes my bug.

Regards
Alan
