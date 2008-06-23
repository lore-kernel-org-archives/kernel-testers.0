From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Subject: Re: [BUG][PATCH -mm] avoid BUG() in __stop_machine_run()
Date: Mon, 23 Jun 2008 23:01:29 +0200
Message-ID: <20080623210129.GB16579@elte.hu>
References: <20080611225945.4da7bb7f.akpm@linux-foundation.org> <485A806A.2090602@goop.org> <20080620132110.GB19740@elte.hu> <200806231355.39329.rusty@rustcorp.com.au>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <200806231355.39329.rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Rusty Russell <rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org>
Cc: Jeremy Fitzhardinge <jeremy-TSDbQ3PG+2Y@public.gmane.org>, Hidehiro Kawai <hidehiro.kawai.ez-FCd8Q96Dh0JBDgjK7y7TUQ@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org, sugita <yumiko.sugita.yf-FCd8Q96Dh0JBDgjK7y7TUQ@public.gmane.org>, Satoshi OSHIMA <satoshi.oshima.fk-FCd8Q96Dh0JBDgjK7y7TUQ@public.gmane.org>


* Rusty Russell <rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org> wrote:

> On Friday 20 June 2008 23:21:10 Ingo Molnar wrote:
> > * Jeremy Fitzhardinge <jeremy-TSDbQ3PG+2Y@public.gmane.org> wrote:
[...]
> > > (With the appropriate transformation of sched_setscheduler -> __)
> > >
> > > Better than scattering stray true/falses around the code.
> >
> > agreed - it would also be less intrusive on the API change side.
> 
> Yes, here's the patch.  I've put it in my tree for testing, too.
> 
> sched_setscheduler_nocheck: add a flag to control access checks

applied to tip/sched/new-API-sched_setscheduler, thanks Rusty. Also 
added it to auto-sched-next so that it shows up in linux-next.

btw., had to merge this bit manually:

> +/**
> + * sched_setscheduler_nocheck - change the scheduling policy and/or RT priority of a thread 
> from kernelspace.
> + * @p: the task in question.

as it suffered from line-warp damage.

	Ingo
