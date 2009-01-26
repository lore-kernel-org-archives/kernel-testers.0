From: =?ISO-8859-1?Q?Fr=E9d=E9ric_Weisbecker?= <fweisbec-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [RFC][PATCH] ftrace: function graph trace context switches
Date: Mon, 26 Jan 2009 16:39:54 +0100
Message-ID: <c62985530901260739j5424e802ne11c1376a505e07@mail.gmail.com>
References: <cX2gZ6Cy9nC.A.4dB.bJRdJB@chimera> <20090120130714.GA11048@elte.hu>
	 <alpine.DEB.1.10.0901200957220.2681@gandalf.stny.rr.com>
	 <49760E2D.2060109@redhat.com>
	 <1232547932.4895.119.camel@kulgan.wumi.org.au>
	 <49773275.3020203@redhat.com> <20090121151820.GA23813@elte.hu>
	 <1232963730.4921.12.camel@kulgan.wumi.org.au>
	 <1232969705.4863.46.camel@laptop> <1232980692.4863.104.camel@laptop>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=vnjgUgb4fhWRKMzVB+d0eB3KphsziW5ol2JuSkmRJvM=;
        b=XPfL0XYOWMNi/IusUu78u55ZcqJpj76W5wrWIrtrJsGLWxzh/3irch9zjRkobS8sUz
         +21R4VQze3gYDGQENGyFgaQ/lFJtQPfLVgsOXPnn53mISbDHyqQdpmvdKQD3xulaRC/t
         QRJ23DXx0HIhnRvsV71HdU1jv5P61fyALT238=
In-Reply-To: <1232980692.4863.104.camel@laptop>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Peter Zijlstra <peterz-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>
Cc: Kevin Shanahan <kmshanah-biM/RbsGxha6c6uEtOJ/EA@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Avi Kivity <avi-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Steven Rostedt <rostedt-nx8X9YLhiw1AfugRpC6u6w@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Mike Galbraith <efault-Mmb7MZpHnFY@public.gmane.org>, bugme-daemon-590EEB7GvNiWaY/ihj7yzEB+6BGkLq7r@public.gmane.org

2009/1/26 Peter Zijlstra <peterz-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>:
> On Mon, 2009-01-26 at 12:35 +0100, Peter Zijlstra wrote:
>>
>> Another something nice would be to have ctx switches like:
>>
>> foo-1 => bar-2 ran: ${time foo spend on the cpu} since: ${time bar
>> spend away from the cpu}
>
> Steve, Frederic, how's this?


That looks nice after a quick sight. Using the ctx switch probe to
trace the context switches is,
of course, more natural :-)
And we have now these useful time run/wait bits.

Thanks!


> (compile tested only)
>
> ---
>  include/linux/ftrace.h               |    5 ++
>  kernel/sched_fair.c                  |    1 -
>  kernel/trace/Kconfig                 |    1 +
>  kernel/trace/trace.c                 |   51 +++++++++++++++++++
>  kernel/trace/trace.h                 |   10 ++++
>  kernel/trace/trace_functions_graph.c |   88 ++++++++++++++-------------------
>  6 files changed, 104 insertions(+), 52 deletions(-)
>
> diff --git a/include/linux/ftrace.h b/include/linux/ftrace.h
> index 9f7880d..411b027 100644
> --- a/include/linux/ftrace.h
> +++ b/include/linux/ftrace.h
> @@ -381,6 +381,11 @@ struct ftrace_graph_ret {
>        int depth;
>  };
>
> +struct ftrace_graph_switch {
> +       pid_t prev, next;
> +       u64 ran, since;
> +};
> +
>  #ifdef CONFIG_FUNCTION_GRAPH_TRACER
>
>  /*
> diff --git a/kernel/sched_fair.c b/kernel/sched_fair.c
> index f34cf42..fa477ac 100644
> --- a/kernel/sched_fair.c
> +++ b/kernel/sched_fair.c
> @@ -530,7 +530,6 @@ update_stats_wait_end(struct cfs_rq *cfs_rq, struct sched_entity *se)
>        schedstat_set(se->wait_count, se->wait_count + 1);
>        schedstat_set(se->wait_sum, se->wait_sum +
>                        rq_of(cfs_rq)->clock - se->wait_start);
> -       schedstat_set(se->wait_start, 0);
>  }
>
>  static inline void
> diff --git a/kernel/trace/Kconfig b/kernel/trace/Kconfig
> index dde1d46..7aa1c13 100644
> --- a/kernel/trace/Kconfig
> +++ b/kernel/trace/Kconfig
> @@ -67,6 +67,7 @@ config FUNCTION_GRAPH_TRACER
>        bool "Kernel Function Graph Tracer"
>        depends on HAVE_FUNCTION_GRAPH_TRACER
>        depends on FUNCTION_TRACER
> +       select SCHEDSTATS
>        default y
>        help
>          Enable the kernel to trace a function at both its return
> diff --git a/kernel/trace/trace.c b/kernel/trace/trace.c
> index 2129ab9..380a334 100644
> --- a/kernel/trace/trace.c
> +++ b/kernel/trace/trace.c
> @@ -31,6 +31,7 @@
>  #include <linux/fs.h>
>  #include <linux/kprobes.h>
>  #include <linux/writeback.h>
> +#include <linux/sched.h>
>
>  #include <linux/stacktrace.h>
>  #include <linux/ring_buffer.h>
> @@ -820,6 +821,35 @@ static void __trace_graph_return(struct trace_array *tr,
>        entry->ret                              = *trace;
>        ring_buffer_unlock_commit(global_trace.buffer, event, irq_flags);
>  }
> +
> +static void __trace_graph_switch(struct trace_array *tr,
> +                                struct trace_array_cpu *data,
> +                                unsigned long flags, int pc,
> +                                struct task_struct *prev,
> +                                struct task_struct *next)
> +{
> +       struct ring_buffer_event *event;
> +       struct ftrace_graph_switch_entry *entry;
> +       unsigned long irq_flags;
> +
> +       if (unlikely(local_read(&__get_cpu_var(ftrace_cpu_disabled))))
> +               return;
> +
> +       event = ring_buffer_lock_reserve(global_trace.buffer, sizeof(*entry),
> +                                        &irq_flags);
> +       if (!event)
> +               return;
> +       entry   = ring_buffer_event_data(event);
> +       tracing_generic_entry_update(&entry->ent, flags, pc);
> +       entry->ent.type                 = TRACE_GRAPH_SWITCH;
> +       entry->ctx.prev = prev->pid;
> +       entry->ctx.next = next->pid;
> +       entry->ctx.ran = prev->se.sum_exec_runtime -
> +                   prev->se.prev_sum_exec_runtime;
> +       entry->ctx.since = next->se.exec_start - next->se.wait_start;
> +
> +       ring_buffer_unlock_commit(global_trace.buffer, event, irq_flags);
> +}
>  #endif
>
>  void
> @@ -1097,6 +1127,27 @@ void trace_graph_return(struct ftrace_graph_ret *trace)
>        atomic_dec(&data->disabled);
>        local_irq_restore(flags);
>  }
> +
> +void trace_graph_switch(struct task_struct *prev, struct task_struct *next)
> +{
> +       struct trace_array *tr = &global_trace;
> +       struct trace_array_cpu *data;
> +       unsigned long flags;
> +       long disabled;
> +       int cpu;
> +       int pc;
> +
> +       local_irq_save(flags);
> +       cpu = raw_smp_processor_id();
> +       data = tr->data[cpu];
> +       disabled = atomic_inc_return(&data->disabled);
> +       if (likely(disabled == 1)) {
> +               pc = preempt_count();
> +               __trace_graph_switch(tr, data, flags, pc, prev, next);
> +       }
> +       atomic_dec(&data->disabled);
> +       local_irq_restore(flags);
> +}
>  #endif /* CONFIG_FUNCTION_GRAPH_TRACER */
>
>  enum trace_file_type {
> diff --git a/kernel/trace/trace.h b/kernel/trace/trace.h
> index b96037d..781fbce 100644
> --- a/kernel/trace/trace.h
> +++ b/kernel/trace/trace.h
> @@ -27,6 +27,7 @@ enum trace_type {
>        TRACE_BOOT_RET,
>        TRACE_GRAPH_RET,
>        TRACE_GRAPH_ENT,
> +       TRACE_GRAPH_SWITCH,
>        TRACE_USER_STACK,
>        TRACE_HW_BRANCHES,
>        TRACE_KMEM_ALLOC,
> @@ -71,6 +72,12 @@ struct ftrace_graph_ret_entry {
>        struct trace_entry                      ent;
>        struct ftrace_graph_ret         ret;
>  };
> +
> +struct ftrace_graph_switch_entry {
> +       struct trace_entry              ent;
> +       struct ftrace_graph_switch      ctx;
> +};
> +
>  extern struct tracer boot_tracer;
>
>  /*
> @@ -295,6 +302,8 @@ extern void __ftrace_bad_type(void);
>                          TRACE_GRAPH_ENT);             \
>                IF_ASSIGN(var, ent, struct ftrace_graph_ret_entry,      \
>                          TRACE_GRAPH_RET);             \
> +               IF_ASSIGN(var, ent, struct ftrace_graph_switch_entry,   \
> +                         TRACE_GRAPH_SWITCH);          \
>                IF_ASSIGN(var, ent, struct hw_branch_entry, TRACE_HW_BRANCHES);\
>                IF_ASSIGN(var, ent, struct trace_power, TRACE_POWER); \
>                IF_ASSIGN(var, ent, struct kmemtrace_alloc_entry,       \
> @@ -438,6 +447,7 @@ void trace_function(struct trace_array *tr,
>
>  void trace_graph_return(struct ftrace_graph_ret *trace);
>  int trace_graph_entry(struct ftrace_graph_ent *trace);
> +void trace_graph_switch(struct task_struct *prev, struct task_struct *next);
>
>  void tracing_start_cmdline_record(void);
>  void tracing_stop_cmdline_record(void);
> diff --git a/kernel/trace/trace_functions_graph.c b/kernel/trace/trace_functions_graph.c
> index 66fc7b8..cf6494b 100644
> --- a/kernel/trace/trace_functions_graph.c
> +++ b/kernel/trace/trace_functions_graph.c
> @@ -10,6 +10,7 @@
>  #include <linux/uaccess.h>
>  #include <linux/ftrace.h>
>  #include <linux/fs.h>
> +#include <trace/sched.h>
>
>  #include "trace.h"
>  #include "trace_output.h"
> @@ -158,28 +159,13 @@ print_graph_proc(struct trace_seq *s, pid_t pid)
>        return TRACE_TYPE_HANDLED;
>  }
>
> -
> -/* If the pid changed since the last trace, output this event */
>  static enum print_line_t
> -verif_pid(struct trace_seq *s, pid_t pid, int cpu, pid_t *last_pids_cpu)
> +print_graph_switch(struct ftrace_graph_switch_entry *field, struct trace_seq *s,
> +                       struct trace_iterator *iter)
>  {
> -       pid_t prev_pid;
> -       pid_t *last_pid;
> +       int cpu = iter->cpu;
>        int ret;
>
> -       if (!last_pids_cpu)
> -               return TRACE_TYPE_HANDLED;
> -
> -       last_pid = per_cpu_ptr(last_pids_cpu, cpu);
> -
> -       if (*last_pid == pid)
> -               return TRACE_TYPE_HANDLED;
> -
> -       prev_pid = *last_pid;
> -       *last_pid = pid;
> -
> -       if (prev_pid == -1)
> -               return TRACE_TYPE_HANDLED;
>  /*
>  * Context-switch trace line:
>
> @@ -197,7 +183,7 @@ verif_pid(struct trace_seq *s, pid_t pid, int cpu, pid_t *last_pids_cpu)
>        if (ret == TRACE_TYPE_PARTIAL_LINE)
>                TRACE_TYPE_PARTIAL_LINE;
>
> -       ret = print_graph_proc(s, prev_pid);
> +       ret = print_graph_proc(s, field->ctx.prev);
>        if (ret == TRACE_TYPE_PARTIAL_LINE)
>                TRACE_TYPE_PARTIAL_LINE;
>
> @@ -205,16 +191,21 @@ verif_pid(struct trace_seq *s, pid_t pid, int cpu, pid_t *last_pids_cpu)
>        if (!ret)
>                TRACE_TYPE_PARTIAL_LINE;
>
> -       ret = print_graph_proc(s, pid);
> +       ret = print_graph_proc(s, field->ctx.next);
>        if (ret == TRACE_TYPE_PARTIAL_LINE)
>                TRACE_TYPE_PARTIAL_LINE;
>
> +       ret = trace_seq_printf(s, "  ran: %Lu, since: %Lu",
> +                       field->ctx.ran, field->ctx.since);
> +       if (!ret)
> +               TRACE_TYPE_PARTIAL_LINE;
> +
>        ret = trace_seq_printf(s,
>                "\n ------------------------------------------\n\n");
>        if (!ret)
>                TRACE_TYPE_PARTIAL_LINE;
>
> -       return ret;
> +       return TRACE_TYPE_HANDLED;
>  }
>
>  static bool
> @@ -471,14 +462,9 @@ print_graph_entry(struct ftrace_graph_ent_entry *field, struct trace_seq *s,
>  {
>        int ret;
>        int cpu = iter->cpu;
> -       pid_t *last_entry = iter->private;
>        struct trace_entry *ent = iter->ent;
>        struct ftrace_graph_ent *call = &field->graph_ent;
>
> -       /* Pid */
> -       if (verif_pid(s, ent->pid, cpu, last_entry) == TRACE_TYPE_PARTIAL_LINE)
> -               return TRACE_TYPE_PARTIAL_LINE;
> -
>        /* Interrupt */
>        ret = print_graph_irq(s, call->func, TRACE_GRAPH_ENT, cpu, ent->pid);
>        if (ret == TRACE_TYPE_PARTIAL_LINE)
> @@ -523,12 +509,8 @@ print_graph_return(struct ftrace_graph_ret *trace, struct trace_seq *s,
>        int i;
>        int ret;
>        int cpu = iter->cpu;
> -       pid_t *last_pid = iter->private;
>        unsigned long long duration = trace->rettime - trace->calltime;
>
> -       /* Pid */
> -       if (verif_pid(s, ent->pid, cpu, last_pid) == TRACE_TYPE_PARTIAL_LINE)
> -               return TRACE_TYPE_PARTIAL_LINE;
>
>        /* Absolute time */
>        if (tracer_flags.val & TRACE_GRAPH_PRINT_ABS_TIME) {
> @@ -600,7 +582,6 @@ print_graph_comment(struct print_entry *trace, struct trace_seq *s,
>        int i;
>        int ret;
>        int cpu = iter->cpu;
> -       pid_t *last_pid = iter->private;
>
>        /* Absolute time */
>        if (tracer_flags.val & TRACE_GRAPH_PRINT_ABS_TIME) {
> @@ -609,10 +590,6 @@ print_graph_comment(struct print_entry *trace, struct trace_seq *s,
>                        return TRACE_TYPE_PARTIAL_LINE;
>        }
>
> -       /* Pid */
> -       if (verif_pid(s, ent->pid, cpu, last_pid) == TRACE_TYPE_PARTIAL_LINE)
> -               return TRACE_TYPE_PARTIAL_LINE;
> -
>        /* Cpu */
>        if (tracer_flags.val & TRACE_GRAPH_PRINT_CPU) {
>                ret = print_graph_cpu(s, cpu);
> @@ -677,6 +654,11 @@ print_graph_function(struct trace_iterator *iter)
>        struct trace_entry *entry = iter->ent;
>
>        switch (entry->type) {
> +       case TRACE_GRAPH_SWITCH: {
> +               struct ftrace_graph_switch_entry *field;
> +               trace_assign_type(field, entry);
> +               return print_graph_switch(field, s, iter);
> +       }
>        case TRACE_GRAPH_ENT: {
>                struct ftrace_graph_ent_entry *field;
>                trace_assign_type(field, entry);
> @@ -724,34 +706,38 @@ static void print_graph_headers(struct seq_file *s)
>        seq_printf(s, "               |   |   |   |\n");
>  }
>
> -static void graph_trace_open(struct trace_iterator *iter)
> +static void probe_sched_switch(struct rq *rq,
> +                              struct task_struct *prev,
> +                              struct task_struct *next)
>  {
> -       /* pid on the last trace processed */
> -       pid_t *last_pid = alloc_percpu(pid_t);
> -       int cpu;
> +       trace_graph_switch(prev, next);
> +}
>
> -       if (!last_pid)
> -               pr_warning("function graph tracer: not enough memory\n");
> -       else
> -               for_each_possible_cpu(cpu) {
> -                       pid_t *pid = per_cpu_ptr(last_pid, cpu);
> -                       *pid = -1;
> -               }
> +static DEFINE_MUTEX(graph_trace_mutex);
> +static int graph_trace_ref;
>
> -       iter->private = last_pid;
> +static void graph_trace_start(struct trace_array *tr)
> +{
> +       mutex_lock(&graph_trace_mutex);
> +       if (!(graph_trace_ref++))
> +               register_trace_sched_switch(probe_sched_switch);
> +       mutex_unlock(&graph_trace_mutex);
>  }
>
> -static void graph_trace_close(struct trace_iterator *iter)
> +static void graph_trace_stop(struct trace_array *tr)
>  {
> -       percpu_free(iter->private);
> +       mutex_lock(&graph_trace_mutex);
> +       if (!(--graph_trace_ref))
> +               unregister_trace_sched_switch(probe_sched_switch);
> +       mutex_unlock(&graph_trace_mutex);
>  }
>
>  static struct tracer graph_trace __read_mostly = {
>        .name           = "function_graph",
> -       .open           = graph_trace_open,
> -       .close          = graph_trace_close,
>        .init           = graph_trace_init,
>        .reset          = graph_trace_reset,
> +       .start          = graph_trace_start,
> +       .stop           = graph_trace_stop,
>        .print_line     = print_graph_function,
>        .print_header   = print_graph_headers,
>        .flags          = &tracer_flags,
>
>
>
