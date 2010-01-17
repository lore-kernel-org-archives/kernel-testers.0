From: "Michael S. Tsirkin" <m.s.tsirkin-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: 2.6.33-rc2: Reported regressions from 2.6.32
Date: Sun, 17 Jan 2010 14:32:19 +0200
Message-ID: <20100117123218.GA3182@redhat.com>
References: <LptzGUUXbTK.A.MSF.ymhOLB@chimera> <20100116174821.GA18306@redhat.com> <201001162257.16277.rjw@sisk.pl> <alpine.LFD.2.00.1001161402400.13231@localhost.localdomain>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:date:from:to:cc:subject
         :message-id:references:mime-version:content-type:content-disposition
         :in-reply-to:user-agent;
        bh=dIxyOY5jCFK/CXtsBYlj6EAcqsH56gc0v/aKlbh0umQ=;
        b=KhuC9P/0mgERTKq/aklXJEm1SqKWXTRMslp92u1auUurhUpvnXtI5tJlj9QemaVSDV
         5CHaFAcxk6l1CGuZWd3OF3FN1sycJ+eEMRyX2eeNfGNfbn8LM3fMpYHrjKxiprSl4NOk
         qwRNz2QHNRhWoJetkeJm0CRMBomfmO8NryXGk=
Content-Disposition: inline
In-Reply-To: <alpine.LFD.2.00.1001161402400.13231-bi+AKbBUZKY6gyzm1THtWbp2dZbC/Bob@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Adrian Bunk <bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Natalie Protasevich <protasnb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Network Development <netdev-u79uwXL29TY@public.gmane.org>

On Sat, Jan 16, 2010 at 02:04:07PM -0800, Linus Torvalds wrote:
> 
> 
> On Sat, 16 Jan 2010, Rafael J. Wysocki wrote:
> >
> > > Immediately upon startup, screen is flickering (becomes
> > > lighter and darker again). The problem occurs with kernels
> > > 2.6.33-rc1 to 2.6.33-rc4, but not with kernel 2.6.32 and below.
> > 
> > We've already had several reports like this already.
> > 
> > Care to review the bugs linked to http://bugzilla.kernel.org/show_bug.cgi?id=14885
> > and check if none of them matches the problem you describe?
> 
> I suspect that should be fixed by commit 33814341f22 ("drm/i915: disable 
> LVDS downclock by default") that got merged today.
> 
> So try current -git. 
> 
> 		Linus


Tested with 6ccf80eb15ccaca4d3f1ab5162b9ded5eecd9971, still get
the flickering effect. so 33814341f22 does not seem to help.

-- 
MST
