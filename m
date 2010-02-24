From: KAMEZAWA Hiroyuki <kamezawa.hiroyu-+CUm20s59erQFUHtdCDX3A@public.gmane.org>
Subject: Re: s2disk hang update
Date: Wed, 24 Feb 2010 10:20:37 +0900
Message-ID: <20100224102037.2cca4f83.kamezawa.hiroyu@jp.fujitsu.com>
References: <9b2b86521001020703v23152d0cy3ba2c08df88c0a79@mail.gmail.com>
	<201002222017.55588.rjw@sisk.pl>
	<9b2b86521002230624g20661564mc35093ee0423ff77@mail.gmail.com>
	<201002232213.56455.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <201002232213.56455.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Alan Jenkins <sourcejedi.lkml-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>, Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>, hugh.dickins-IWqWACnzNjwqdlJmJB21zg@public.gmane.org, Pavel Machek <pavel-+ZI9xUNit7I@public.gmane.org>, pm list <linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org>, linux-kernel <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Linux MM <linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org>

On Tue, 23 Feb 2010 22:13:56 +0100
"Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> Well, it still looks like we're waiting for create_workqueue_thread() to
> return, which probably is trying to allocate memory for the thread
> structure.
> 
> My guess is that the preallocated memory pages freed by
> free_unnecessary_pages() go into a place from where they cannot be taken for
> subsequent NOIO allocations.  I have no idea why that happens though.
> 
> To test that theory you can try to change GFP_IOFS to GFP_KERNEL in the
> calls to clear_gfp_allowed_mask() in kernel/power/hibernate.c (and in
> kernel/power/suspend.c for completness).
> 

If allocation of kernel threads for stop_machine_run() is the problem,

What happens when
1. use CONIFG_4KSTACK
or
2. make use of stop_machine_create(), stop_machine_destroy().
   A new interface added by this commit.
  http://git.kernel.org/?p=linux/kernel/git/torvalds/  linux-2.6.git;a=commit;h=9ea09af3bd3090e8349ca2899ca2011bd94cda85
   You can do no-fail stop_machine_run().

Thanks,
-Kame
