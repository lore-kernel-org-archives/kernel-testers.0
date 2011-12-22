From: "Srivatsa S. Bhat" <srivatsa.bhat-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
Subject: Re: [Resend] 3.2-rc6+: Reported regressions from 3.0 and 3.1
Date: Thu, 22 Dec 2011 16:28:19 +0530
Message-ID: <4EF30D4B.9060906@linux.vnet.ibm.com>
References: <201112210054.46995.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <201112210054.46995.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, LKML <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org, Belisko Marek <marek.belisko-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Jeff Layton <jlayton-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, awilliam-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org, Tejun Heo <tj-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>

On 12/21/2011 05:24 AM, Rafael J. Wysocki wrote:

> [Evidently, vger has blocked the previous attempts to post this message
> for some reason.  I wonder why?]
> 
> This message contains a list of some regressions from 3.0 and 3.1
> for which there are no fixes in the mainline known to the tracking team.
> If any of them have been fixed already, please let us know.
> 
> If you know of any other unresolved regressions from 3.0 and 3.1, please let us
> know either and we'll add them to the list.  Also, please let us know if any of
> the entries below are invalid.
> 
> The entries below are simplified and the statistics are not present due to the
> continuing Bugzilla outage.
> 

[...]

> 
> Subject    : Freezing of tasks failed after 20.01 seconds in kernel 3.2.0-rc2
> Submitter  : Belisko Marek <marek.belisko-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date       : 2011-11-22 21:20
> Message-ID : 
> CAAfyv36nxYq1EA2pcHi5WR1BdWYHp2sQTY1mMA4Q3JjcOG5RDw-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org
> References : http://marc.info/?l=linux-kernel&m=132199691706100&w=2
> 
>


I believe we already have a fix for this, but not yet in mainline:
http://thread.gmane.org/gmane.linux.nfs/45336

Regards,
Srivatsa S. Bhat
