From: "Yudha Harimantoro T" <yudha.ht-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Error : Linux-2.6.27
Date: Fri, 10 Oct 2008 15:26:44 +0700
Message-ID: <264b990a0810100126l1029f734x7204f8c42ae21609@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:mime-version:content-type:content-transfer-encoding
         :content-disposition;
        bh=c4FtV9atouWb+bPLonwQJhtBd356OO0Bv5+VHgoGmLA=;
        b=HW3GCR32/CQVgCXZ6Ql9X4Es58O3rGbSfupoLqyBsq/ZaR3YugRKGw+epEsVO6d5tj
         cApoan0aJTDYdXdQBKgP9DuP/MoFldKP1FYql+eEu1KIgvARWNF67FXi8wLzoedNxBoZ
         8888TaTBfKkL5k/jIL1+DZzjA0wIotx4XZRU4=
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

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
