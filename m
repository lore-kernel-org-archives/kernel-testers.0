From: "rajeev kumar" <rajeevcoder.cusat.mca-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: Error : Linux-2.6.27
Date: Wed, 15 Oct 2008 11:29:32 +0530
Message-ID: <df3f2abe0810142259m75c7f3a1ue8d8f9c1ed171ed5@mail.gmail.com>
References: <11744780.1501223935389354.JavaMail.root@zimbra>
	 <48F4D24A.5070400@gmail.com> <48F4F6CA.9040103@tuffmail.co.uk>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=y89pRreRjkL2g1fMf9NZXZhPMCfGdimQZRQ9Y3mR6hA=;
        b=B6CLBjtDfZq6fpCHRCqHG4VLcO1UXGgFT/tCCXtLQiWsqX1hB0Hq8d2qav6QgbXGo2
         V8ClnTCMynKjHWa6kSr75Qi7/xkpnW/BMZeMnfHCK32mDHuCzHFdwshYKi4Ae7lKjycF
         oY6IDoUbMVLn7d93+tDkvKTv2wIxMJYNAhU/0=
In-Reply-To: <48F4F6CA.9040103-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Cc: Aioanei Rares <rares.aioanei-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "Zaharov D.A." <zaharov-GhpCCtR9udU@public.gmane.org>, Yudha Harimantoro T <yudha.ht-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

Hi i got followoing error when after compiling 2.6.26 and booting it.
waiting for root file system :

Then it dropped me to initramfs shell. Is there any way to boot the
kernel without any need of initram

Also i have:

intel 945 series mother board
SATA 80 GB HardDisk.
Debian 4.0(2.6.18) preinstalled.

Regards
Rajeev Kumar



On 10/15/08, Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org> wrote:
> Aioanei Rares wrote:
>> Zaharov D.A. wrote:
>>> Show your loader config.
>>> How much drive attach?
>>> And ceck your drive detect in proper order.
>>>
>>> ----- Original Message -----
>>> From: "Yudha Harimantoro T" <yudha.ht-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
>>> To: kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
>>> Sent: Friday, October 10, 2008 8:26:44 PM (GMT+1100) Auto-Detected
>>> Subject: Error : Linux-2.6.27
>>>
>>> Hi all,
>>>
>>> Yesterday I build kernel 2.6.26.6 and it's run well. Today I got
>>> 2.6.27 patch and try to build it.
>>>
>>> I build with `make oldconfig` and answer any question with default
>>> answer, I just press [enter].
>>> I build with `make`. No error and all compiled.
>>> Then I install with `make modules_install` and `make install`.
>>>
>>> After reboot the system I got 'kernel panic'.
>>> This is the error picture :
>>> http://www.ryht.co.cc/wordpress/wp-content/uploads/2008/10/pa101358.jpg
>>> Is it a bugs?
>>>
>>> http://www.ryht.co.cc/wordpress/wp-content/uploads/2008/10/pa101353.jpg
>>> [2.6.26.6 run well]
>>>
>>>
>>>
>>> Best regards,
>>> Yudha_HT
>>> --
>>> To unsubscribe from this list: send the line "unsubscribe
>>> linux-kernel" in
>>> the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
>>> More majordomo info at  http://vger.kernel.org/majordomo-info.html
>>> Please read the FAQ at  http://www.tux.org/lkml/
>>>
>>>
>>> --
>>> To unsubscribe from this list: send the line "unsubscribe
>>> kernel-testers" in
>>> the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
>>> More majordomo info at  http://vger.kernel.org/majordomo-info.html
>>>
>>>
>> How about you do what the error message says? Try booting with init=3
>> for example and see if it boots.
>
> That won't help.  It wants the path to the init program - the first
> default is init=/sbin/init.  Probably it has mounted the wrong
> filesystem as root - so it can't find /sbin/init.
>
> Alan
> --
> To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
> the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
>
