From: Maciej Rutecki <maciej.rutecki@gmail.com>
Subject: Re: 2.6.30-rc1: touchpad disabled on hibernation
Date: Tue, 7 Jul 2009 23:13:22 +0200
Message-ID: <8db1092f0907071413s564571f2jc7a5922211535079@mail.gmail.com>
References: <4A438BA7.9010800@tuffmail.co.uk>
	 <8db1092f0906251016l5ac85bfdpbac841b939cfac2a@mail.gmail.com>
	 <4A43B1FC.7060609@tuffmail.co.uk> <200907070040.14796.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-input-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=3v4ndjip7L4+UvPDY3KIgpWFn6wjqzFrgIaBgwxNyEE=;
        b=HjlAfjd0aT47R1EfVgiBIOdP1Ob1+uoNC3/+fkKTYYR8hmbTZZ35ose9pF1VjISCRs
         9oMVXUG24q2eGkexMQgIXtkXuyzTRpy1boHMdMk+yeGbX7pnt7w9MJ4+evf3f27OP/fm
         wdxKRYWoCG4UmD7vuYRSKfuRcyjNKlyQ7Ddjw=
In-Reply-To: <200907070040.14796.rjw@sisk.pl>
Sender: linux-input-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Alan Jenkins <alan-jenkins@tuffmail.co.uk>, linux-kernel <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, linux-input@vger.kernel.org, linux-pm@lists.linux-foundation.org, Thadeu Lima de Souza Cascardo <cascardo@holoscopio.com>

2009/7/7 Rafael J. Wysocki <rjw@sisk.pl>:

> Alan, Maciej, can you both try the patch at
> http://patchwork.kernel.org/patch/34075/, please?
>

Sorry for delay.

Patch solves problem. Thanks.


-- 
Maciej Rutecki
http://www.maciek.unixy.pl
