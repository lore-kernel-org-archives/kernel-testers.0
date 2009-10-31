From: Rik van Riel <riel@redhat.com>
Subject: Re: [PATCH 2/3] page allocator: Do not allow interrupts to use ALLOC_HARDER
Date: Sat, 31 Oct 2009 18:55:07 -0400
Message-ID: <4AECC04B.9060808@redhat.com>
References: <1256650833-15516-1-git-send-email-mel@csn.ul.ie> <1256650833-15516-3-git-send-email-mel@csn.ul.ie> <20091027130924.fa903f5a.akpm@linux-foundation.org> <alpine.DEB.2.00.0910271411530.9183@chino.kir.corp.google.com> <20091031184054.GB1475@ucw.cz> <alpine.DEB.2.00.0910311248490.13829@chino.kir.corp.google.com> <20091031201158.GB29536@elf.ucw.cz> <alpine.DEB.2.00.0910311413160.25524@chino.kir.corp.google.com> <20091031222905.GA32720@elf.ucw.cz>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <owner-linux-mm@kvack.org>
In-Reply-To: <20091031222905.GA32720@elf.ucw.cz>
Sender: owner-linux-mm@kvack.org
List-Id: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Pavel Machek <pavel@ucw.cz>
Cc: David Rientjes <rientjes@google.com>, Andrew Morton <akpm@linux-foundation.org>, Mel Gorman <mel@csn.ul.ie>, stable@kernel.org, linux-kernel@vger.kernel.org, linux-mm@kvack.org, Frans Pop <elendil@planet.nl>, Jiri Kosina <jkosina@suse.cz>, Sven Geggus <lists@fuchsschwanzdomain.de>, Karol Lewandowski <karol.k.lewandowski@gmail.com>, Tobias Oetiker <tobi@oetiker.ch>, KOSAKI Motohiro <kosaki.motohiro@jp.fujitsu.com>, Pekka Enberg <penberg@cs.helsinki.fi>, Christoph Lameter <cl@linux-foundation.org>, Stephan von Krawczynski <skraw@ithnet.com>, kernel-testers@vger.kernel.org

On 10/31/2009 06:29 PM, Pavel Machek wrote:

> Well, you are trying to make rt heuristic more precise.

No he's not.  He is trying to make it only apply to real time
tasks, not to interrupts that happen to interrupt the realtime
tasks.

 > I believe it would be better to simply remove it.

You are against trying to give the realtime tasks a best effort
advantage at memory allocation?

Realtime apps often *have* to allocate memory on the kernel side,
because they use network system calls, etc...

-- 
All rights reversed.

--
To unsubscribe, send a message with 'unsubscribe linux-mm' in
the body to majordomo@kvack.org.  For more info on Linux MM,
see: http://www.linux-mm.org/ .
Don't email: <a href=mailto:"dont@kvack.org"> email@kvack.org </a>
