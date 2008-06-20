From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Subject: Re: [BUG][PATCH -mm] avoid BUG() in __stop_machine_run()
Date: Fri, 20 Jun 2008 15:21:10 +0200
Message-ID: <20080620132110.GB19740@elte.hu>
References: <20080611225945.4da7bb7f.akpm@linux-foundation.org> <485A03E6.2090509@hitachi.com> <200806192012.44459.rusty@rustcorp.com.au> <485A806A.2090602@goop.org>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <485A806A.2090602-TSDbQ3PG+2Y@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Jeremy Fitzhardinge <jeremy-TSDbQ3PG+2Y@public.gmane.org>
Cc: Rusty Russell <rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org>, Hidehiro Kawai <hidehiro.kawai.ez-FCd8Q96Dh0JBDgjK7y7TUQ@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org, sugita <yumiko.sugita.yf-FCd8Q96Dh0JBDgjK7y7TUQ@public.gmane.org>, Satoshi OSHIMA <satoshi.oshima.fk-FCd8Q96Dh0JBDgjK7y7TUQ@public.gmane.org>


* Jeremy Fitzhardinge <jeremy-TSDbQ3PG+2Y@public.gmane.org> wrote:

>> This simply introduces a flag to allow us to disable the capability 
>> checks for internal callers (this is simpler than splitting the 
>> sched_setscheduler() function, since it loops checking permissions).
>>   
> What about?
>
> int sched_setscheduler(struct task_struct *p, int policy,
> 		       struct sched_param *param)
> {
> 	return __sched_setscheduler(p, policy, param, true);
> }
>
>
> int sched_setscheduler_nocheck(struct task_struct *p, int policy,
> 		               struct sched_param *param)
> {
> 	return __sched_setscheduler(p, policy, param, false);
> }
>
>
> (With the appropriate transformation of sched_setscheduler -> __)
>
> Better than scattering stray true/falses around the code.

agreed - it would also be less intrusive on the API change side.

i've created a new tip/sched/new-API-sched_setscheduler topic for this 
to track it, but it would be nice to have a v2 of this patch that 
introduces the new API the way suggested by Jeremy. (Hence the new topic 
is auto-merged into tip/master but not into linux-next yet.) Thanks,

	Ingo
--
To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
