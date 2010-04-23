From: Pekka J Enberg <penberg@cs.helsinki.fi>
Subject: Re: [Bug #15713] hackbench regression due to commit 9dfc6e68bfe6e
Date: Fri, 23 Apr 2010 22:18:38 +0300 (EEST)
Message-ID: <alpine.DEB.2.00.1004232214520.29018@melkki.cs.helsinki.fi>
References: <deuQKFRcc0B.A.3EG.BRSzLB@tosh> <YeFfFNFyTSF.A.vjH.sRSzLB@tosh> <alpine.DEB.2.00.1004221045270.1204@router.home> <4BD086D0.9090309@cs.helsinki.fi>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <4BD086D0.9090309@cs.helsinki.fi>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Christoph Lameter <cl@linux.com>
Cc: "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Alex Shi <alex.shi@intel.com>, yanmin_zhang@linux.intel.com, tj@kernel.org

On Thu, 22 Apr 2010, Pekka Enberg wrote:
>>> The following bug entry is on the current list of known regressions
>>> from 2.6.33.  Please verify if it still should be listed and let the 
>>> tracking team
>>> know (either way).
>> 
>> I have not been able to reproduce it so far.
>
> So what are our options? We can revert the SLUB conversion patch for now but 
> I still can't see what's wrong with it...

I haven't been able to reproduce this either on my Core 2 machine.

Yanmin, does something like this help on your machines? I'm thinking false 
sharing with some other per-CPU data structure that happens to be put in 
same percpu slot as struct kmem_cache_cpu...

 			Pekka

diff --git a/mm/slub.c b/mm/slub.c
index 7d6c8b1..d8159d6 100644
--- a/mm/slub.c
+++ b/mm/slub.c
@@ -2066,7 +2066,7 @@ init_kmem_cache_node(struct kmem_cache_node *n, struct kmem_cache *s)
  #endif
  }

-static DEFINE_PER_CPU(struct kmem_cache_cpu, kmalloc_percpu[KMALLOC_CACHES]);
+static DEFINE_PER_CPU_ALIGNED(struct kmem_cache_cpu, kmalloc_percpu[KMALLOC_CACHES]);

  static inline int alloc_kmem_cache_cpus(struct kmem_cache *s, gfp_t flags)
  {
@@ -2077,7 +2077,7 @@ static inline int alloc_kmem_cache_cpus(struct kmem_cache *s, gfp_t flags)
  		 */
  		s->cpu_slab = kmalloc_percpu + (s - kmalloc_caches);
  	else
-		s->cpu_slab =  alloc_percpu(struct kmem_cache_cpu);
+		s->cpu_slab = __alloc_percpu(sizeof(struct kmem_cache_cpu), cache_line_size());

  	if (!s->cpu_slab)
  		return 0;
