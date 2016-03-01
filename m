From: Alexandre Belloni <alexandre.belloni-wi1+55ScJUtKEb57/3fJTNBPR1lH4CV8@public.gmane.org>
Subject: Re: [PATCH] rtc: rtc-generic: use correct header file
Date: Tue, 1 Mar 2016 14:06:37 +0100
Message-ID: <20160301130637.GG2627@piout.net>
References: <1456836400-10102-1-git-send-email-sudipm.mukherjee@gmail.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <1456836400-10102-1-git-send-email-sudipm.mukherjee-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Sudip Mukherjee <sudipm.mukherjee-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Alessandro Zummo <a.zummo-BfzFCNDTiLLj+vYz1yj4TQ@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, rtc-linux-/JYPxA39Uh5TLH3MbocFFw@public.gmane.org

On 01/03/2016 at 18:16:40 +0530, Sudip Mukherjee wrote :
> The allmodconfig build of m32r fails with errors like:
> 
> In file included from drivers/rtc/rtc-generic.c:12:0:
> arch/m32r/include/asm/rtc.h:46:8: error: redefinition of 'struct rtc_time'
> 
> drivers/rtc/rtc-generic.c: In function 'generic_get_time':
> drivers/rtc/rtc-generic.c:16:21: error: implicit declaration of function 'get_rtc_time'
> 
> drivers/rtc/rtc-generic.c:18:12: error: 'RTC_BATT_BAD' undeclared
> 
> drivers/rtc/rtc-generic.c: In function 'generic_set_time':
> drivers/rtc/rtc-generic.c:26:6: error: implicit declaration of function 'set_rtc_time'
> 
> Apart from m32r, many other arch like xtensa, sparc are failing with:
> drivers/rtc/rtc-generic.c:12:21: fatal error: asm/rtc.h: No such file or directory
> 
> Other rtc drivers are using asm-generic/rtc.h, so use it here.
> 
> Fixes: 2a32c792f1c9 ("rtc: enable COMPILE_TEST")
> Signed-off-by: Sudip Mukherjee <sudip.mukherjee-4yDnlxn2s6sWdaTGBSpHTA@public.gmane.org>
> ---
> 
> m32r allmodconfig build log is at:
> https://travis-ci.org/sudipm-mukherjee/parport/jobs/112780210
> 
> failure with sparc and xtensa needs more work as after this patch also
> they fail with error about missing file "mc146818rtc.h".
> 

Yeah I'll remove COMPILE_TEST for that driver.


-- 
Alexandre Belloni, Free Electrons
Embedded Linux, Kernel and Android engineering
http://free-electrons.com
