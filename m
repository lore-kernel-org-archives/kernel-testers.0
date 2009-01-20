From: Justin Madru <jdm64-u1xxEuL7cY4AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #12505] 2.6.29-rc1 Firefox crashing on page load
Date: Mon, 19 Jan 2009 22:29:18 -0800
Message-ID: <49756F3E.6050304@gawab.com>
References: <0GOi9pntEoL.A.iGF.B9QdJB@chimera> <2QN7KFic7LG.A.C4F.Q9QdJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <2QN7KFic7LG.A.C4F.Q9QdJB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Justin P. Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.28.  Please verify if it still should be listed and let me know
> (either way).
>
>
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12505
> Subject		: 2.6.29-rc1 Firefox crashing on page load
> Submitter	: Justin Madru <jdm64-u1xxEuL7cY4AvxtiuMwx3w@public.gmane.org>
> Date		: 2009-01-16 20:56 (4 days old)
> References	: http://marc.info/?l=linux-kernel&m=123213941914274&w=4
> Handled-By	: Justin P. Mattock <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
>
>
>
>   
Yes, still a regression sofar, but I've bisected it and checked it with 
a revert of the bad commit.
The revert does fix the bug, but we've yet to figure out why, or come up 
with a patch.

commit 4217458dafaa57d8e26a46f5d05ab8c53cf64191
Author: Hiroshi Shimamoto <h-shimamoto-ehU+Cx/zZe18UrSeD/g0lQ@public.gmane.org>
Date:   Fri Dec 5 17:17:09 2008 -0800

   x86: signal: change type of paramter for sys_rt_sigreturn()

   Impact: cleanup on 32-bit

   Peter pointed this parameter can be changed.

   Signed-off-by: Hiroshi Shimamoto <h-shimamoto-ehU+Cx/zZe18UrSeD/g0lQ@public.gmane.org>
   Signed-off-by: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>

:040000 040000 f5fba48247ff200092c38a54e334f495917229d5 
b901159897e5d85e0dc2a0c9d904d9a73c1d58a2 M      arch

   arch/x86/include/asm/syscalls.h
   arch/x86/kernel/signal.c

diff --git a/arch/x86/include/asm/syscalls.h 
b/arch/x86/include/asm/syscalls.h
index 87803da..3a5252c 100644 (file)
--- a/arch/x86/include/asm/syscalls.h
+++ b/arch/x86/include/asm/syscalls.h
@@ -33,7 +33,7 @@ asmlinkage int sys_sigaction(int, const struct 
old_sigaction __user *,
                            struct old_sigaction __user *);
asmlinkage int sys_sigaltstack(unsigned long);
asmlinkage unsigned long sys_sigreturn(unsigned long);
-asmlinkage int sys_rt_sigreturn(unsigned long);
+asmlinkage int sys_rt_sigreturn(struct pt_regs);

/* kernel/ioport.c */
asmlinkage long sys_iopl(unsigned long);
diff --git a/arch/x86/kernel/signal.c b/arch/x86/kernel/signal.c
index b1f4d34..b1cc6da 100644 (file)
--- a/arch/x86/kernel/signal.c
+++ b/arch/x86/kernel/signal.c
@@ -642,11 +642,9 @@ badframe:
}

#ifdef CONFIG_X86_32
-asmlinkage int sys_rt_sigreturn(unsigned long __unused)
+asmlinkage int sys_rt_sigreturn(struct pt_regs regs)
{
-       struct pt_regs *regs = (struct pt_regs *)&__unused;
-
-       return do_rt_sigreturn(regs);
+       return do_rt_sigreturn(&regs);
}
#else /* !CONFIG_X86_32 */
asmlinkage long sys_rt_sigreturn(struct pt_regs *regs)

Justin Madru
