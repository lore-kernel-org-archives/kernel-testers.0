From: David Rientjes <rientjes@google.com>
Subject: Re: [PATCH 1/5] mm: Add __GFP_NO_OOM_KILL flag
Date: Sun, 3 May 2009 17:38:06 -0700 (PDT)
Message-ID: <alpine.DEB.2.00.0905031734190.24114@chino.kir.corp.google.com>
References: <nY3-4PrO6XH.A.xtB.yw85JB@chimera> <200905031830.49690.rjw@sisk.pl> <200905040208.43040.rjw@sisk.pl> <200905040210.10153.rjw@sisk.pl>
Mime-Version: 1.0
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1756048AbZEDAi1@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=google.com; s=beta;
	t=1241397493; bh=tjrcbwp1UE7hirbt5doNr+WclFs=;
	h=DomainKey-Signature:Date:From:X-X-Sender:To:cc:Subject:
	 In-Reply-To:Message-ID:References:User-Agent:MIME-Version:
	 Content-Type:X-System-Of-Record; b=AuTs4+cczJxqWxWbd/HKiwMPghOxhSq
	1fLv0eY8AziQsiJ8mKztYrjA4TKVJ8kOXtsUR/CPbxAnYTqx7F6fgew==
In-Reply-To: <200905040210.10153.rjw@sisk.pl>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Wu Fengguang <fengguang.wu@intel.com>, linux-pm@lists.linux-foundation.org, Andrew Morton <akpm@linux-foundation.org>, pavel@ucw.cz, torvalds@linux-foundation.org, jens.axboe@oracle.com, alan-jenkins@tuffmail.co.uk, linux-kernel@vger.kernel.org, kernel-testers@vger.kernel.org

On Mon, 4 May 2009, Rafael J. Wysocki wrote:

> Index: linux-2.6/mm/page_alloc.c
> ===================================================================
> --- linux-2.6.orig/mm/page_alloc.c
> +++ linux-2.6/mm/page_alloc.c
> @@ -1620,7 +1620,8 @@ nofail_alloc:
>  		}
>  
>  		/* The OOM killer will not help higher order allocs so fail */
> -		if (order > PAGE_ALLOC_COSTLY_ORDER) {
> +		if (order > PAGE_ALLOC_COSTLY_ORDER ||
> +				(gfp_mask & __GFP_NO_OOM_KILL)) {
>  			clear_zonelist_oom(zonelist, gfp_mask);
>  			goto nopage;
>  		}

This is inconsistent because __GFP_NO_OOM_KILL now implies __GFP_NORETRY 
(the "goto nopage" above), but only for allocations with __GFP_FS set and 
__GFP_NORETRY clear.
