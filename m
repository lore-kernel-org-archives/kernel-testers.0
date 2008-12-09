From: "Alexander Beregalov" <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: 2.6.28-rc: fails to build SGI GRU driver on IA64
Date: Tue, 9 Dec 2008 18:12:01 +0300
Message-ID: <a4423d670812090712u3ceb39a2kb4cc813071eb648c@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:mime-version:content-type:content-transfer-encoding
         :content-disposition;
        bh=Epmoil5MSN5GvoDjvS+ZhQmOXDddm99IT7fqPFVk63U=;
        b=OrZ8ajD8tYVXB1VnDlKlFEM7doNTRRqdJL3EfRRzPqu+pAJr/+H2koU4MmsUg04wdH
         0AI93Ht2CeD1pTihebSrppZuye/7CSrID/u8rpu3u3FlH6adZJ8aEOk0UqVP1JX2wglG
         BQhXU0vF5VEcFECLF3x0HsIFvZ8aBCV7mekCU=
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Jack Steiner <steiner-sJ/iWh9BUns@public.gmane.org>, linux-ia64-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

  CC [M]  drivers/misc/sgi-gru/grufault.o
drivers/misc/sgi-gru/grufault.c: In function 'atomic_pte_lookup':
drivers/misc/sgi-gru/grufault.c:257: error: 'HPAGE_SHIFT' undeclared
(first use in this function)


$ egrep HUGE\|IA64 .config
CONFIG_IA64=y
CONFIG_IA64_GENERIC=y
# CONFIG_IA64_DIG is not set
# CONFIG_IA64_DIG_VTD is not set
# CONFIG_IA64_HP_ZX1 is not set
# CONFIG_IA64_HP_ZX1_SWIOTLB is not set
# CONFIG_IA64_SGI_SN2 is not set
# CONFIG_IA64_SGI_UV is not set
# CONFIG_IA64_HP_SIM is not set
# CONFIG_IA64_XEN_GUEST is not set
# CONFIG_IA64_PAGE_SIZE_4KB is not set
# CONFIG_IA64_PAGE_SIZE_8KB is not set
CONFIG_IA64_PAGE_SIZE_16KB=y
# CONFIG_IA64_PAGE_SIZE_64KB is not set
CONFIG_IA64_BRL_EMU=y
CONFIG_IA64_L1_CACHE_SHIFT=6
CONFIG_IA64_CYCLONE=y
CONFIG_IA64_MCA_RECOVERY=m
CONFIG_IA64_PALINFO=y
CONFIG_IA64_MC_ERR_INJECT=m
CONFIG_IA64_ESI=y
CONFIG_IA64_HP_AML_NFW=y
# CONFIG_IA64_ACPI_CPUFREQ is not set
# CONFIG_HUGETLBFS is not set
# CONFIG_HUGETLB_PAGE is not set
CONFIG_IA64_GRANULE_16MB=y
# CONFIG_IA64_GRANULE_64MB is not set
