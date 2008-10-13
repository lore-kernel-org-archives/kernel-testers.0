From: "Zaharov D.A." <zaharov-GhpCCtR9udU@public.gmane.org>
Subject: Re: Error : Linux-2.6.27
Date: Tue, 14 Oct 2008 10:03:09 +1200 (MAGST)
Message-ID: <11744780.1501223935389354.JavaMail.root@zimbra>
References: <6966154.1481223935318911.JavaMail.root@zimbra>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <6966154.1481223935318911.JavaMail.root@zimbra>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Yudha Harimantoro T <yudha.ht-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

Show your loader config.
How much drive attach?
And ceck your drive detect in proper order.

----- Original Message -----
From: "Yudha Harimantoro T" <yudha.ht-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
To: kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
Sent: Friday, October 10, 2008 8:26:44 PM (GMT+1100) Auto-Detected
Subject: Error : Linux-2.6.27

Hi all,

Yesterday I build kernel 2.6.26.6 and it's run well. Today I got
2.6.27 patch and try to build it.

I build with `make oldconfig` and answer any question with default
answer, I just press [enter].
I build with `make`. No error and all compiled.
Then I install with `make modules_install` and `make install`.

After reboot the system I got 'kernel panic'.
This is the error picture :
http://www.ryht.co.cc/wordpress/wp-content/uploads/2008/10/pa101358.jpg
Is it a bugs?

http://www.ryht.co.cc/wordpress/wp-content/uploads/2008/10/pa101353.jpg
[2.6.26.6 run well]



Best regards,
Yudha_HT
--
To unsubscribe from this list: send the line "unsubscribe linux-kernel" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at  http://www.tux.org/lkml/

