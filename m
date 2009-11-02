From: Christoph Lameter <cl@linux-foundation.org>
Subject: Re: [PATCH 2/3] page allocator: Do not allow interrupts to use
 ALLOC_HARDER
Date: Mon, 2 Nov 2009 11:42:36 -0500 (EST)
Message-ID: <alpine.DEB.1.10.0911021139100.24535@V090114053VZO-1>
References: <1256650833-15516-1-git-send-email-mel@csn.ul.ie> <1256650833-15516-3-git-send-email-mel@csn.ul.ie> <20091027130924.fa903f5a.akpm@linux-foundation.org> <alpine.DEB.2.00.0910271411530.9183@chino.kir.corp.google.com> <20091031184054.GB1475@ucw.cz>
 <alpine.DEB.2.00.0910311248490.13829@chino.kir.corp.google.com> <20091031201158.GB29536@elf.ucw.cz> <4AECCF6A.4020206@redhat.com>
Mime-Version: 1.0
Return-path: <owner-linux-mm@kvack.org>
In-Reply-To: <4AECCF6A.4020206@redhat.com>
Sender: owner-linux-mm@kvack.org
List-Id: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Rik van Riel <riel@redhat.com>
Cc: Pavel Machek <pavel@ucw.cz>, David Rientjes <rientjes@google.com>, Andrew Morton <akpm@linux-foundation.org>, Mel Gorman <mel@csn.ul.ie>, stable@kernel.org, linux-kernel@vger.kernel.org, linux-mm@kvack.org, Frans Pop <elendil@planet.nl>, Jiri Kosina <jkosina@suse.cz>, Sven Geggus <lists@fuchsschwanzdomain.de>, Karol Lewandowski <karol.k.lewandowski@gmail.com>, Tobias Oetiker <tobi@oetiker.ch>, KOSAKI Motohiro <kosaki.motohiro@jp.fujitsu.com>, Pekka Enberg <penberg@cs.helsinki.fi>, Stephan von Krawczynski <skraw@ithnet.com>, kernel-testers@vger.kernel.org

On Sat, 31 Oct 2009, Rik van Riel wrote:

> On 10/31/2009 04:11 PM, Pavel Machek wrote:
>
> > But we can't guarantee that enough memory will be ready in the
> > reserves. So if realtime task relies on it, it is broken, and will
> > fail to meet its deadlines from time to time.
>
> Any realtime task that does networking (which may be the
> majority of realtime tasks) relies on the kernel memory
> allocator.

What is realtime in this scenario? There are no guarantees that reclaim
wont have to occur. There are no guarantees anymore and therefore you
cannot really call this realtime.

Is realtime anything more than: "I want to have my patches merged"?

Give some criteria as to what realtime is please. I am all for decreasing
kernel latencies. But some of this work is adding bloat and increasing
overhead.



--
To unsubscribe, send a message with 'unsubscribe linux-mm' in
the body to majordomo@kvack.org.  For more info on Linux MM,
see: http://www.linux-mm.org/ .
Don't email: <a href=mailto:"dont@kvack.org"> email@kvack.org </a>
