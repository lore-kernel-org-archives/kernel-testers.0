From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #13730] hitting lockdep limits...
Date: Tue, 28 Jul 2009 00:27:38 +0200
Message-ID: <200907280027.39339.rjw@sisk.pl>
References: <Jya1GruKQpD.A.16.2GObKB@chimera> <1248675700.6987.1416.camel@twins> <6278d2220907270207g7ff93fd1kdf59e32f139269d3@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <6278d2220907270207g7ff93fd1kdf59e32f139269d3-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Daniel J Blueman <daniel.blueman-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Monday 27 July 2009, Daniel J Blueman wrote:
> On Mon, Jul 27, 2009 at 7:21 AM, Peter Zijlstra<a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org> wrote:
> > On Sun, 2009-07-26 at 22:28 +0200, Rafael J. Wysocki wrote:
> >> This message has been generated automatically as a part of a report
> >> of recent regressions.
> >>
> >> The following bug entry is on the current list of known regressions
> >> from 2.6.30.  Please verify if it still should be listed and let me know
> >> (either way).
> >>
> >>
> >> Bug-Entry     : http://bugzilla.kernel.org/show_bug.cgi?id=13730
> >> Subject               : hitting lockdep limits...
> >> Submitter     : Daniel J Blueman <daniel.blueman-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> >> Date          : 2009-07-05 18:19 (22 days old)
> >> References    : http://marc.info/?l=linux-kernel&m=124681799023782&w=4
> >>
> >
> >
> > Is this still a problem after?
> >
> > commit b0a5b83ee0fce9dbf8ff5fe1f8c9ae7dfafe458c
> > Author: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
> > Date:   Tue Jun 16 16:11:14 2009 +0200
> >
> >    dma-debug: Put all hash-chain locks into the same lock class
> 
> Using the same .config and use profile, I haven't seen this in
> 2.6.31-rc4, thus this can be closed. I've updated the kernel bugzilla
> entry also.

Thanks, closed.

Rafael
