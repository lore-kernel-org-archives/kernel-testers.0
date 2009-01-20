From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Subject: Re: [Bug #12505] 2.6.29-rc1 Firefox crashing on page load
Date: Tue, 20 Jan 2009 08:43:12 +0100
Message-ID: <20090120074312.GD16426@elte.hu>
References: <0GOi9pntEoL.A.iGF.B9QdJB@chimera> <2QN7KFic7LG.A.C4F.Q9QdJB@chimera> <49756F3E.6050304@gawab.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <49756F3E.6050304-u1xxEuL7cY4AvxtiuMwx3w@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Justin Madru <jdm64-u1xxEuL7cY4AvxtiuMwx3w@public.gmane.org>, Hiroshi Shimamoto <h-shimamoto-ehU+Cx/zZe18UrSeD/g0lQ@public.gmane.org>, "H. Peter Anvin" <hpa-YMNOUZJC4hwAvxtiuMwx3w@public.gmane.org>, Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Justin P. Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>


(added Cc:s)

* Justin Madru <jdm64-u1xxEuL7cY4AvxtiuMwx3w@public.gmane.org> wrote:

> Rafael J. Wysocki wrote:
>> This message has been generated automatically as a part of a report
>> of recent regressions.
>>
>> The following bug entry is on the current list of known regressions
>> from 2.6.28.  Please verify if it still should be listed and let me know
>> (either way).
>>
>>
>> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12505
>> Subject		: 2.6.29-rc1 Firefox crashing on page load
>> Submitter	: Justin Madru <jdm64-u1xxEuL7cY4AvxtiuMwx3w@public.gmane.org>
>> Date		: 2009-01-16 20:56 (4 days old)
>> References	: http://marc.info/?l=linux-kernel&m=123213941914274&w=4
>> Handled-By	: Justin P. Mattock <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
>>
>>
>>
>>   
> Yes, still a regression sofar, but I've bisected it and checked it with  
> a revert of the bad commit.
> The revert does fix the bug, but we've yet to figure out why, or come up  
> with a patch.
>
> commit 4217458dafaa57d8e26a46f5d05ab8c53cf64191
> Author: Hiroshi Shimamoto <h-shimamoto-ehU+Cx/zZe18UrSeD/g0lQ@public.gmane.org>
> Date:   Fri Dec 5 17:17:09 2008 -0800
>
>   x86: signal: change type of paramter for sys_rt_sigreturn()
>
>   Impact: cleanup on 32-bit
>
>   Peter pointed this parameter can be changed.
>
>   Signed-off-by: Hiroshi Shimamoto <h-shimamoto-ehU+Cx/zZe18UrSeD/g0lQ@public.gmane.org>
>   Signed-off-by: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
>
> :040000 040000 f5fba48247ff200092c38a54e334f495917229d5  
> b901159897e5d85e0dc2a0c9d904d9a73c1d58a2 M      arch
>
>   arch/x86/include/asm/syscalls.h
>   arch/x86/kernel/signal.c
>
> diff --git a/arch/x86/include/asm/syscalls.h  
> b/arch/x86/include/asm/syscalls.h
> index 87803da..3a5252c 100644 (file)
> --- a/arch/x86/include/asm/syscalls.h
> +++ b/arch/x86/include/asm/syscalls.h
> @@ -33,7 +33,7 @@ asmlinkage int sys_sigaction(int, const struct  
> old_sigaction __user *,
>                            struct old_sigaction __user *);
> asmlinkage int sys_sigaltstack(unsigned long);
> asmlinkage unsigned long sys_sigreturn(unsigned long);
> -asmlinkage int sys_rt_sigreturn(unsigned long);
> +asmlinkage int sys_rt_sigreturn(struct pt_regs);
>
> /* kernel/ioport.c */
> asmlinkage long sys_iopl(unsigned long);
> diff --git a/arch/x86/kernel/signal.c b/arch/x86/kernel/signal.c
> index b1f4d34..b1cc6da 100644 (file)
> --- a/arch/x86/kernel/signal.c
> +++ b/arch/x86/kernel/signal.c
> @@ -642,11 +642,9 @@ badframe:
> }
>
> #ifdef CONFIG_X86_32
> -asmlinkage int sys_rt_sigreturn(unsigned long __unused)
> +asmlinkage int sys_rt_sigreturn(struct pt_regs regs)
> {
> -       struct pt_regs *regs = (struct pt_regs *)&__unused;
> -
> -       return do_rt_sigreturn(regs);
> +       return do_rt_sigreturn(&regs);
> }
> #else /* !CONFIG_X86_32 */
> asmlinkage long sys_rt_sigreturn(struct pt_regs *regs)

hm, this looks like a compiler bug: GCC might assume above that the 'regs' 
parameter is the callee's (while in reality they are the caller's and we 
rely on GCC not clobbering them on the stack).

Justin, does it work if you apply the patch below instead of the revert?

Thanks,

	Ingo

-------------------->
From c401278356e4eae139e4c15695b6c1cdb63e7376 Mon Sep 17 00:00:00 2001
From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Date: Tue, 20 Jan 2009 08:38:47 +0100
Subject: [PATCH] x86: prevent tail call optimization in signal.c

Impact: fix firefox crash

Another victim of GCC believing that on-stack function arguments are
owned by the callee - while in reality for asmlinkage functions they
are very much owned by the caller. Stomping on them can corrupt the
user-space register state, causing weird crashes.

Reported-by: Justin Madru <jdm64-u1xxEuL7cY4AvxtiuMwx3w@public.gmane.org>
Signed-off-by: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
---
 arch/x86/kernel/signal.c |    6 +++++-
 1 files changed, 5 insertions(+), 1 deletions(-)

diff --git a/arch/x86/kernel/signal.c b/arch/x86/kernel/signal.c
index 89bb766..dee83af 100644
--- a/arch/x86/kernel/signal.c
+++ b/arch/x86/kernel/signal.c
@@ -634,7 +634,11 @@ badframe:
 #ifdef CONFIG_X86_32
 asmlinkage int sys_rt_sigreturn(struct pt_regs regs)
 {
-	return do_rt_sigreturn(&regs);
+	int ret = do_rt_sigreturn(&regs);
+
+	asmlinkage_protect(1, ret, regs);
+
+	return ret;
 }
 #else /* !CONFIG_X86_32 */
 asmlinkage long sys_rt_sigreturn(struct pt_regs *regs)
