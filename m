From: Konstantin Khlebnikov <koct9i@gmail.com>
Subject: Re: mm: provide reference to READ_IMPLIES_EXEC
Date: Thu, 28 Jan 2016 18:29:03 +0300
Message-ID: <CALYGNiPcDsxnA7svAaDZErAP8CgJCFaD32wj=v8n4j0z32Uuww@mail.gmail.com>
References: <1453972263-25907-1-git-send-email-sudipm.mukherjee@gmail.com>
	<20160128143852.GA22099@roeck-us.net>
Mime-Version: 1.0
Return-path: <owner-linux-mm@kvack.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=W0xbclZNZ2PmFLJ4rsoCdUhGtMgkhtqvelY2+a02qVg=;
        b=eI5qfzzksvKORnzPAURc2gAPSx1tklf4ufFDzw4liAa7XdT0zKdf15Jx3pppSsgUwP
         xS2E1hVEBCygZklWK4yd/Bh74tfIQ6zJ4lhU632coMvYC6basyJ7YwCaWtoBOk08CCfV
         v+E1Za4+2LwpuhpXBu0nTAJQ2JvJgHH/YAVJMFvfhrLRx3zpD5lwmGdF3wbt1m5nJ/w9
         CX+BMIn/BRZicIPK7xZysSkdowpHkDeM0w3vRsu8wO33WiHoXEGKf3P9dUKHUPPjLn50
         tcN4Kp9Znph6Al23ko8z2Tax+hGuWDxb4ur+Gl1ciPocqqvrapVCspnmfV4BDmqOwvKw
         u9qg==
In-Reply-To: <20160128143852.GA22099@roeck-us.net>
Sender: owner-linux-mm@kvack.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Guenter Roeck <linux@roeck-us.net>
Cc: Sudip Mukherjee <sudipm.mukherjee@gmail.com>, Andrew Morton <akpm@linux-foundation.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, kernel-testers@vger.kernel.org, "linux-mm@kvack.org" <linux-mm@kvack.org>

On Thu, Jan 28, 2016 at 5:38 PM, Guenter Roeck <linux@roeck-us.net> wrote:
> On Thu, Jan 28, 2016 at 02:41:03PM +0530, Sudip Mukherjee wrote:
>> blackfin defconfig fails with the error:
>> mm/internal.h: In function 'is_stack_mapping':
>> arch/blackfin/include/asm/page.h:15:27: error: 'READ_IMPLIES_EXEC' undeclared
>>
>> Commit 07dff8ae2bc5 has added is_stack_mapping in mm/internal.h but it
>> also needs personality.h.
>>
>> Fixes: 07dff8ae2bc5 ("mm: warn about VmData over RLIMIT_DATA")
>
> FWIW, this is just one of many build failures due to this patch.
> Pretty much all non-MMU builds fail, plus several MMU builds.
> I had prepared a patch for mn10300, but gave up after I noticed
> all the other failures.

Please try mine "[PATCH] mm: polish virtual memory accounting"
instead of that. It should fix some (or all) fails from 07dff8ae2bc5.

>
> Build results in next-20160128:
>         total: 146 pass: 121 fail: 25
> Failed builds:
>         alpha:allmodconfig
>         arm64:allnoconfig
>         arm64:allmodconfig
>         avr32:defconfig
>         avr32:merisc_defconfig
>         avr32:atngw100mkii_evklcd101_defconfig
>         blackfin:defconfig
>         blackfin:BF561-EZKIT-SMP_defconfig
>         c6x:dsk6455_defconfig
>         c6x:evmc6457_defconfig
>         c6x:evmc6678_defconfig
>         frv:defconfig
>         ia64:defconfig
>         ia64:allnoconfig
>         m68k:allmodconfig
>         microblaze:nommu_defconfig
>         microblaze:allnoconfig
>         mn10300:asb2303_defconfig
>         mn10300:asb2364_defconfig
>         parisc:allmodconfig
>         powerpc:ppc6xx_defconfig
>         s390:defconfig
>         s390:allmodconfig
>         s390:allnoconfig
>         xtensa:allmodconfig
> Qemu test results:
>         total: 96 pass: 83 fail: 13
> Failed tests:
>         arm:kzm:imx_v6_v7_defconfig
>         arm64:smp:defconfig
>         arm64:nosmp:defconfig
>         microblaze:microblaze_defconfig
>         microblaze:microblazeel_defconfig
>         powerpc:mac99:ppc_book3s_defconfig
>         powerpc:mpc8544ds:mpc85xx_smp_defconfig
>         powerpc:smp4:ppc64_book3s_defconfig
>         powerpc:nosmp:ppc64_e5500_defconfig
>         powerpc:smp:ppc64_e5500_defconfig
>         s390:defconfig
>         sparc64:sun4u:nosmp:sparc64_defconfig
>         sparc64:sun4v:nosmp:sparc64_defconfig
>
> Not all, but most of the failures are due to 07dff8ae2bc5.
>
> Guenter

--
To unsubscribe, send a message with 'unsubscribe linux-mm' in
the body to majordomo@kvack.org.  For more info on Linux MM,
see: http://www.linux-mm.org/ .
Don't email: <a href=mailto:"dont@kvack.org"> email@kvack.org </a>
