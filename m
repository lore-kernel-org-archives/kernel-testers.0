From: Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>
Subject: Re: [Bug #13667] drm: display arifacts when X.Org is stopped
Date: Sat, 25 Jul 2009 18:33:40 +0200
Message-ID: <200907251833.42598.elendil@planet.nl>
References: <35kKlbXMqWN.A.RXD.D0oUKB@chimera> <21d7e9970907081642l3ef6df5blde31df656cd74432@mail.gmail.com> <200907090328.53643.elendil@planet.nl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200907090328.53643.elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Dave Airlie <airlied-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Siddha, Suresh B" <suresh.b.siddha-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, "Pallipadi, Venkatesh" <venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

On Thursday 09 July 2009, Frans Pop wrote:
> > However we shall endeavour to fix this issues as it may be systemic
> > of something else going wrong in the new PAT/AGP code.
>
> Great. Thanks in advance, I do appreciate it.

Any news on this?

> BTW, today I noticed another regression, but I have not yet looked into
> it deeply. When I suspend I normally see at least some console messages
> from the suspend procedure on the framebuffer console, but with .31-rc2
> I only see a cursor. It does not really affect the suspend/resume.
> Could possibly be related. Will investigate further.

This turned out to be unrelated, and is actually an improvement. It's a 
logical result of a printk patch I submitted (for .32):
http://lkml.org/lkml/2009/7http://lkml.org/lkml/2009/7/6/108/6/108

Cheers,
FJP
