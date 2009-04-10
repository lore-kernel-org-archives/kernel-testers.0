From: Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Subject: Re: [linux-pm] Regression: First hibernation attempt fails
Date: Fri, 10 Apr 2009 12:08:13 +0100
Message-ID: <49DF289D.5070604@tuffmail.co.uk>
References: <49DDD83F.507@tuffmail.co.uk> <20090410092318.GB30093@elf.ucw.cz>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=gamma;
        h=domainkey-signature:received:received:sender:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=ujvum2rk+YnYCBgeggMtWRCrbfpOX47TJsY6WwMO9Wo=;
        b=boJAVerFox0HslKTzmLlntcrE4Oa87kkzxhp/W/ov6IIOwe2gzeoD+NOy2Mjwxz7Wd
         5bx60F2pKwdGeYrthPOR2c2hBqSKtDDx+yfJyytkUbOATDVOMbnKRYwiyH+a0btL3XJZ
         m5XwLMUsANTZ6aydCczLA8EtqNIdtO+iHBFLQ=
In-Reply-To: <20090410092318.GB30093-I/5MKhXcvmPrBKCeMvbIDA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Pavel Machek <pavel-+ZI9xUNit7I@public.gmane.org>
Cc: linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, linux-kernel <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>

Pavel Machek wrote:
> On Thu 2009-04-09 12:13:03, Alan Jenkins wrote:
>   
>> Yet another issue in 2.6.30-rc1 which was not present in 2.6.29 :-).  I
>> wonder if it rings any bells?
>>
>> On my laptop (EEE 4G), the first attempt at hibernation fails. 
>> Subsequent attempts succeed.
>>
>> If I use s2disk as normal, I see "snapshotting system", then before it
>> gets to write out the image, it aborts and switches back to X.   I can't
>> see any error message, even if I check the log with "dmesg".
>>
>> If I use "echo disk > /sys/power/state", echo reports the error "Cannot
>> allocate memory".
>>
>> This only happens if I've logged in to X first.  In fact, I narrowed it
>> down to gnome-power-manager.  If I kill gnome-power-manager beforehand,
>> then it doesn't happen.
>>     
>
> Anything interesting in dmesg?
>   

Nothing obvious. I've attached my latest at
<http://bugzilla.kernel.org/show_bug.cgi?id=13058>.

Regards
Alan
