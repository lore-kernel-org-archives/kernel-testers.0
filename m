From: Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: 2.6.30-rc6: usb printer does not work
Date: Fri, 29 May 2009 09:30:57 +0400
Message-ID: <a4423d670905282230n4bb9f456w1b13ce6462f81bf9@mail.gmail.com>
References: <20090528170726.GA13714@orion>
	 <20090528111831.a35c5184.zaitcev@redhat.com>
	 <a4423d670905281044n5e2480a1g98fc6fb5ceb845cd@mail.gmail.com>
	 <20090528122054.2c837ccd.zaitcev@redhat.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=HR4Us0w8vQSYUJ/cvzT85AfTMdw+TdOJ4jJOguBf8O0=;
        b=a3E6SZkTGD+CzOvEgRo4AXHxpHNndcIu54+xd9Wx8uKir+emTCRZIhnjj+f8UarFRW
         mc++HmvCDV7Jd25amlxTvWr9zAYosY2laHw2pCVFtbQnAo+WTPoYhMHgqBKPSbJO+c7U
         Q3T5Yfj4HFskRI8pvGXfrGDjmM3DEWOuRBwow=
In-Reply-To: <20090528122054.2c837ccd.zaitcev-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Pete Zaitcev <zaitcev-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Cc: linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

2009/5/28 Pete Zaitcev <zaitcev-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>:
> On Thu, 28 May 2009 21:44:05 +0400, Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
>
>> >> kernel is 2.6.30-rc6-00065-g3633832
>> >>
>> >> It worked sometime ago, I do not remember,
>> >> perhaps it was 2.6.29.
>> >
>> > Can you verify it?
>
>> It works with 2.6.29 indeed.
>
> Thanks. Just to make sure that it's the culprit, can you back out
> the patch for the usblp from the 2.6.30-rc6-00065-g3633832, whatever
> that is? We only had one since 2.6.29 (attached).
>
> Also, I'd like to see a usbmon trace. I don't want to create more
> quirks, so perhaps we can work out some kind of compromise that lets
> BJC-3000 work with the general code. Failing that, we'll add a quirk
> and that would hopefuly restore your case (HP CP1215, I take it).
>
It is working with 2.6.30-rc7-00097-gb5c42bc and without dd44be6b1
(usblp: continuously poll for status).
I cannot reproduce the problem after reboot.
It seems the problem is more complicated.
