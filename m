From: Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Subject: Re: "floppy: fix hibernation" causes error on resume from ram
Date: Sat, 18 Jul 2009 19:27:34 +0100
Message-ID: <4A621416.2060609@tuffmail.co.uk>
References: <4A620F3E.8080900@tuffmail.co.uk> <200907182019.57909.linux@rainbow-software.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=gamma;
        h=domainkey-signature:received:received:sender:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=EXgz8VbV3vMQS+I8fbu7mJlNIcGP4wZc2jMuYZEbb+I=;
        b=Ci6shn0qBM68EpMqrFaHYfXyQnwvhdHm1HfrfmQk6CG0phffr0MpRqOc50A6e7Uldt
         MWawktbxkFHYYgJuvaF4J9rXWkMK0SugZ0FDeIwLGZge7hmXWYlI5+oILvaAPXCHIFbI
         Zu45Ao4VrfxLtG2CCTpL4EjYY/Rr6L6Sq5hr4=
In-Reply-To: <200907182019.57909.linux-ZCIryABCsrmttCpgsWEBFmD2FQJk+8+b@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ondrej Zary <linux-ZCIryABCsrmttCpgsWEBFmD2FQJk+8+b@public.gmane.org>
Cc: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Pavel Machek <pavel-+ZI9xUNit7I@public.gmane.org>, Jens Axboe <jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>, linux-kernel <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

Ondrej Zary wrote:
> On Saturday 18 July 2009 20:06:54 Alan Jenkins wrote:
>   
>> Thanks for the hibernation fix!  Until recently I thought my floppy was
>> just dead.  Unfortunately, the fix seems to cause me errors on resume
>> from suspend to ram.  The floppy works fine afterwards, it just spams
>> the log.
>>
>> On 2.6.30 there were no errors, and the floppy survived suspend-to-ram.
>> So I guess the quick fix would be to only do the fix-up on resume from
>> hibernation, and not suspend-to-ram.
>>     
>
> My machine has no suspend-to-RAM so I haven't tested it.
>
> That would be probably the correct fix. But how to do it? AFAIK, there's only 
> one suspend() and one resume() for everything. And that looks very wrong as 
> resume-from-hibernation is fundamentally different from resume-from-RAM.
>   

Ok.  Looking at drivers/base/platform.c, we want "restore()".  I guess I
can do the patch myself :-).

Thanks
Alan
