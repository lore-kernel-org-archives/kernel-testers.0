From: KOSAKI Motohiro <kosaki.motohiro@jp.fujitsu.com>
Subject: Re: [PATCH] vmscan: Have kswapd sleep for a short interval and double check it should be asleep fix 1
Date: Wed, 18 Nov 2009 14:27:18 +0900 (JST)
Message-ID: <20091118142111.3E12.A69D9226@jp.fujitsu.com>
References: <2f11576a0911140134u21eafa83t9642bb25ccd953de@mail.gmail.com> <20091117103420.GX29804@csn.ul.ie>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <owner-linux-mm@kvack.org>
In-Reply-To: <20091117103420.GX29804@csn.ul.ie>
Sender: owner-linux-mm@kvack.org
List-Id: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Mel Gorman <mel@csn.ul.ie>
Cc: kosaki.motohiro@jp.fujitsu.com, Andrew Morton <akpm@linux-foundation.org>, Frans Pop <elendil@planet.nl>, Jiri Kosina <jkosina@suse.cz>, Sven Geggus <lists@fuchsschwanzdomain.de>, Karol Lewandowski <karol.k.lewandowski@gmail.com>, Tobias Oetiker <tobi@oetiker.ch>, linux-kernel@vger.kernel.org, "linux-mm@kvack.org" <linux-mm@kvack.org>, Pekka Enberg <penberg@cs.helsinki.fi>, Rik van Riel <riel@redhat.com>, Christoph Lameter <cl@linux-foundation.org>, Stephan von Krawczynski <skraw@ithnet.com>, "Rafael J. Wysocki" <rjw@sisk.pl>, Kernel Testers List <kernel-testers@vger.kernel.org>

> When checking if kswapd is sleeping prematurely, all populated zones are
> checked instead of the zones the instance of kswapd is responsible for.
> The counters for kswapd going to sleep prematurely are also named poorly.
> This patch makes kswapd only check its own zones and renames the relevant
> counters.
> 
> This is a fix to the patch
> vmscan-have-kswapd-sleep-for-a-short-interval-and-double-check-it-should-be-asleep.patch
> and is based on top of mmotm-2009-11-13-19-59. It would be preferable if
> Kosaki Motohiro signed off on it as he had comments on the patch but the
> discussion petered out without a solid conclusion.
> 
> Signed-off-by: Mel Gorman <mel@csn.ul.ie>

Looks good to me.
I apologize to bother you by nit for long time.

	Reviewed-by: KOSAKI Motohiro <kosaki.motohiro@jp.fujitsu.com>



--
To unsubscribe, send a message with 'unsubscribe linux-mm' in
the body to majordomo@kvack.org.  For more info on Linux MM,
see: http://www.linux-mm.org/ .
Don't email: <a href=mailto:"dont@kvack.org"> email@kvack.org </a>
