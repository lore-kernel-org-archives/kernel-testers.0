From: "Alexander Beregalov" <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: 2.6.26-rc: SPARC: Sun Ultra 10 can not boot
Date: Thu, 14 Aug 2008 14:19:59 +0400
Message-ID: <a4423d670808140319r1c0d5966o92cf33aa88273003@mail.gmail.com>
References: <a4423d670808080356r6573102am8a1eb9dcc83910c8@mail.gmail.com>
	 <20080808.041814.41687650.davem@davemloft.net>
	 <a4423d670808080452u2833418agc8027dfc33c9bb18@mail.gmail.com>
	 <20080813.205333.202202181.davem@davemloft.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=+MZxU6yz/iZQKGDJT2wtlFdEtMPSxbuSW89SXhkfO+k=;
        b=vr84nHbJg+KJbb6SVzp3Edq0fSG/Ud9eiz2CdhFsPRs8s5njDAubiIaoITB08RWUoY
         lmEMOPUinMaHA0bwZKY99z0YgiZ21RiOeOoPKwnd5HCoyxDwJ8qPV6MNvPH1PYRRV3xe
         DKHELT/xEGmq3+C/RDUuzxLOrDbDBWOFjSvp0=
In-Reply-To: <20080813.205333.202202181.davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Cc: kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, sparclinux-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

2008/8/14 David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>:
>> __free_pages_ok
>> __free_pages
>> __free_pages_bootmem
>> free_all_bootmem_core
>> free_all_bootmem
>> mem_init
>> start_kernel
>> tlb_fixup_done
>>
>> Can it be helpful?
>
> Mikulas Patocka is seeing the same bug (see thread "Re: console
> handover badness") I just posted the following patch there that can
> help track this down.
>
> Please try it out on your machine too.

Bogus migrate type 6
Usemap for section 0 corrupted
paging_init+0xcac/0xd38[arch/sparc64/mm/init.c:1795]

1790    #ifndef CONFIG_NEED_MULTIPLE_NODES
1791            max_mapnr = last_valid_pfn;
1792    #endif
1793            sparse_validate_usemap(__FILE__, __LINE__);
1794            kernel_physical_mapping_init();
1795            sparse_validate_usemap(__FILE__, __LINE__);
1796
1797            {
1798                    unsigned long max_zone_pfns[MAX_NR_ZONES];
1799
1800                    memset(max_zone_pfns, 0, sizeof(max_zone_pfns));

>
> BTW, how much ram is in your system?
Ultra 10, 1024Mb

Thanks David
