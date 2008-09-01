From: Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>
Subject: [GIT pull] debugobject fixes for 2.6.27
Date: Mon, 1 Sep 2008 12:59:25 +0200 (CEST)
Message-ID: <alpine.LFD.1.10.0809010950531.3243@apollo.tec.linutronix.de>
References: <20080828153214.GA27653@localhost.localdomain>  <20080828171706.6080accf.akpm@linux-foundation.org> <6278d2220808291457p50f8f24w3de3a5623acc37a4@mail.gmail.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <6278d2220808291457p50f8f24w3de3a5623acc37a4-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Vegard Nossum <vegard.nossum-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, LKML <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, protasnb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Daniel J Blueman <daniel.blueman-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

Linus,

Please pull the latest core/debugobjects git tree from:

   git://git.kernel.org/pub/scm/linux/kernel/git/tip/linux-2.6-tip.git core/debugobjects

It contains a lockdep fix for the debug objects core code. Please note
that I added a helper function to move a hlist from one head to
another to avoid open coding it in the debugobjects code.

 Thanks,

	tglx

------------------>
Vegard Nossum (1):
      debugobjects: fix lockdep warning


 include/linux/list.h |   13 +++++++++++++
 lib/debugobjects.c   |   31 +++++++++++++++++++++++--------
 2 files changed, 36 insertions(+), 8 deletions(-)

diff --git a/include/linux/list.h b/include/linux/list.h
index db35ef0..969f6e9 100644
--- a/include/linux/list.h
+++ b/include/linux/list.h
@@ -619,6 +619,19 @@ static inline void hlist_add_after(struct hlist_node *n,
 		next->next->pprev  = &next->next;
 }
 
+/*
+ * Move a list from one list head to another. Fixup the pprev
+ * reference of the first entry if it exists.
+ */
+static inline void hlist_move_list(struct hlist_head *old,
+				   struct hlist_head *new)
+{
+	new->first = old->first;
+	if (new->first)
+		new->first->pprev = &new->first;
+	old->first = NULL;
+}
+
 #define hlist_entry(ptr, type, member) container_of(ptr,type,member)
 
 #define hlist_for_each(pos, head) \
diff --git a/lib/debugobjects.c b/lib/debugobjects.c
index 45a6bde..e3ab374 100644
--- a/lib/debugobjects.c
+++ b/lib/debugobjects.c
@@ -112,6 +112,7 @@ static struct debug_obj *lookup_object(void *addr, struct debug_bucket *b)
 
 /*
  * Allocate a new object. If the pool is empty, switch off the debugger.
+ * Must be called with interrupts disabled.
  */
 static struct debug_obj *
 alloc_object(void *addr, struct debug_bucket *b, struct debug_obj_descr *descr)
@@ -148,17 +149,18 @@ alloc_object(void *addr, struct debug_bucket *b, struct debug_obj_descr *descr)
 static void free_object(struct debug_obj *obj)
 {
 	unsigned long idx = (unsigned long)(obj - obj_static_pool);
+	unsigned long flags;
 
 	if (obj_pool_free < ODEBUG_POOL_SIZE || idx < ODEBUG_POOL_SIZE) {
-		spin_lock(&pool_lock);
+		spin_lock_irqsave(&pool_lock, flags);
 		hlist_add_head(&obj->node, &obj_pool);
 		obj_pool_free++;
 		obj_pool_used--;
-		spin_unlock(&pool_lock);
+		spin_unlock_irqrestore(&pool_lock, flags);
 	} else {
-		spin_lock(&pool_lock);
+		spin_lock_irqsave(&pool_lock, flags);
 		obj_pool_used--;
-		spin_unlock(&pool_lock);
+		spin_unlock_irqrestore(&pool_lock, flags);
 		kmem_cache_free(obj_cache, obj);
 	}
 }
@@ -171,6 +173,7 @@ static void debug_objects_oom(void)
 {
 	struct debug_bucket *db = obj_hash;
 	struct hlist_node *node, *tmp;
+	HLIST_HEAD(freelist);
 	struct debug_obj *obj;
 	unsigned long flags;
 	int i;
@@ -179,11 +182,14 @@ static void debug_objects_oom(void)
 
 	for (i = 0; i < ODEBUG_HASH_SIZE; i++, db++) {
 		spin_lock_irqsave(&db->lock, flags);
-		hlist_for_each_entry_safe(obj, node, tmp, &db->list, node) {
+		hlist_move_list(&db->list, &freelist);
+		spin_unlock_irqrestore(&db->lock, flags);
+
+		/* Now free them */
+		hlist_for_each_entry_safe(obj, node, tmp, &freelist, node) {
 			hlist_del(&obj->node);
 			free_object(obj);
 		}
-		spin_unlock_irqrestore(&db->lock, flags);
 	}
 }
 
@@ -498,8 +504,9 @@ void debug_object_free(void *addr, struct debug_obj_descr *descr)
 		return;
 	default:
 		hlist_del(&obj->node);
+		spin_unlock_irqrestore(&db->lock, flags);
 		free_object(obj);
-		break;
+		return;
 	}
 out_unlock:
 	spin_unlock_irqrestore(&db->lock, flags);
@@ -510,6 +517,7 @@ static void __debug_check_no_obj_freed(const void *address, unsigned long size)
 {
 	unsigned long flags, oaddr, saddr, eaddr, paddr, chunks;
 	struct hlist_node *node, *tmp;
+	HLIST_HEAD(freelist);
 	struct debug_obj_descr *descr;
 	enum debug_obj_state state;
 	struct debug_bucket *db;
@@ -545,11 +553,18 @@ repeat:
 				goto repeat;
 			default:
 				hlist_del(&obj->node);
-				free_object(obj);
+				hlist_add_head(&obj->node, &freelist);
 				break;
 			}
 		}
 		spin_unlock_irqrestore(&db->lock, flags);
+
+		/* Now free them */
+		hlist_for_each_entry_safe(obj, node, tmp, &freelist, node) {
+			hlist_del(&obj->node);
+			free_object(obj);
+		}
+
 		if (cnt > debug_objects_maxchain)
 			debug_objects_maxchain = cnt;
 	}
