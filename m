From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Subject: Re: [Bug #12422] 2.6.28-git can't resume from str
Date: Sun, 11 Jan 2009 19:07:14 +0100
Message-ID: <20090111180714.GB15326@elte.hu>
References: <XU-8icArWLM.A.UpG.8GfaJB@chimera> <b6a2187b0901110813s5429573cm7d78f39e288f70a3@mail.gmail.com> <20090111162949.GA15338@elte.hu> <200901111736.24350.borntraeger@de.ibm.com> <20090111163904.GA21806@elte.hu> <b6a2187b0901110856j3f2ff6fepc19a816178e38a95@mail.gmail.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <b6a2187b0901110856j3f2ff6fepc19a816178e38a95-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Jeff Chua <jeff.chua.linux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Christian Borntraeger <borntraeger-tA70FqPdS9bQT0dZR+AlfA@public.gmane.org>, Daniel Drake <dsd-aBrp7R+bbdUdnm+yROfE0A@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Phil Dibowitz <phil-LijsOF1cAEA@public.gmane.org>


* Jeff Chua <jeff.chua.linux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:

> On Mon, Jan 12, 2009 at 12:39 AM, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org> wrote:
> > * Christian Borntraeger <borntraeger-tA70FqPdS9bQT0dZR+AlfA@public.gmane.org> wrote
> >> I guess Jeff, meant the other way around.
> >> Since a0e280e0f33f6c859a235fb69a875ed8f3420388 is a fix for a known S2R
> >> problem , the earlier patch (before) does of course not work.
> > ah, okay.
> > So i suspect that at every bisection point, this should be done:
> >  git cherry-pick a0e280e0f33f6c859a235fb69a875ed8f3420388
> 
> I started with the latest git, and did this ...
> 
> git bisect start
> git bisect bad
> git bisect good a0e280e0f33f6c859a235fb69a875ed8f3420388
> 
> Everything in-between should have
> a0e280e0f33f6c859a235fb69a875ed8f3420388 applied?

not necessarily - if an intermediate tree that is checked happened to have 
been based on some earlier -rc, it might have that bug included. Safest is 
to always cherry-pick that commit. (if it has no dependencies)

	Ingo
