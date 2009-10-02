From: Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>
Subject: Re: [Bug #14141] order 2 page allocation failures in iwlagn
Date: Fri, 2 Oct 2009 12:01:32 +0200
Message-ID: <200910021201.35672.elendil@planet.nl>
References: <3onW63eFtRF.A.xXH.oMTxKB@chimera> <200910021111.55749.elendil@planet.nl> <20091002093226.GJ21906@csn.ul.ie>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20091002093226.GJ21906-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>, Reinette Chatre <reinette.chatre-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Bartlomiej Zolnierkiewicz <bzolnier-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Karol Lewandowski <karol.k.lewandowski-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Friday 02 October 2009, Mel Gorman wrote:
> On Fri, Oct 02, 2009 at 11:11:52AM +0200, Frans Pop wrote:
> > My own feeling is that Bartlomiej is correct and that something has
> > changed since .29 and that on average we do have less higher order
> > areas available after the system has been in use for some time, but I
> > can't substantiate that. I do know that before .30 I had never seen
> > the SKB allocation errors.
> >
> > Main problem is that it's hard to deliberately and reproducibly get
> > the system in a state where the errors occur.
>
> Apparently, Karol Lewandowski (cc added) has a reliable
> reproduction case for when the firmware loading problem occurs
> (http://lkml.org/lkml/2009/9/30/242). While it's not the same problem
> exactly, it's probable they're related. I'm hoping the problem commit
> can be identified by his bisection whenever he gets around to it.

That does indeed look like a third independent report for basically the 
same issue.

> [...], I accept that the problem is apparently occuring more now than it
> did so something has changed that is not obvious to normal testing.

Cool, that's progress ;-)
