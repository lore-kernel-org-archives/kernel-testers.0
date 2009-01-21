From: Justin Madru <jdm64-u1xxEuL7cY4AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #12505] 2.6.29-rc1 Firefox crashing on page load
Date: Wed, 21 Jan 2009 01:31:18 -0800
Message-ID: <4976EB66.2010301@gawab.com>
References: <0GOi9pntEoL.A.iGF.B9QdJB@chimera> <2QN7KFic7LG.A.C4F.Q9QdJB@chimera> <49756F3E.6050304@gawab.com> <20090120074312.GD16426@elte.hu> <20090120081650.GA29725@elte.hu> <20090120083700.GA5277@elte.hu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090120083700.GA5277-X9Un+BFzKDI@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Cc: Hiroshi Shimamoto <h-shimamoto-ehU+Cx/zZe18UrSeD/g0lQ@public.gmane.org>, "H. Peter Anvin" <hpa-YMNOUZJC4hwAvxtiuMwx3w@public.gmane.org>, Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>, Roland McGrath <roland-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Justin P. Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

Ingo Molnar wrote:
> * Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org> wrote:
>
>   
>> * Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org> wrote:
>>
>>     
>>> (added Cc:s)
>>>       
>>> Justin, does it work if you apply the patch below instead of the revert?
>>>       
>> hm, that patch wont build because the protect_asmlinkage macro is rather 
>> limited - it cannot deal with structure parameters.
>>
>> We might be better off with a revert here, and a comment added that points 
>> out the problem.
>>     
>
> Below is the revert+document commit that i have queued up.
>
> Justin, could you try the tip/master tree (which has this fix included):
>
>   http://people.redhat.com/mingo/tip.git/README
>
> does Firefox still work fine?
>
> 	Ingo
>
> ------------->
> >From 779c9b9f8cb87cdfbd299ee7beb62e50ce139a92 Mon Sep 17 00:00:00 2001
> From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
> Date: Tue, 20 Jan 2009 09:31:49 +0100
> Subject: [PATCH] Revert "x86: signal: change type of paramter for sys_rt_sigreturn()"
>
> This reverts commit 4217458dafaa57d8e26a46f5d05ab8c53cf64191.
>
> Justin Madru bisected this commit, it was causing weird Firefox
> crashes.
>
> The reason is that GCC mis-optimizes (re-uses) the on-stack parameters of
> the calling frame, which corrupts the syscall return pt_regs state and
> thus corrupts user-space register state.
>
> So we go back to the slightly less clean but more optimization-safe
> method of getting to pt_regs. Also add a comment to explain this.
>
> Resolves: http://bugzilla.kernel.org/show_bug.cgi?id=12505
>
> Reported-and-bisected-by: Justin Madru <jdm64-u1xxEuL7cY4AvxtiuMwx3w@public.gmane.org>
> Signed-off-by: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
> ---
>  arch/x86/include/asm/syscalls.h |    2 +-
>  arch/x86/kernel/signal.c        |   11 +++++++++--
>  2 files changed, 10 insertions(+), 3 deletions(-)
>
> diff --git a/arch/x86/include/asm/syscalls.h b/arch/x86/include/asm/syscalls.h
> index 9c6797c..c0b0bda 100644
> --- a/arch/x86/include/asm/syscalls.h
> +++ b/arch/x86/include/asm/syscalls.h
> @@ -40,7 +40,7 @@ asmlinkage int sys_sigaction(int, const struct old_sigaction __user *,
>  			     struct old_sigaction __user *);
>  asmlinkage int sys_sigaltstack(unsigned long);
>  asmlinkage unsigned long sys_sigreturn(unsigned long);
> -asmlinkage int sys_rt_sigreturn(struct pt_regs);
> +asmlinkage int sys_rt_sigreturn(unsigned long);
>  
>  /* kernel/ioport.c */
>  asmlinkage long sys_iopl(unsigned long);
> diff --git a/arch/x86/kernel/signal.c b/arch/x86/kernel/signal.c
> index 89bb766..df0587f 100644
> --- a/arch/x86/kernel/signal.c
> +++ b/arch/x86/kernel/signal.c
> @@ -632,9 +632,16 @@ badframe:
>  }
>  
>  #ifdef CONFIG_X86_32
> -asmlinkage int sys_rt_sigreturn(struct pt_regs regs)
> +/*
> + * Note: do not pass in pt_regs directly as with tail-call optimization
> + * GCC will incorrectly stomp on the caller's frame and corrupt user-space
> + * register state:
> + */
> +asmlinkage int sys_rt_sigreturn(unsigned long __unused)
>  {
> -	return do_rt_sigreturn(&regs);
> +	struct pt_regs *regs = (struct pt_regs *)&__unused;
> +
> +	return do_rt_sigreturn(regs);
>  }
>  #else /* !CONFIG_X86_32 */
>  asmlinkage long sys_rt_sigreturn(struct pt_regs *regs)
>
>   
Ok, I officially tested tip/master and firefox is happy it can talk to 
friends with google talk ;-)
Although.... I don't use google talk.... it just seems to be this 
mandatory tab I can't get rid of
on my google page that caused a regression to be noticed so that the 
kernel could be improved!

Justin Madru
