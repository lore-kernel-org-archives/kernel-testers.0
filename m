From: Frans Pop <elendil@planet.nl>
Subject: Re: [PATCH] vmscan: Stop kswapd waiting on congestion when the min watermark is not being met
Date: Fri, 13 Nov 2009 19:26:21 +0100
Message-ID: <200911131926.25291.elendil@planet.nl>
References: <20091113142608.33B9.A69D9226@jp.fujitsu.com> <20091114023138.3DA5.A69D9226@jp.fujitsu.com> <20091113181557.GM29804@csn.ul.ie>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Return-path: <owner-linux-mm@kvack.org>
In-Reply-To: <20091113181557.GM29804@csn.ul.ie>
Content-Disposition: inline
Sender: owner-linux-mm@kvack.org
List-Id: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Mel Gorman <mel@csn.ul.ie>
Cc: Andrew Morton <akpm@linux-foundation.org>, KOSAKI Motohiro <kosaki.motohiro@jp.fujitsu.com>, Jiri Kosina <jkosina@suse.cz>, Sven Geggus <lists@fuchsschwanzdomain.de>, Karol Lewandowski <karol.k.lewandowski@gmail.com>, Tobias Oetiker <tobi@oetiker.ch>, linux-kernel@vger.kernel.org, "linux-mm@kvack.org" <linux-mm@kvack.org>, Pekka Enberg <penberg@cs.helsinki.fi>, Rik van Riel <riel@redhat.com>, Christoph Lameter <cl@linux-foundation.org>, Stephan von Krawczynski <skraw@ithnet.com>, "Rafael J. Wysocki" <rjw@sisk.pl>, Kernel Testers List <kernel-testers@vger.kernel.org>

On Friday 13 November 2009, Mel Gorman wrote:
> If reclaim fails to make sufficient progress, the priority is raised.
> Once the priority is higher, kswapd starts waiting on congestion.
> =A0However, if the zone is below the min watermark then kswapd needs to
> continue working without delay as there is a danger of an increased rate
> of GFP_ATOMIC allocation failure.
>
> This patch changes the conditions under which kswapd waits on
> congestion by only going to sleep if the min watermarks are being met.
>
> This patch replaces
> vmscan-take-order-into-consideration-when-deciding-if-kswapd-is-in-troub
>le.patch .
>
> [mel@csn.ul.ie: Add stats to track how relevant the logic is]
> From: KOSAKI Motohiro <kosaki.motohiro@jp.fujitsu.com>

=46or this to work with git-am, the From: line has to be _above_ the patch=
=20
description (must be the first line of the mail even). AFAIK at least.

> Signed-off-by: KOSAKI Motohiro <kosaki.motohiro@jp.fujitsu.com>
> Signed-off-by: Mel Gorman <mel@csn.ul.ie>

Cheers,
=46JP

--
To unsubscribe, send a message with 'unsubscribe linux-mm' in
the body to majordomo@kvack.org.  For more info on Linux MM,
see: http://www.linux-mm.org/ .
Don't email: <a href=mailto:"dont@kvack.org"> email@kvack.org </a>
