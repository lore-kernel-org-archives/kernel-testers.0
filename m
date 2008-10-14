From: Aioanei Rares <rares.aioanei-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: Error : Linux-2.6.27
Date: Tue, 14 Oct 2008 20:09:30 +0300
Message-ID: <48F4D24A.5070400@gmail.com>
References: <11744780.1501223935389354.JavaMail.root@zimbra>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=YNQpdC9V9ufmAm2smViEE41fufiDwJHYQM5n2Gl/zAg=;
        b=HoW/tPuk9paW5vJMuz6tOXD5QSBC+Dhh+3cMvAatOo8lwCZJet1MHM2EEDUoFz2zyE
         +FPcSKfLVnz5rfIVpLvwYVi3dzk9Uh82Ncez/TnUM+TNsQNlHbHwdL+kECY+FiKlOPZV
         l3qRdoGjocJiXjAZFkUrG5ao2obOE8F5I24RE=
In-Reply-To: <11744780.1501223935389354.JavaMail.root@zimbra>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Zaharov D.A." <zaharov-GhpCCtR9udU@public.gmane.org>
Cc: Yudha Harimantoro T <yudha.ht-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

Zaharov D.A. wrote:
> Show your loader config.
> How much drive attach?
> And ceck your drive detect in proper order.
>
> ----- Original Message -----
> From: "Yudha Harimantoro T" <yudha.ht-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> To: kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
> Sent: Friday, October 10, 2008 8:26:44 PM (GMT+1100) Auto-Detected
> Subject: Error : Linux-2.6.27
>
> Hi all,
>
> Yesterday I build kernel 2.6.26.6 and it's run well. Today I got
> 2.6.27 patch and try to build it.
>
> I build with `make oldconfig` and answer any question with default
> answer, I just press [enter].
> I build with `make`. No error and all compiled.
> Then I install with `make modules_install` and `make install`.
>
> After reboot the system I got 'kernel panic'.
> This is the error picture :
> http://www.ryht.co.cc/wordpress/wp-content/uploads/2008/10/pa101358.jpg
> Is it a bugs?
>
> http://www.ryht.co.cc/wordpress/wp-content/uploads/2008/10/pa101353.jpg
> [2.6.26.6 run well]
>
>
>
> Best regards,
> Yudha_HT
> --
> To unsubscribe from this list: send the line "unsubscribe linux-kernel" in
> the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at  http://www.tux.org/lkml/
>
>
> --
> To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
> the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
>
>   
How about you do what the error message says? Try booting with init=3 
for example and see if it boots.
