From: "Alexander Beregalov" <a.beregalov@gmail.com>
Subject: Re: 2.6.26-rc: SPARC: Sun Ultra 10 can not boot
Date: Fri, 8 Aug 2008 15:52:53 +0400
Message-ID: <a4423d670808080452u2833418agc8027dfc33c9bb18@mail.gmail.com>
References: <a4423d670808080314weed9178o9f9ef52803a68501@mail.gmail.com>
	 <20080808.033811.129671951.davem@davemloft.net>
	 <a4423d670808080356r6573102am8a1eb9dcc83910c8@mail.gmail.com>
	 <20080808.041814.41687650.davem@davemloft.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <sparclinux-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=NXzgjw0c9xRc7EYU0RJ2g0wRfMRkgbn1OQx6t8fO/1Q=;
        b=x1R0siyoDgpDoGSXVZPakTLTED21jEdTeQ0nRizX02LelnWLNNdZIRp53KS8vqqZPW
         puU30YysM3uYfbHHSYlmcS5N/JpnolvGzNIoiRpNMsEcroZD90N/gxUWry/htIzfq1qn
         BmbQEJ0WpmZLqK93W5Sj0tuRXvGKRjGV5ILho=
In-Reply-To: <20080808.041814.41687650.davem@davemloft.net>
Content-Disposition: inline
Sender: sparclinux-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: David Miller <davem@davemloft.net>
Cc: mikpe@it.uu.se, kernel-testers@vger.kernel.org, sparclinux@vger.kernel.org, linux-kernel@vger.kernel.org

2008/8/8 David Miller <davem@davemloft.net>:
> This will allow you to see the crash message.
Yes, I saw it.
There were few WARNINGS at lib/list_debug.c:__list_add
That messages went fast, I can not see it now.
Now I see call trace:
__free_pages_ok
__free_pages
__free_pages_bootmem
free_all_bootmem_core
free_all_bootmem
mem_init
start_kernel
tlb_fixup_done

Can it be helpful?

I tried to connect console cable to it, but nothing was there. I found
I should disconnect keyb and vga to able to see it, I will try it
later, perhaps not today.

>
> Please also double check that you patched the kernel with my
> fix correctly.  I used your exact config, on the exact same
> kind of system, reproducing the exact same hang, and it goes
> away with my fix.
>
