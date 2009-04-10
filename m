From: Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Subject: Re: [linux-pm] Regression: First hibernation attempt fails
Date: Fri, 10 Apr 2009 12:35:02 +0100
Message-ID: <49DF2EE6.20203@tuffmail.co.uk>
References: <49DDD83F.507@tuffmail.co.uk> <20090410092318.GB30093@elf.ucw.cz> <49DF289D.5070604@tuffmail.co.uk> <20090410112115.GA2513@elf.ucw.cz>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=gamma;
        h=domainkey-signature:received:received:sender:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=8qr2tMJIbiroDThJ/eW5/3GjP+gfan5jK3+ibK3f25U=;
        b=dsURIO/Z7hf/LvMUDDNV6LaBzzn/N0VSHezrx4oW/ebd7++UpJaLj/pCsc/i/GddSU
         pdaz31RTHfTy09GaInqimGg259Ym2QmUVzkzqTaHhzNeFUjCbLlbwvN2bFmMZWWr8A5w
         w06+JBYMkb4ySvY4HkfQVcHboXbJjcSe9EPf8=
In-Reply-To: <20090410112115.GA2513-I/5MKhXcvmPrBKCeMvbIDA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Pavel Machek <pavel-+ZI9xUNit7I@public.gmane.org>
Cc: linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, linux-kernel <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>

Pavel Machek wrote:
> On Fri 2009-04-10 12:08:13, Alan Jenkins wrote:
>   
>> Pavel Machek wrote:
>>     
>>> On Thu 2009-04-09 12:13:03, Alan Jenkins wrote:
>>>   
>>>       
>>>> Yet another issue in 2.6.30-rc1 which was not present in 2.6.29 :-).  I
>>>> wonder if it rings any bells?
>>>>
>>>> On my laptop (EEE 4G), the first attempt at hibernation fails. 
>>>> Subsequent attempts succeed.
>>>>
>>>> If I use s2disk as normal, I see "snapshotting system", then before it
>>>> gets to write out the image, it aborts and switches back to X.   I can't
>>>> see any error message, even if I check the log with "dmesg".
>>>>
>>>> If I use "echo disk > /sys/power/state", echo reports the error "Cannot
>>>> allocate memory".
>>>>
>>>> This only happens if I've logged in to X first.  In fact, I narrowed it
>>>> down to gnome-power-manager.  If I kill gnome-power-manager beforehand,
>>>> then it doesn't happen.
>>>>         
>>> Anything interesting in dmesg?
>>>       
>> Nothing obvious. I've attached my latest at
>> <http://bugzilla.kernel.org/show_bug.cgi?id=13058>.
>>     
>
> Ok, next theory was that some module stuff is responsible (IIRC, from
> the lists). Can you try with everything-built-in (no modules) kernel?
> 									Pavel
>   

It's still present in v2.6.30-rc1-136-g62b8e68, which includes "module:
try_then_request_module must wait".

I don't think it's due to a missing module, because it doesn't happen if
I run "s2disk" from a console without logging in to KDE. I've put some
more details in Bugzilla about how it is reproduced (and what makes it
go away), it's a bit confusing.

But so long as I get the conditions right, it reproduces 100%. I'm going
to just try bisecting it - unless anyone has any more suggestions.

Thanks
Alan
