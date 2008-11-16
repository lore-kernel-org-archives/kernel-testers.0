From: "Gioacchino Mendola" <gioacchino.mendola-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Fwd: Problem with kernel 2.6.27.5
Date: Sun, 16 Nov 2008 16:26:42 +0100
Message-ID: <42c6aeaf0811160726j7e17d6e4u589ce8d945962108@mail.gmail.com>
References: <42c6aeaf0811160721t7ef23e66i21448fe5f49afa1b@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=x7hJ4DC5RMTKn5whCERWUAXJyDC+678qrOxG2f9ej4g=;
        b=ExCh8l3AcFK2LLD/5p1xAwECUvQ8B1w4Zp3JtOlfi4MQjj6NXP12zEjknBjXbQN+RL
         r2y8o5YB3EX4URw8GUflVbrL4kgWnbEL9+r9D/IXCDQgrWbcfzWE8yh3gp9VlxGb7+1m
         cfewsv+1EYDrB+1HizxIC65u5LBf5PIkMw1w8=
In-Reply-To: <42c6aeaf0811160721t7ef23e66i21448fe5f49afa1b-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

---------- Forwarded message ----------
From: Gioacchino Mendola <gioacchino.mendola-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date: 2008/11/16
Subject: Problem with kernel 2.6.27.5
To: majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org


Hello everyone,
This is my first mail and I hope my questions will not be too trivial!
I'm trying to develop a  lodable kernel module but I have a problems
with certain system functions that have been deprecated.
With the previuos kernel(2.6.26), I used the following functions

kill_proc(pid_t pid, int sig, int priv)

find_task_by_pid(int pid)

Now i use the linux kernel 2.6.27.5

Instead of kill_proc I tried to use kill_pid.
Kill_pid() requires as a first argument  a struct pid  and not a pid_t pid.

kill_pid(struct pid *pid, int sig, int priv)

how can I get "struct pid" by "pid_t pid"?

how can I get the "task_struct" by the pid?

Thanks in advance
