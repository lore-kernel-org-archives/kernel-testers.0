From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #11330] int3: 0000 in tsc_read_refs when using powernow_k7
Date: Tue, 19 Aug 2008 19:02:10 +0200
Message-ID: <200808191902.11282.rjw@sisk.pl>
References: <DLWXHEp37wB.A.duD.yZzpIB@albercik> <20080818183328.GB22989@elte.hu> <20080819002232.GF9914@elte.hu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20080819002232.GF9914-X9Un+BFzKDI@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Cc: Alok Kataria <akataria-pghWNbHTmq7QT0dZR+AlfA@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Daniel Hecht <dhecht-pghWNbHTmq7QT0dZR+AlfA@public.gmane.org>, Mikko Vinni <mmvinni-/E1597aS9LQAvxtiuMwx3w@public.gmane.org>, the arch/x86 maintainers <x86-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>

On Tuesday, 19 of August 2008, Ingo Molnar wrote:
> 
> * Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org> wrote:
> 
> > > There is this fix 
> > > 
> > > commit d554d9a4295dd0595d12eeccbc55d1f495b15176
> > > Author: Marcin Slusarz <marcin.slusarz-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > > Date:   Mon Aug 11 00:07:44 2008 +0200
> > > 
> > >     x86, tsc: fix section mismatch warning
> > > 
> > > which is in x86/tip-master which fixes this issue. 
> > > I don't see the fix in the mainline tree yet. 
> > > 
> > > Maybe Ingo, has it queued, for upstream ?
> > > Ingo, other than a section mismatch warning it also fixes a real bug.
> > 
> > yeah, hpa queued it up into x86/urgent as well earlier today, it will go 
> > out with the next pull request.
> 
> FYI, commit d554d9a4295d is upstream now, and will be part of -rc4.

Thanks, I closed the bug.

Rafael
