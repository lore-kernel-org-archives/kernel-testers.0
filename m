From: KOSAKI Motohiro <kosaki.motohiro@jp.fujitsu.com>
Subject: Re: [PATCH 1/5] page allocator: Always wake kswapd when restarting an allocation attempt after direct reclaim failed
Date: Fri, 13 Nov 2009 14:23:21 +0900 (JST)
Message-ID: <20091113142026.33AD.A69D9226@jp.fujitsu.com>
References: <1258054235-3208-1-git-send-email-mel@csn.ul.ie> <1258054235-3208-2-git-send-email-mel@csn.ul.ie>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <owner-linux-mm@kvack.org>
In-Reply-To: <1258054235-3208-2-git-send-email-mel@csn.ul.ie>
Sender: owner-linux-mm@kvack.org
List-Id: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Mel Gorman <mel@csn.ul.ie>
Cc: kosaki.motohiro@jp.fujitsu.com, Andrew Morton <akpm@linux-foundation.org>, Frans Pop <elendil@planet.nl>, Jiri Kosina <jkosina@suse.cz>, Sven Geggus <lists@fuchsschwanzdomain.de>, Karol Lewandowski <karol.k.lewandowski@gmail.com>, Tobias Oetiker <tobi@oetiker.ch>, linux-kernel@vger.kernel.org, "linux-mm@kvack.org\"" <linux-mm@kvack.org>, Pekka Enberg <penberg@cs.helsinki.fi>, Rik van Riel <riel@redhat.com>, Christoph Lameter <cl@linux-foundation.org>, Stephan von Krawczynski <skraw@ithnet.com>, "Rafael J. Wysocki" <rjw@sisk.pl>, Kernel Testers List <kernel-testers@vger.kernel.org>

> If a direct reclaim makes no forward progress, it considers whether it
> should go OOM or not. Whether OOM is triggered or not, it may retry the
> application afterwards. In times past, this would always wake kswapd as well
> but currently, kswapd is not woken up after direct reclaim fails. For order-0
> allocations, this makes little difference but if there is a heavy mix of
> higher-order allocations that direct reclaim is failing for, it might mean
> that kswapd is not rewoken for higher orders as much as it did previously.
> 
> This patch wakes up kswapd when an allocation is being retried after a direct
> reclaim failure. It would be expected that kswapd is already awake, but
> this has the effect of telling kswapd to reclaim at the higher order as well.
> 
> Signed-off-by: Mel Gorman <mel@csn.ul.ie>
> Reviewed-by: Christoph Lameter <cl@linux-foundation.org>
> Reviewed-by: Pekka Enberg <penberg@cs.helsinki.fi>
> Reviewed-by: KOSAKI Motohiro <kosaki.motohiro@jp.fujitsu.com>

Umm,
My mail box have the carbon copy of akpm sent this patch to linus.
(bellow subject and data)

Does this have any update?

-----------------------------------------------------------------
Subject: [patch 07/35] page allocator: always wake kswapd when restarting an allocation attempt after direct reclaim failed
To: torvalds@linux-foundation.org
Cc: akpm@linux-foundation.org,
 mel@csn.ul.ie,
 cl@linux-foundation.org,
 kosaki.motohiro@jp.fujitsu.com,
 penberg@cs.helsinki.fi,
 stable@kernel.org
From: akpm@linux-foundation.org
Date: Wed, 11 Nov 2009 14:26:14 -0800



--
To unsubscribe, send a message with 'unsubscribe linux-mm' in
the body to majordomo@kvack.org.  For more info on Linux MM,
see: http://www.linux-mm.org/ .
Don't email: <a href=mailto:"dont@kvack.org"> email@kvack.org </a>
