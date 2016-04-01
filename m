From: Heiko Carstens <heiko.carstens-tA70FqPdS9bQT0dZR+AlfA@public.gmane.org>
Subject: Re: [PATCH] s390: fix build failure
Date: Fri, 1 Apr 2016 16:02:38 +0200
Message-ID: <20160401140238.GC3965@osiris>
References: <1459514116-24505-1-git-send-email-sudipm.mukherjee@gmail.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <1459514116-24505-1-git-send-email-sudipm.mukherjee-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Sudip Mukherjee <sudipm.mukherjee-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Martin Schwidefsky <schwidefsky-tA70FqPdS9bQT0dZR+AlfA@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-s390-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Matt Redfearn <matt.redfearn-1AXoQHu6uovQT0dZR+AlfA@public.gmane.org>

On Fri, Apr 01, 2016 at 01:35:16PM +0100, Sudip Mukherjee wrote:
> s390 defconfig and allmodconfig fails with the error:
> kernel/seccomp.c: In function '__secure_computing_strict':
> kernel/seccomp.c:526:3: error: implicit declaration of function
> 				'get_compat_mode1_syscalls'
> 
> The retrieval of compat syscall numbers were moved into inline function
> defined in asm-generic header but the asm-generic header was not being
> used by s390.
> 
> Fixes: 5adddb612ca1 ("seccomp: Get compat syscalls from asm-generic header")
> Cc: Matt Redfearn <matt.redfearn-1AXoQHu6uovQT0dZR+AlfA@public.gmane.org>
> Signed-off-by: Sudip Mukherjee <sudip.mukherjee-4yDnlxn2s6sWdaTGBSpHTA@public.gmane.org>
> ---
> 
> Tested with s390 defconfig and allmodconfig build.
> Build logs of next-20160401 are at:
> https://travis-ci.org/sudipm-mukherjee/parport/jobs/119983952 (allmodconfig)
> and
> https://travis-ci.org/sudipm-mukherjee/parport/jobs/119983909 (defconfig)
> 
>  arch/s390/include/asm/seccomp.h | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/s390/include/asm/seccomp.h b/arch/s390/include/asm/seccomp.h
> index 781a9cf..e10f833 100644
> --- a/arch/s390/include/asm/seccomp.h
> +++ b/arch/s390/include/asm/seccomp.h
> @@ -13,4 +13,6 @@
>  #define __NR_seccomp_exit_32	__NR_exit
>  #define __NR_seccomp_sigreturn_32 __NR_sigreturn
> 
> +#include <asm-generic/seccomp.h>
> +
>  #endif	/* _ASM_S390_SECCOMP_H */

Applied with a modified changelog, since it makes sense anyway to include
the generic header file.
