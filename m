From: Guenter Roeck <linux-0h96xk9xTtrk1uMJSBkQmQ@public.gmane.org>
Subject: Re: mm: provide reference to READ_IMPLIES_EXEC
Date: Thu, 28 Jan 2016 06:38:52 -0800
Message-ID: <20160128143852.GA22099@roeck-us.net>
References: <1453972263-25907-1-git-send-email-sudipm.mukherjee@gmail.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=roeck-us.net; s=default; h=In-Reply-To:Content-Type:MIME-Version:References
	:Message-ID:Subject:Cc:To:From:Date;
	bh=VjldfbMo4zccPwPQPCOol2TeiQBJkFB0UOmYcNyXS/c=; b=W0Z8v8iilzOHWLzlCme+taEUxv
	QJ/oADkvGmmw00X6vYrzfZPVF/sDrr5raFUi8pWQRoWKg104jW6IF7X8LEEg+BXC4P4ORiX5j6qpB
	Yet4PnTfzFAG6F5fCLP+CAwcVb7idcp/JwvVtURM+9W/hSh9nHsOhPEyKOsQfCRz5n2neja/6SB7D
	5Ycai8pEakJ6VoG/hlVe6OHbBEvnntuZ+WnQfa9FtNzSxVwfuJgXiK+Ox49YaAsOPfLy8gE3AbCFI
	jfD7EvGns7FmAiEWqvRzd4FCHauX1pdAxHGGiCBLne7fNkz+zI43QDbic4XT+uR+z6nzsWHsxrCEj
	f7QyHjGA==;
Content-Disposition: inline
In-Reply-To: <1453972263-25907-1-git-send-email-sudipm.mukherjee-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Sudip Mukherjee <sudipm.mukherjee-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org, Konstantin Khlebnikov <koct9i-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Thu, Jan 28, 2016 at 02:41:03PM +0530, Sudip Mukherjee wrote:
> blackfin defconfig fails with the error:
> mm/internal.h: In function 'is_stack_mapping':
> arch/blackfin/include/asm/page.h:15:27: error: 'READ_IMPLIES_EXEC' undeclared
> 
> Commit 07dff8ae2bc5 has added is_stack_mapping in mm/internal.h but it
> also needs personality.h.
> 
> Fixes: 07dff8ae2bc5 ("mm: warn about VmData over RLIMIT_DATA")

FWIW, this is just one of many build failures due to this patch.
Pretty much all non-MMU builds fail, plus several MMU builds.
I had prepared a patch for mn10300, but gave up after I noticed
all the other failures.

Build results in next-20160128:
	total: 146 pass: 121 fail: 25
Failed builds:
	alpha:allmodconfig
	arm64:allnoconfig
	arm64:allmodconfig
	avr32:defconfig
	avr32:merisc_defconfig
	avr32:atngw100mkii_evklcd101_defconfig
	blackfin:defconfig
	blackfin:BF561-EZKIT-SMP_defconfig
	c6x:dsk6455_defconfig
	c6x:evmc6457_defconfig
	c6x:evmc6678_defconfig
	frv:defconfig
	ia64:defconfig
	ia64:allnoconfig
	m68k:allmodconfig
	microblaze:nommu_defconfig
	microblaze:allnoconfig
	mn10300:asb2303_defconfig
	mn10300:asb2364_defconfig
	parisc:allmodconfig
	powerpc:ppc6xx_defconfig
	s390:defconfig
	s390:allmodconfig
	s390:allnoconfig
	xtensa:allmodconfig
Qemu test results:
	total: 96 pass: 83 fail: 13
Failed tests:
	arm:kzm:imx_v6_v7_defconfig
	arm64:smp:defconfig
	arm64:nosmp:defconfig
	microblaze:microblaze_defconfig
	microblaze:microblazeel_defconfig
	powerpc:mac99:ppc_book3s_defconfig
	powerpc:mpc8544ds:mpc85xx_smp_defconfig
	powerpc:smp4:ppc64_book3s_defconfig
	powerpc:nosmp:ppc64_e5500_defconfig
	powerpc:smp:ppc64_e5500_defconfig
	s390:defconfig
	sparc64:sun4u:nosmp:sparc64_defconfig
	sparc64:sun4v:nosmp:sparc64_defconfig

Not all, but most of the failures are due to 07dff8ae2bc5.

Guenter
