From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #15672] KVM bug, git bisected
Date: Wed, 21 Apr 2010 07:02:02 +0200
Message-ID: <201004210702.02129.rjw@sisk.pl>
References: <deuQKFRcc0B.A.3EG.BRSzLB@tosh> <4BCE188A.1060408@redhat.com> <4BCE72D6.6010809@redhat.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <4BCE72D6.6010809-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Rik van Riel <riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Kent Overstreet <kent.overstreet-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Wednesday 21 April 2010, Rik van Riel wrote:
> On 04/20/2010 05:11 PM, Rik van Riel wrote:
> > On 04/19/2010 11:19 PM, Rafael J. Wysocki wrote:
> >> This message has been generated automatically as a part of a summary
> >> report
> >> of recent regressions.
> >>
> >> The following bug entry is on the current list of known regressions
> >> from 2.6.33. Please verify if it still should be listed and let the
> >> tracking team
> >> know (either way).
> >>
> >>
> >> Bug-Entry : http://bugzilla.kernel.org/show_bug.cgi?id=15672
> >> Subject : KVM bug, git bisected
> >> Submitter : Kent Overstreet<kent.overstreet-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> >> Date : 2010-03-27 12:43 (24 days old)
> >> First-Bad-Commit:
> >> http://kernel.org/git/linus/5beb49305251e5669852ed541e8e2f2f7696c53e
> >> Message-ID :<4BADFD74.8060904-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> >> References : http://marc.info/?l=linux-kernel&m=126969385121711&w=2
> >
> > Should be fixed by commit ea90002b0fa7bdee86ec22eba1d951f30bf043a6
> 
> Never mind me - this is a harmless (but loud) overflow
> of PREEMPT_BITS in the preempt count.

OK, what am I supposed to do with this entry, then?  Close?

Rafael
