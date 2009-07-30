From: Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>
Subject: Re: [Bug #13667] drm: display arifacts when X.Org is stopped
Date: Thu, 30 Jul 2009 13:40:59 +0200
Message-ID: <200907301341.01693.elendil@planet.nl>
References: <35kKlbXMqWN.A.RXD.D0oUKB@chimera> <200907251833.42598.elendil@planet.nl> <21d7e9970907300340t79e063e1n18cdba11538c2fdc@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <21d7e9970907300340t79e063e1n18cdba11538c2fdc-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Dave Airlie <airlied-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Siddha, Suresh B" <suresh.b.siddha-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, "Pallipadi, Venkatesh" <venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

On Thursday 30 July 2009, Dave Airlie wrote:
> On Sun, Jul 26, 2009 at 2:33 AM, Frans Pop<elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org> wrote:
> > On Thursday 09 July 2009, Frans Pop wrote:
> >> > However we shall endeavour to fix this issues as it may be
> >> > systemic of something else going wrong in the new PAT/AGP code.
> >>
> >> Great. Thanks in advance, I do appreciate it.
> >
> > Any news on this?
>
> http://git.infradead.org/users/dwmw2/iommu-agp.git
>
> don't suppose you could pull that tree in and see if it helps?

Sure I can :-)
I merged its master branch on top of current mainline + some local patches 
I have. But I'm afraid it does not make any difference.

Note that I also added Venki's PAT patch set for .32 [1] in my local 
patches because of this issue, but that does not make any difference 
either.

Cheers,
FJP

[1] http://lkml.org/lkml/2009/7/10/284
