From: Borislav Petkov <bp-Gina5bIWoIWzQB+pC5nmwQ@public.gmane.org>
Subject: Re: [Bug #15672] KVM bug, git bisected
Date: Wed, 21 Apr 2010 08:20:15 +0200
Message-ID: <20100421062015.GB3839@liondog.tnic>
References: <deuQKFRcc0B.A.3EG.BRSzLB@tosh>
 <4BCE188A.1060408@redhat.com>
 <4BCE72D6.6010809@redhat.com>
 <201004210702.02129.rjw@sisk.pl>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=alien8.de; s=alien8;
	t=1271830818; bh=ihvcpCs10t4wGoqNQImu/WYjzGa6xBXc8wZeRIFzZU4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:In-Reply-To; b=isS7JcX4FHBjA2rJYDi8M4ckzhqK7h1aavbWTr
	U/rMuF5LXNGrLPGkmNrJ3iqqBAQxzXy9faJKX3W8PFrygRbH63UkCEpeyxAKDRvoot8
	s6wZ7XaXgPeFw9BQYs8NhWB8YYeY9SK3oQIMrnDFafg7bOGCb9p2BAQLr58Pd4Aexg=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=alien8.de; s=alien8;
	t=1271830817; bh=ihvcpCs10t4wGoqNQImu/WYjzGa6xBXc8wZeRIFzZU4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:In-Reply-To; b=F+H6pgdqVHp040g8jX/z3SPYVjk0FWmAtIWEza
	YMmt5efjlLfVj2cDKEQdV4WepAe7a0/5gPLoqpRK/dPdFkBMhjqrwrzNQHjoVBo2f2s
	yGaQlU1yjCS27tbJaL+Kra8uhNQZzxgYGbhQx0xhBcArTXM6uNnHIt6Xno8i7+pqVQ=
Content-Disposition: inline
In-Reply-To: <201004210702.02129.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Rik van Riel <riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Kent Overstreet <kent.overstreet-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Peter Zijlstra <peterz-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>

From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Date: Wed, Apr 21, 2010 at 07:02:02AM +0200

> On Wednesday 21 April 2010, Rik van Riel wrote:
> > On 04/20/2010 05:11 PM, Rik van Riel wrote:
> > > On 04/19/2010 11:19 PM, Rafael J. Wysocki wrote:
> > >> This message has been generated automatically as a part of a summary
> > >> report
> > >> of recent regressions.
> > >>
> > >> The following bug entry is on the current list of known regressions
> > >> from 2.6.33. Please verify if it still should be listed and let the
> > >> tracking team
> > >> know (either way).
> > >>
> > >>
> > >> Bug-Entry : http://bugzilla.kernel.org/show_bug.cgi?id=15672
> > >> Subject : KVM bug, git bisected
> > >> Submitter : Kent Overstreet<kent.overstreet-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > >> Date : 2010-03-27 12:43 (24 days old)
> > >> First-Bad-Commit:
> > >> http://kernel.org/git/linus/5beb49305251e5669852ed541e8e2f2f7696c53e
> > >> Message-ID :<4BADFD74.8060904-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > >> References : http://marc.info/?l=linux-kernel&m=126969385121711&w=2
> > >
> > > Should be fixed by commit ea90002b0fa7bdee86ec22eba1d951f30bf043a6
> > 
> > Never mind me - this is a harmless (but loud) overflow
> > of PREEMPT_BITS in the preempt count.
> 
> OK, what am I supposed to do with this entry, then?  Close?

FWIW, I hit that warning too when chasing the anon_vma regression. It
seems on certain workloads (for me it was several kvm guests) we're
close to max preemption depth.

Anyway, adding some more people to Cc.

-- 
Regards/Gruss,
    Boris.
