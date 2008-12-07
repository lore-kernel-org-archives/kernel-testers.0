From: "Fabio Comolli" <fabio.comolli-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #12155] Regression in 2.6.28-rc and 2.6.27-stable - hibernate related
Date: Sun, 7 Dec 2008 14:39:00 +0100
Message-ID: <b637ec0b0812070539i20684ec2tfc6748f01d99fff9@mail.gmail.com>
References: <QFIA5HSHV8B.A.2aG.hoxNJB@chimera>
	 <bfPM5B8Tx2B.A.MQH.zoxNJB@chimera>
	 <b637ec0b0812040050g58f3e28dxba5bca8c77bb5a94@mail.gmail.com>
	 <b637ec0b0812061208i9520bd0tfd404f1a9c8a95ba@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=G2Rt675NbFMdAB/HZTGxF1vwO2oOoxhRfuNb0Umg7eM=;
        b=k5ScbINnYslv7+R2ye5FSK/f54rATStd43IGkmRRO48UY2VgT3ntyOK6Pg1GsH5aEp
         mb64RjNVh4sWFYLqDa5jm+63+Jjs5qi8eLRXyt5LblaqW+yqMdcgH4J6HugDKFQdBTH3
         yva1lxXCoiKBHGEqHeSxMYxcuxg9PJx573ots=
In-Reply-To: <b637ec0b0812061208i9520bd0tfd404f1a9c8a95ba-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

Hi.

On Sat, Dec 6, 2008 at 9:08 PM, Fabio Comolli <fabio.comolli-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
> Hi Rafael.
>
> On Thu, Dec 4, 2008 at 9:50 AM, Fabio Comolli <fabio.comolli-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
>> Hi.
>>
>> I'll try -rc7-git probably tonight and 2.6.27.8 when -stable team releases it.
>>
>
> 2.6.28-rc7 survived 7 suspend/resume cycles and then showed the bug.

2.6.27.8 got me really scared. After the resume and the usual hang, my
hard disk did not recover and my rootfilesystem's journal aborted. Of
course I don't have messages to post as the rootfs was at this point
mounted readonly. I read those info from dmesg.

I went back to my dear 2.6.27.4 which is stable and never caused me
any problems.

Unless someone jumps in with some ideas, I'm not going to do testings
anymore. I can't lose my only machine because of this.

Regards,
Fabio
