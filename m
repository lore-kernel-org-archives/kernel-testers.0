From: Kevin Shanahan <kmshanah-biM/RbsGxha6c6uEtOJ/EA@public.gmane.org>
Subject: Re: [Bug #12465] KVM guests stalling on 2.6.28 (bisected)
Date: Wed, 25 Feb 2009 08:41:06 +1030
Message-ID: <1235513466.4860.7.camel@kulgan.wumi.org.au>
References: <HFSEX4uppGO.A.JSG.2yzoJB@chimera>
	 <LLno3yT_fnC.A.-RH.ZzzoJB@chimera>
	 <1235437183.4988.2.camel@kulgan.wumi.org.au>  <49A3E38F.7080306@redhat.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <49A3E38F.7080306-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Avi Kivity <avi-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Mike Galbraith <efault-Mmb7MZpHnFY@public.gmane.org>, Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>

On Tue, 2009-02-24 at 14:09 +0200, Avi Kivity wrote:
> Kevin Shanahan wrote:
> > On Mon, 2009-02-23 at 23:03 +0100, Rafael J. Wysocki wrote:
> >   
> >> This message has been generated automatically as a part of a report
> >> of regressions introduced between 2.6.27 and 2.6.28.
> >>
> >> The following bug entry is on the current list of known regressions
> >> introduced between 2.6.27 and 2.6.28.  Please verify if it still should
> >> be listed and let me know (either way).
> >>     
> >
> > Yes, the problem should still be listed.
> > The bug is still present as recently as 2.6.29-rc5-00299-gadfafef.
> >   
> 
> Did tracing turn anything up?

I provided some more traces using Ingo's "tip" branch, but I don't think
anyone has looked at them yet.

  http://bugzilla.kernel.org/show_bug.cgi?id=12465#c11

I can provide more traces if e.g. a different set of functions is
required, but I'm not going to be able to analyse them properly myself.

I should have a bit more time for testing next week and I plan to try
setting up the guest with the different virtual network adapters models
to see if that helps.

Cheers,
Kevin.

