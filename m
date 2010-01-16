From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: 2.6.33-rc2: Reported regressions from 2.6.32
Date: Sat, 16 Jan 2010 14:04:07 -0800 (PST)
Message-ID: <alpine.LFD.2.00.1001161402400.13231@localhost.localdomain>
References: <LptzGUUXbTK.A.MSF.ymhOLB@chimera> <20100116174821.GA18306@redhat.com> <201001162257.16277.rjw@sisk.pl>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <201001162257.16277.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: m.s.tsirkin-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Adrian Bunk <bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Natalie Protasevich <protasnb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Network Development <netdev-u79uwXL29TY@public.gmane.org>



On Sat, 16 Jan 2010, Rafael J. Wysocki wrote:
>
> > Immediately upon startup, screen is flickering (becomes
> > lighter and darker again). The problem occurs with kernels
> > 2.6.33-rc1 to 2.6.33-rc4, but not with kernel 2.6.32 and below.
> 
> We've already had several reports like this already.
> 
> Care to review the bugs linked to http://bugzilla.kernel.org/show_bug.cgi?id=14885
> and check if none of them matches the problem you describe?

I suspect that should be fixed by commit 33814341f22 ("drm/i915: disable 
LVDS downclock by default") that got merged today.

So try current -git. 

		Linus
