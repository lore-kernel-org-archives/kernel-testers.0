From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #28622] radeon video lockup
Date: Sun, 13 Feb 2011 11:57:27 +0100
Message-ID: <201102131157.27657.rjw@sisk.pl>
References: <9Pzlq5PlEtH.A.DU.efxVNB@chimera> <1z1FRILH7uF.A.ib.rfxVNB@chimera> <alpine.DEB.2.00.1102121610460.4146@asgard.lang.hm>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.DEB.2.00.1102121610460.4146-Z4YwzcCRHZnr5h6Zg1Auow@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: david-gFPdbfVZQbY@public.gmane.org
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Daniel Poelzleithner <bugzilla.kernel.org-j3Gp85GwYS0dnm+yROfE0A@public.gmane.org>, DRI <dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org>

On Sunday, February 13, 2011, david-gFPdbfVZQbY@public.gmane.org wrote:
> On Sun, 13 Feb 2011, Rafael J. Wysocki wrote:
> 
> > This message has been generated automatically as a part of a report
> > of regressions introduced between 2.6.36 and 2.6.37.
> >
> > The following bug entry is on the current list of known regressions
> > introduced between 2.6.36 and 2.6.37.  Please verify if it still should
> > be listed and let the tracking team know (either way).
> >
> >
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=28622
> > Subject		: radeon video lockup
> > Submitter	: Daniel Poelzleithner <bugzilla.kernel.org-j3Gp85GwYS0dnm+yROfE0A@public.gmane.org>
> > Date		: 2011-02-08 17:48 (5 days old)
> 
> hmm, I've occasionally been expericancing what sounds like a similar 
> issue.
> 
> the screen locks, it doesn't respond to the keyboard (but caps lock still 
> works), frequently the mouse pointer still moves, but you can't click on 
> anything.
> 
> it ususally happens to me a few min after starting firefox (with 10-15 
> windows holding a couple hundred tabs), so it could also be a firefox bug 
> if it can capture the input and not release it.
> 
> I've experianced this on my T61 laptop, and my work machine (Radeon X1300 
> series)
> 
> I'm currently running ubuntu 10.10 which is 2.6.35-25, so if it is the 
> same problem, it wasn't introduced between 2.6.36 and 2.6.37.
> 
> like the OP of the bug report, this is not something that happens 
> frequently, but I don't do much that stresses the video, so starting all 
> these tabs is about as hard as I drive it.

Thanks for the info, added dri-devel to the CC list.

Rafael
