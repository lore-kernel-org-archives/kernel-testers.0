From: David Rientjes <rientjes@google.com>
Subject: Re: [PATCH 2/3] page allocator: Do not allow interrupts to use
 ALLOC_HARDER
Date: Sat, 31 Oct 2009 12:51:14 -0700 (PDT)
Message-ID: <alpine.DEB.2.00.0910311248490.13829@chino.kir.corp.google.com>
References: <1256650833-15516-1-git-send-email-mel@csn.ul.ie> <1256650833-15516-3-git-send-email-mel@csn.ul.ie> <20091027130924.fa903f5a.akpm@linux-foundation.org> <alpine.DEB.2.00.0910271411530.9183@chino.kir.corp.google.com>
 <20091031184054.GB1475@ucw.cz>
Mime-Version: 1.0
Return-path: <owner-linux-mm@kvack.org>
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=google.com; s=beta;
	t=1257018682; bh=bdVarrbnB1WLnHF5tjLLJfSbfJs=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type;
	b=MlrA9z0NAom5zgxuLQgZLsrrX3V7iuqbPoMswnRVqLywpEsXlnW1QX7HJikG6CKbB
	 FoW5WJquuDWpARhBkpiYg==
In-Reply-To: <20091031184054.GB1475@ucw.cz>
Sender: owner-linux-mm@kvack.org
List-Id: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Pavel Machek <pavel@ucw.cz>
Cc: Andrew Morton <akpm@linux-foundation.org>, Mel Gorman <mel@csn.ul.ie>, stable@kernel.org, linux-kernel@vger.kernel.org, linux-mm@kvack.org, Frans Pop <elendil@planet.nl>, Jiri Kosina <jkosina@suse.cz>, Sven Geggus <lists@fuchsschwanzdomain.de>, Karol Lewandowski <karol.k.lewandowski@gmail.com>, Tobias Oetiker <tobi@oetiker.ch>, KOSAKI Motohiro <kosaki.motohiro@jp.fujitsu.com>, Pekka Enberg <penberg@cs.helsinki.fi>, Rik van Riel <riel@redhat.com>, Christoph Lameter <cl@linux-foundation.org>, Stephan von Krawczynski <skraw@ithnet.com>, kernel-testers@vger.kernel.org

On Sat, 31 Oct 2009, Pavel Machek wrote:

> > Giving rt tasks access to memory reserves is necessary to reduce latency, 
> > the privilege does not apply to interrupts that subsequently get run on 
> > the same cpu.
> 
> If rt task needs to allocate memory like that, then its broken,
> anyway...
> 

Um, no, it's a matter of the kernel implementation.  We allow such tasks 
to allocate deeper into reserves to avoid the page allocator from 
incurring a significant penalty when direct reclaim is required.  
Background reclaim has already commenced at this point in the slowpath.

--
To unsubscribe, send a message with 'unsubscribe linux-mm' in
the body to majordomo@kvack.org.  For more info on Linux MM,
see: http://www.linux-mm.org/ .
Don't email: <a href=mailto:"dont@kvack.org"> email@kvack.org </a>
