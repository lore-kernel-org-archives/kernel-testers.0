From: Andi Kleen <andi-Vw/NltI1exuRpAAqCnN02g@public.gmane.org>
Subject: Re: [Bug #11569] Don't complain about disabled irqs when the system has paniced
Date: Mon, 6 Oct 2008 08:02:38 +0200
Message-ID: <20081006060238.GB3180@one.firstfloor.org>
References: <0pOgGB.A.uLG.E475IB@wind> <yWwteD.A.qTH.6475IB@wind>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <yWwteD.A.qTH.6475IB@wind>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andi Kleen <andi-Vw/NltI1exuRpAAqCnN02g@public.gmane.org>

On Sat, Oct 04, 2008 at 07:32:54PM +0200, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.26.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11569
> Subject		: Don't complain about disabled irqs when the system has paniced
> Submitter	: Andi Kleen <andi-Vw/NltI1exuRpAAqCnN02g@public.gmane.org>
> Date		: 2008-09-02 13:49 (33 days old)
> References	: http://marc.info/?l=linux-kernel&m=122036356127282&w=4

The problem is actually worse than this description suggests. I updated
the bugzilla entry now.

The new smp_call_function() that is called from panic is quite unsuitable
for this task:
- It allocates memory (not a good idea in panic0
- It complains about interrupt off
- This whole thing breaks at least machine checks

-Andi

-- 
ak-VuQAYsv1563Yd54FQh9/CA@public.gmane.org
