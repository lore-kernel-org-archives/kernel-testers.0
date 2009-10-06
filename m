From: David Rientjes <rientjes@google.com>
Subject: Re: [Bug #14141] order 2 page allocation failures in iwlagn
Date: Mon, 5 Oct 2009 17:04:55 -0700 (PDT)
Message-ID: <alpine.DEB.1.00.0910051700440.31688@chino.kir.corp.google.com>
References: <3onW63eFtRF.A.xXH.oMTxKB@chimera> <200910050851.02056.elendil@planet.nl> <20091005085739.GB5452@csn.ul.ie> <200910052334.23833.elendil@planet.nl>
Mime-Version: 1.0
Return-path: <owner-linux-mm@kvack.org>
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=google.com; s=beta;
	t=1254787501; bh=boJget6TNjhvt46GsK4xKB6Ylw8=;
	h=DomainKey-Signature:Date:From:X-X-Sender:To:cc:Subject:
	 In-Reply-To:Message-ID:References:User-Agent:MIME-Version:
	 Content-Type:X-System-Of-Record; b=Es8S8VMoswRyEVtIAIf8Xh6ZqnPwW4W
	8IIYWHS6GXd/TiajanzmLrCSPHRbCi2Yqeu8/SemtxbilUk2mF/f+Tw==
In-Reply-To: <200910052334.23833.elendil@planet.nl>
Sender: owner-linux-mm@kvack.org
List-Id: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Frans Pop <elendil@planet.nl>
Cc: Mel Gorman <mel@csn.ul.ie>, "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Pekka Enberg <penberg@cs.helsinki.fi>, Reinette Chatre <reinette.chatre@intel.com>, Bartlomiej Zolnierkiewicz <bzolnier@gmail.com>, Karol Lewandowski <karol.k.lewandowski@gmail.com>, linux-mm@kvack.org

On Mon, 5 Oct 2009, Frans Pop wrote:

> And the winner is:
> 2ff05b2b4eac2e63d345fc731ea151a060247f53 is first bad commit
> commit 2ff05b2b4eac2e63d345fc731ea151a060247f53
> Author: David Rientjes <rientjes@google.com>
> Date:   Tue Jun 16 15:32:56 2009 -0700
> 
>     oom: move oom_adj value from task_struct to mm_struct
> 
> I'm confident that the bisection is good. The test case was very reliable 
> while zooming in on the merge from akpm.
> 

I doubt it for two reasons: (i) this commit was reverted in 0753ba0 since 
2.6.31-rc7 and is no longer in the kernel, and (ii) these are GFP_ATOMIC 
allocations which would be unaffected by oom killer scores.

--
To unsubscribe, send a message with 'unsubscribe linux-mm' in
the body to majordomo@kvack.org.  For more info on Linux MM,
see: http://www.linux-mm.org/ .
Don't email: <a href=mailto:"dont@kvack.org"> email@kvack.org </a>
