From: Christian Borntraeger <borntraeger-tA70FqPdS9bQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #12422] 2.6.28-git can't resume from str
Date: Sun, 11 Jan 2009 17:36:24 +0100
Message-ID: <200901111736.24350.borntraeger@de.ibm.com>
References: <XU-8icArWLM.A.UpG.8GfaJB@chimera> <b6a2187b0901110813s5429573cm7d78f39e288f70a3@mail.gmail.com> <20090111162949.GA15338@elte.hu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090111162949.GA15338-X9Un+BFzKDI@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Cc: Jeff Chua <jeff.chua.linux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Daniel Drake <dsd-aBrp7R+bbdUdnm+yROfE0A@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Phil Dibowitz <phil-LijsOF1cAEA@public.gmane.org>

Am Sonntag 11 Januar 2009 schrieb Ingo Molnar:
> 
> * Jeff Chua <jeff.chua.linux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
> 
> > On Sun, Jan 11, 2009 at 10:18 PM, Christian Borntraeger
> > <borntraeger-tA70FqPdS9bQT0dZR+AlfA@public.gmane.org> wrote:
> > > Am Sonntag 11 Januar 2009 schrieb Daniel Drake:
> > >> Rafael J. Wysocki wrote:
> > >> > This message has been generated automatically as a part of a report
> > >> > of recent regressions.
> > >> >
> > >> > The following bug entry is on the current list of known regressions
> > >> > from 2.6.28.  Please verify if it still should be listed and let me 
know
> > >> > (either way).
> > >> >
> > >> >
> > >> > Bug-Entry   : http://bugzilla.kernel.org/show_bug.cgi?id=12422
> > >> > Subject             : 2.6.28-git can't resume from str
> > >> > Submitter   : Jeff Chua <jeff.chua.linux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > >> > Date                : 2009-01-10 1:39 (2 days old)
> > >> > References  : http://marc.info/?l=linux-kernel&m=123155157909282&w=4
> > >>
> > >> The bisection looks invalid. It is unlikely to be this commit at fault.
> > >> Jeff, do you even have that camera?
> > >>
> > >> It is also easy to revert that commit by hand. Just delete the
> > >> unusual_devs entry for it.
> > >
> > > I found a nearby commit during bisect, which looks much saner:
> > >
> > > http://marc.info/?l=linux-kernel&m=123167815028388&w=2
> > 
> > This was committed earlier than
> > a0e280e0f33f6c859a235fb69a875ed8f3420388, and
> > a0e280e0f33f6c859a235fb69a875ed8f3420388 was the last working kernel
> > that is able to suspend/resume. Go one before, and suspend/resume
> > breaks.
> 
> so you mean a0e280e0f33f6c859a235fb69a875ed8f3420388 seems good, while the 
> next step in Linus's tree, 52fefcec97c25b15887e6a9a885ca54e7f7c0928 is 
> already broken?

I guess Jeff, meant the other way around.
Since a0e280e0f33f6c859a235fb69a875ed8f3420388 is a fix for a known S2R 
problem , the earlier patch (before) does of course not work.
