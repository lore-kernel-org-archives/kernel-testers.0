From: Christoph Lameter <cl@linux-foundation.org>
Subject: Re: [PATCH 2/3] page allocator: Do not allow interrupts to use
 ALLOC_HARDER
Date: Mon, 2 Nov 2009 11:38:50 -0500 (EST)
Message-ID: <alpine.DEB.1.10.0911021138070.24535@V090114053VZO-1>
References: <1256650833-15516-1-git-send-email-mel@csn.ul.ie> <1256650833-15516-3-git-send-email-mel@csn.ul.ie> <20091027130924.fa903f5a.akpm@linux-foundation.org> <alpine.DEB.2.00.0910271411530.9183@chino.kir.corp.google.com> <20091031184054.GB1475@ucw.cz>
 <alpine.DEB.2.00.0910311248490.13829@chino.kir.corp.google.com> <20091031201158.GB29536@elf.ucw.cz> <alpine.DEB.2.00.0910311413160.25524@chino.kir.corp.google.com> <20091031222905.GA32720@elf.ucw.cz> <4AECC04B.9060808@redhat.com> <20091101073527.GB32720@elf.ucw.cz>
 <4AED9EB4.5080601@redhat.com>
Mime-Version: 1.0
Return-path: <owner-linux-mm@kvack.org>
In-Reply-To: <4AED9EB4.5080601@redhat.com>
Sender: owner-linux-mm@kvack.org
List-Id: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Rik van Riel <riel@redhat.com>
Cc: Pavel Machek <pavel@ucw.cz>, David Rientjes <rientjes@google.com>, Andrew Morton <akpm@linux-foundation.org>, Mel Gorman <mel@csn.ul.ie>, stable@kernel.org, linux-kernel@vger.kernel.org, linux-mm@kvack.org, Frans Pop <elendil@planet.nl>, Jiri Kosina <jkosina@suse.cz>, Sven Geggus <lists@fuchsschwanzdomain.de>, Karol Lewandowski <karol.k.lewandowski@gmail.com>, Tobias Oetiker <tobi@oetiker.ch>, KOSAKI Motohiro <kosaki.motohiro@jp.fujitsu.com>, Pekka Enberg <penberg@cs.helsinki.fi>, Stephan von Krawczynski <skraw@ithnet.com>, kernel-testers@vger.kernel.org

On Sun, 1 Nov 2009, Rik van Riel wrote:

> > So what? As soon as they do that, they lose any guarantees, anyway.
>
> They might lose the absolute guarantee, but that's no reason
> not to give it our best effort!

Then its not realtime anymore. "Realtime" seems to be some wishy
washy marketing term that flexes in a variety of ways.

--
To unsubscribe, send a message with 'unsubscribe linux-mm' in
the body to majordomo@kvack.org.  For more info on Linux MM,
see: http://www.linux-mm.org/ .
Don't email: <a href=mailto:"dont@kvack.org"> email@kvack.org </a>
