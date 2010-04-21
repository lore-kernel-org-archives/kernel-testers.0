From: Peter Zijlstra <peterz-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>
Subject: Re: [Bug #15672] KVM bug, git bisected
Date: Wed, 21 Apr 2010 10:45:54 +0200
Message-ID: <1271839554.1776.56.camel@laptop>
References: <deuQKFRcc0B.A.3EG.BRSzLB@tosh> <4BCE188A.1060408@redhat.com>
	 <4BCE72D6.6010809@redhat.com> <201004210702.02129.rjw@sisk.pl>
	 <20100421062015.GB3839@liondog.tnic>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20100421062015.GB3839-f9CnO7I+Q6zU6FkGJEIX5A@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Borislav Petkov <bp-Gina5bIWoIWzQB+pC5nmwQ@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Rik van Riel <riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Kent Overstreet <kent.overstreet-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>

On Wed, 2010-04-21 at 08:20 +0200, Borislav Petkov wrote:
> From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
> Date: Wed, Apr 21, 2010 at 07:02:02AM +0200
> 
> > On Wednesday 21 April 2010, Rik van Riel wrote:
> > > On 04/20/2010 05:11 PM, Rik van Riel wrote:
> > > > On 04/19/2010 11:19 PM, Rafael J. Wysocki wrote:
> > > >> This message has been generated automatically as a part of a summary
> > > >> report
> > > >> of recent regressions.
> > > >>
> > > >> The following bug entry is on the current list of known regressions
> > > >> from 2.6.33. Please verify if it still should be listed and let the
> > > >> tracking team
> > > >> know (either way).
> > > >>
> > > >>
> > > >> Bug-Entry : http://bugzilla.kernel.org/show_bug.cgi?id=15672
> > > >> Subject : KVM bug, git bisected
> > > >> Submitter : Kent Overstreet<kent.overstreet-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > > >> Date : 2010-03-27 12:43 (24 days old)
> > > >> First-Bad-Commit:
> > > >> http://kernel.org/git/linus/5beb49305251e5669852ed541e8e2f2f7696c53e
> > > >> Message-ID :<4BADFD74.8060904-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > > >> References : http://marc.info/?l=linux-kernel&m=126969385121711&w=2
> > > >
> > > > Should be fixed by commit ea90002b0fa7bdee86ec22eba1d951f30bf043a6
> > > 
> > > Never mind me - this is a harmless (but loud) overflow
> > > of PREEMPT_BITS in the preempt count.
> > 
> > OK, what am I supposed to do with this entry, then?  Close?
> 
> FWIW, I hit that warning too when chasing the anon_vma regression. It
> seems on certain workloads (for me it was several kvm guests) we're
> close to max preemption depth.
> 
> Anyway, adding some more people to Cc.

Right, so my proposed solution to this is to make those locks
preemptible, but that's a large and unfinished patch-set.

As it is, its only a warning, nothing really serious should happen, but
the situation does suck.
