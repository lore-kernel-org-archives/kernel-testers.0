From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: Fwd: Problem with kernel 2.6.27.5
Date: Sun, 16 Nov 2008 17:39:00 +0100
Message-ID: <200811161739.01179.rjw@sisk.pl>
References: <42c6aeaf0811160721t7ef23e66i21448fe5f49afa1b@mail.gmail.com> <42c6aeaf0811160726j7e17d6e4u589ce8d945962108@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <42c6aeaf0811160726j7e17d6e4u589ce8d945962108-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Gioacchino Mendola <gioacchino.mendola-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, LKML <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

(General question, CCing LKML).

On Sunday, 16 of November 2008, Gioacchino Mendola wrote:
> ---------- Forwarded message ----------
> From: Gioacchino Mendola <gioacchino.mendola-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date: 2008/11/16
> Subject: Problem with kernel 2.6.27.5
> To: majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
> 
> 
> Hello everyone,
> This is my first mail and I hope my questions will not be too trivial!
> I'm trying to develop a  lodable kernel module but I have a problems
> with certain system functions that have been deprecated.
> With the previuos kernel(2.6.26), I used the following functions
> 
> kill_proc(pid_t pid, int sig, int priv)
> 
> find_task_by_pid(int pid)
> 
> Now i use the linux kernel 2.6.27.5
> 
> Instead of kill_proc I tried to use kill_pid.
> Kill_pid() requires as a first argument  a struct pid  and not a pid_t pid.
> 
> kill_pid(struct pid *pid, int sig, int priv)
> 
> how can I get "struct pid" by "pid_t pid"?
> 
> how can I get the "task_struct" by the pid?
> 
> Thanks in advance
> --
> To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
> the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> 
> 



-- 
Everyone knows that debugging is twice as hard as writing a program
in the first place.  So if you're as clever as you can be when you write it,
how will you ever debug it? --- Brian Kernighan
