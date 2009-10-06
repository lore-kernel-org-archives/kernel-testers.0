From: KOSAKI Motohiro <kosaki.motohiro@jp.fujitsu.com>
Subject: Re: [Bug #14141] order 2 page allocation failures in iwlagn
Date: Tue,  6 Oct 2009 10:25:40 +0900 (JST)
Message-ID: <20091006102110.5F9D.A69D9226@jp.fujitsu.com>
References: <200910052334.23833.elendil@planet.nl> <alpine.DEB.1.00.0910051700440.31688@chino.kir.corp.google.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <owner-linux-mm@kvack.org>
In-Reply-To: <alpine.DEB.1.00.0910051700440.31688@chino.kir.corp.google.com>
Sender: owner-linux-mm@kvack.org
List-Id: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: David Rientjes <rientjes@google.com>
Cc: kosaki.motohiro@jp.fujitsu.com, Frans Pop <elendil@planet.nl>, Mel Gorman <mel@csn.ul.ie>, "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Pekka Enberg <penberg@cs.helsinki.fi>, Reinette Chatre <reinette.chatre@intel.com>, Bartlomiej Zolnierkiewicz <bzolnier@gmail.com>, Karol Lewandowski <karol.k.lewandowski@gmail.com>, linux-mm@kvack.org

> On Mon, 5 Oct 2009, Frans Pop wrote:
> 
> > And the winner is:
> > 2ff05b2b4eac2e63d345fc731ea151a060247f53 is first bad commit
> > commit 2ff05b2b4eac2e63d345fc731ea151a060247f53
> > Author: David Rientjes <rientjes@google.com>
> > Date:   Tue Jun 16 15:32:56 2009 -0700
> > 
> >     oom: move oom_adj value from task_struct to mm_struct
> > 
> > I'm confident that the bisection is good. The test case was very reliable 
> > while zooming in on the merge from akpm.
> > 
> 
> I doubt it for two reasons: (i) this commit was reverted in 0753ba0 since 
> 2.6.31-rc7 and is no longer in the kernel, and (ii) these are GFP_ATOMIC 
> allocations which would be unaffected by oom killer scores.

I agree. this patch is pretty obvious correct. it was reverted by
one unfortunately regression.


--
To unsubscribe, send a message with 'unsubscribe linux-mm' in
the body to majordomo@kvack.org.  For more info on Linux MM,
see: http://www.linux-mm.org/ .
Don't email: <a href=mailto:"dont@kvack.org"> email@kvack.org </a>
