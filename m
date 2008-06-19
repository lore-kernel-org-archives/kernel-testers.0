From: Jeremy Fitzhardinge <jeremy-TSDbQ3PG+2Y@public.gmane.org>
Subject: Re: [BUG][PATCH -mm] avoid BUG() in __stop_machine_run()
Date: Thu, 19 Jun 2008 08:51:06 -0700
Message-ID: <485A806A.2090602@goop.org>
References: <20080611225945.4da7bb7f.akpm@linux-foundation.org> <485A03E6.2090509@hitachi.com> <200806192012.44459.rusty@rustcorp.com.au>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200806192012.44459.rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Rusty Russell <rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org>
Cc: Hidehiro Kawai <hidehiro.kawai.ez-FCd8Q96Dh0JBDgjK7y7TUQ@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org, sugita <yumiko.sugita.yf-FCd8Q96Dh0JBDgjK7y7TUQ@public.gmane.org>, Satoshi OSHIMA <satoshi.oshima.fk-FCd8Q96Dh0JBDgjK7y7TUQ@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>

Rusty Russell wrote:
> On Thursday 19 June 2008 16:59:50 Hidehiro Kawai wrote:
>   
>> When a process loads a kernel module, __stop_machine_run() is called, and
>> it calls sched_setscheduler() to give newly created kernel threads highest
>> priority.  However, the process can have no CAP_SYS_NICE which required
>> for sched_setscheduler() to increase the priority.  For example, SystemTap
>> loads its module with only CAP_SYS_MODULE.  In this case,
>> sched_setscheduler() returns -EPERM, then BUG() is called.
>>     
>
> Hi Hidehiro,
>
> 	Nice catch.  This can happen in the current code, it just doesn't
> BUG().
>
>   
>> Failure of sched_setscheduler() wouldn't be a real problem, so this
>> patch just ignores it.
>>     
>
> 	Well, it can mean that the stop_machine blocks indefinitely.  Better
> than a BUG(), but we should aim higher.
>
>   
>> Or, should we give the CAP_SYS_NICE capability temporarily?
>>     
>
>         I don't think so.  It can be seen from another thread, and in theory
> that should not see something random.  Worse, they can change it from
> another thread.
>
> How's this?
>
> sched_setscheduler: add a flag to control access checks
>
> Hidehiro Kawai noticed that sched_setscheduler() can fail in
> stop_machine: it calls sched_setscheduler() from insmod, which can
> have CAP_SYS_MODULE without CAP_SYS_NICE.
>
> This simply introduces a flag to allow us to disable the capability
> checks for internal callers (this is simpler than splitting the
> sched_setscheduler() function, since it loops checking permissions).
>   
What about?

int sched_setscheduler(struct task_struct *p, int policy,
		       struct sched_param *param)
{
	return __sched_setscheduler(p, policy, param, true);
}


int sched_setscheduler_nocheck(struct task_struct *p, int policy,
		               struct sched_param *param)
{
	return __sched_setscheduler(p, policy, param, false);
}


(With the appropriate transformation of sched_setscheduler -> __)

Better than scattering stray true/falses around the code.

    J
--
To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
