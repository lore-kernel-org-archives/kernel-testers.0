From: Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH 0/5] Candidate fix for increased number of GFP_ATOMIC
	failures V2
Date: Fri, 6 Nov 2009 09:24:47 +0000
Message-ID: <20091106092447.GC25926@csn.ul.ie>
References: <1256221356-26049-1-git-send-email-mel@csn.ul.ie> <20091106060323.GA5528@yumi.tdiedrich.de>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20091106060323.GA5528-VCkOej6z8qt4W7ppVJ7FiLNAH6kLmebB@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Tobias Diedrich <ranma+kernel-YxUgxmcw2FPQD6PfKP4TzA@public.gmane.org>, Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>, Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>, Sven Geggus <lists-+AJD3D7QEjjt/htJsj1pd9AswbaBtrod@public.gmane.org>, Karol Lewandowski <karol.k.lewand>

On Fri, Nov 06, 2009 at 07:03:23AM +0100, Tobias Diedrich wrote:
> Mel Gorman wrote:
> > [No BZ ID] Kernel crash on 2.6.31.x (kcryptd: page allocation failure..)
> > 	This apparently is easily reproducible, particular in comparison to
> > 	the other reports. The point of greatest interest is that this is
> > 	order-0 GFP_ATOMIC failures. Sven, I'm hoping that you in particular
> > 	will be able to follow the tests below as you are the most likely
> > 	person to have an easily reproducible situation.
> 
> I've also seen order-0 failures on 2.6.31.5:
> Note that this is with a one process hogging and mlocking memory and
> min_free_kbytes reduced to 100 to reproduce the problem more easily.
> 

Is that a vanilla, with patches 1-3 applied or both?

> I tried bisecting the issue, but in the end without memory pressure
> I can't reproduce it reliably and with the above mentioned pressure
> I get allocation failures even on 2.6.30.o
> 

To be honest, it's not entirely unexpected with min_free_kbytes set that
low. The system should cope with a certain amount of pressure but with
pressure and a low min_free_kbytes, the system will simply be reacting
too late to free memory in the non-atomic paths.

-- 
Mel Gorman
Part-time Phd Student                          Linux Technology Center
University of Limerick                         IBM Dublin Software Lab
