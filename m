From: Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Subject: Re: Error : Linux-2.6.27
Date: Tue, 14 Oct 2008 20:45:14 +0100
Message-ID: <48F4F6CA.9040103@tuffmail.co.uk>
References: <11744780.1501223935389354.JavaMail.root@zimbra> <48F4D24A.5070400@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding:sender;
        bh=BsVKQ3rdHrbS3Q2pNViyLlCobiV4ZkvLU5neb6wI9yU=;
        b=swnifP8w8WHfrU9m8aTSvF1jSX/X/A/fqphSWtQSp22HBbz14HA3De595Gif9ctPIg
         JkMRp/6auWjL+FtBN+7SAoTVvHZoTxH21Y/9KUHWlRytpCYe5Qn2WxJKLgeywpBshEZG
         2C33cSILEUR1yUZHU3Z2+Jfb+X9k3fQIfIldM=
In-Reply-To: <48F4D24A.5070400-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Aioanei Rares <rares.aioanei-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: "Zaharov D.A." <zaharov-GhpCCtR9udU@public.gmane.org>, Yudha Harimantoro T <yudha.ht-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

Aioanei Rares wrote:
> Zaharov D.A. wrote:
>> Show your loader config.
>> How much drive attach?
>> And ceck your drive detect in proper order.
>>
>> ----- Original Message -----
>> From: "Yudha Harimantoro T" <yudha.ht-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
>> To: kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
>> Sent: Friday, October 10, 2008 8:26:44 PM (GMT+1100) Auto-Detected
>> Subject: Error : Linux-2.6.27
>>
>> Hi all,
>>
>> Yesterday I build kernel 2.6.26.6 and it's run well. Today I got
>> 2.6.27 patch and try to build it.
>>
>> I build with `make oldconfig` and answer any question with default
>> answer, I just press [enter].
>> I build with `make`. No error and all compiled.
>> Then I install with `make modules_install` and `make install`.
>>
>> After reboot the system I got 'kernel panic'.
>> This is the error picture :
>> http://www.ryht.co.cc/wordpress/wp-content/uploads/2008/10/pa101358.jpg
>> Is it a bugs?
>>
>> http://www.ryht.co.cc/wordpress/wp-content/uploads/2008/10/pa101353.jpg
>> [2.6.26.6 run well]
>>
>>
>>
>> Best regards,
>> Yudha_HT
>> -- 
>> To unsubscribe from this list: send the line "unsubscribe 
>> linux-kernel" in
>> the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
>> More majordomo info at  http://vger.kernel.org/majordomo-info.html
>> Please read the FAQ at  http://www.tux.org/lkml/
>>
>>
>> -- 
>> To unsubscribe from this list: send the line "unsubscribe 
>> kernel-testers" in
>> the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
>> More majordomo info at  http://vger.kernel.org/majordomo-info.html
>>
>>   
> How about you do what the error message says? Try booting with init=3 
> for example and see if it boots.

That won't help.  It wants the path to the init program - the first 
default is init=/sbin/init.  Probably it has mounted the wrong 
filesystem as root - so it can't find /sbin/init.

Alan
