From: Frans Pop <elendil@planet.nl>
Subject: Re: [PATCH 3/3] vmscan: Force kswapd to take notice faster when high-order watermarks are being hit
Date: Wed, 4 Nov 2009 03:08:56 +0100
Message-ID: <200911040308.59981.elendil@planet.nl>
References: <1256650833-15516-1-git-send-email-mel@csn.ul.ie> <20091104011811.GG22046@csn.ul.ie> <200911040305.59352.elendil@planet.nl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1754058AbZKDCI5@vger.kernel.org>
In-Reply-To: <200911040305.59352.elendil@planet.nl>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Mel Gorman <mel@csn.ul.ie>
Cc: Andrew Morton <akpm@linux-foundation.org>, stable@kernel.org, linux-kernel@vger.kernel.org, "linux-mm@kvack.org" <linux-mm@kvack.org>, Jiri Kosina <jkosina@suse.cz>, Sven Geggus <lists@fuchsschwanzdomain.de>, Karol Lewandowski <karol.k.lewandowski@gmail.com>, Tobias Oetiker <tobi@oetiker.ch>, KOSAKI Motohiro <kosaki.motohiro@jp.fujitsu.com>, Pekka Enberg <penberg@cs.helsinki.fi>, Rik van Riel <riel@redhat.com>, Christoph Lameter <cl@linux-foundation.org>, Stephan von Krawczynski <skraw@ithnet.com>, Kernel Testers List <kernel-testers@vger.kernel.org>

On Wednesday 04 November 2009, Frans Pop wrote:
> The congestion_wait() change, even if theoretically valid, introduced a
> very real regression IMO. Such long desktop freezes during swapping
> should be avoided; .30 and earlier simply behaved a whole lot better in
> the same situation.

I'll see if your new patch helps for this case.
