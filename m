From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Subject: Re: [Bug #11330] int3: 0000 in tsc_read_refs when using powernow_k7
Date: Mon, 18 Aug 2008 20:33:33 +0200
Message-ID: <20080818183328.GB22989@elte.hu>
References: <DLWXHEp37wB.A.duD.yZzpIB@albercik> <sNRO-BDDjQL.A.v-E.dazpIB@albercik> <1219079740.13032.14.camel@alok-dev1>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <1219079740.13032.14.camel@alok-dev1>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Alok Kataria <akataria-pghWNbHTmq7QT0dZR+AlfA@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Daniel Hecht <dhecht-pghWNbHTmq7QT0dZR+AlfA@public.gmane.org>, Mikko Vinni <mmvinni-/E1597aS9LQAvxtiuMwx3w@public.gmane.org>, the arch/x86 maintainers <x86-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>


* Alok Kataria <akataria-pghWNbHTmq7QT0dZR+AlfA@public.gmane.org> wrote:

> On Sat, 2008-08-16 at 12:02 -0700, Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.26.  Please verify if it still should be listed and let me know
> > (either way).
> 
> There is this fix 
> 
> commit d554d9a4295dd0595d12eeccbc55d1f495b15176
> Author: Marcin Slusarz <marcin.slusarz-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date:   Mon Aug 11 00:07:44 2008 +0200
> 
>     x86, tsc: fix section mismatch warning
> 
> which is in x86/tip-master which fixes this issue. 
> I don't see the fix in the mainline tree yet. 
> 
> Maybe Ingo, has it queued, for upstream ?
> Ingo, other than a section mismatch warning it also fixes a real bug.

yeah, hpa queued it up into x86/urgent as well earlier today, it will go 
out with the next pull request.

	Ingo
