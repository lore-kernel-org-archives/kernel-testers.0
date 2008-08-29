From: "Daniel J Blueman" <daniel.blueman-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH] debugobjects: fix lockdep warning #2
Date: Fri, 29 Aug 2008 22:57:29 +0100
Message-ID: <6278d2220808291457p50f8f24w3de3a5623acc37a4@mail.gmail.com>
References: <20080828153214.GA27653@localhost.localdomain>
	 <20080828171706.6080accf.akpm@linux-foundation.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=3n3HhSudc80L3yxTE/XnVE5ZClTKycbRyDJ5xQD2EIo=;
        b=QpTBNkiUljwqw4b6Lb02a1JDTZ/or3k12OqTby9JZ9g0GrMb2PTvLfyIkxjO/+eiCd
         0VSgyjK/yNt4zFcU4PhfEbl/NQbfcTyIbkOe0PK+zruIPFlMQMzbjnHQcH3R1fGfly9p
         G283Ob1CY+L31Lwt24cRIvJFHj06Z/Er2b/sQ=
In-Reply-To: <20080828171706.6080accf.akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Vegard Nossum <vegard.nossum-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Cc: tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org, clameter-sJ/iWh9BUns@public.gmane.org, torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, protasnb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

Hi Andrew, Vegard, Ingo,

On Fri, Aug 29, 2008 at 1:17 AM, Andrew Morton
<akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org> wrote:
> On Thu, 28 Aug 2008 17:32:14 +0200
> Vegard Nossum <vegard.nossum-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
>
>> On Thu, Aug 28, 2008 at 3:56 PM, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org> wrote:
>> > could you resend the final patch please? It's a candidate for .27, if it
>> > works out fine.
>>
>> Here is the combined patch. I've tested it only briefly, and I am
>> unsure of whether it still produces lockdep warnings for Daniel or
>> not. I wish it would not be applied anywhere unless it was
>> officially Reviewed-by: someone. In particular, I'm not quite
>> steady with the irq-safe locking (Thomas might want to have a look).
>>
>
> It all looks good to me.
>
>>
>>
>> >From 977cf583b79be7308d5e310711fe6038c8af96a4 Mon Sep 17 00:00:00 2001
>> From: Vegard Nossum <vegard.nossum-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
>> Date: Thu, 28 Aug 2008 17:09:57 +0200
>> Subject: [PATCH] debugobjects: fix lockdep warning #2
>>
>> Daniel J. Blueman reported:
>> > =======================================================
>> > [ INFO: possible circular locking dependency detected ]
>> > 2.6.27-rc4-224c #1
>> > -------------------------------------------------------
>> > hald/4680 is trying to acquire lock:
>> >  (&n->list_lock){++..}, at: [<ffffffff802bfa26>] add_partial+0x26/0x80
>> >
>> > but task is already holding lock:
>> >  (&obj_hash[i].lock){++..}, at: [<ffffffff8041cfdc>]
>> > debug_object_free+0x5c/0x120
>>
>> We fix it by moving the actual freeing to outside the lock (the lock
>> now only protects the list).
>>
>> The lock is also promoted to irq-safe (suggested by Dan).
>
> What was the reason for this other change?  I'm sure Dan is a fine chap,
> but we usually prefer a little more justification for changes ;)

IRQ-safe xtime_lock is taken, then pool_lock is taken in
__debug_object_init, which is potentially unsafe. Upgrading
pool_lock's usage to IRQ-safe ensures there can be no potential for
deadlock.

>> Reported-by: Daniel J Blueman <daniel.blueman-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
>> Signed-off-by: Vegard Nossum <vegard.nossum-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
>> ---
>>  lib/debugobjects.c |   38 +++++++++++++++++++++++++++++---------
>>  1 files changed, 29 insertions(+), 9 deletions(-)
>>
>> diff --git a/lib/debugobjects.c b/lib/debugobjects.c
>> index 19acf8c..acf9ed8 100644
>> --- a/lib/debugobjects.c
>> +++ b/lib/debugobjects.c
>> @@ -115,9 +115,10 @@ static struct debug_obj *lookup_object(void *addr, struct debug_bucket *b)
>>  static struct debug_obj *
>>  alloc_object(void *addr, struct debug_bucket *b, struct debug_obj_descr *descr)
>>  {
>> +     unsigned long flags;
>>       struct debug_obj *obj = NULL;
>>
>> -     spin_lock(&pool_lock);
>> +     spin_lock_irqsave(&pool_lock, flags);
>>       if (obj_pool.first) {
>>               obj         = hlist_entry(obj_pool.first, typeof(*obj), node);
>>
>> @@ -136,7 +137,7 @@ alloc_object(void *addr, struct debug_bucket *b, struct debug_obj_descr *descr)
>>               if (obj_pool_free < obj_pool_min_free)
>>                       obj_pool_min_free = obj_pool_free;
>>       }
>> -     spin_unlock(&pool_lock);
>> +     spin_unlock_irqrestore(&pool_lock, flags);
>>
>>       return obj;
>>  }
>> @@ -146,18 +147,19 @@ alloc_object(void *addr, struct debug_bucket *b, struct debug_obj_descr *descr)
>>   */
>>  static void free_object(struct debug_obj *obj)
>>  {
>> +     unsigned long flags;
>>       unsigned long idx = (unsigned long)(obj - obj_static_pool);
>>
>>       if (obj_pool_free < ODEBUG_POOL_SIZE || idx < ODEBUG_POOL_SIZE) {
>> -             spin_lock(&pool_lock);
>> +             spin_lock_irqsave(&pool_lock, flags);
>>               hlist_add_head(&obj->node, &obj_pool);
>>               obj_pool_free++;
>>               obj_pool_used--;
>> -             spin_unlock(&pool_lock);
>> +             spin_unlock_irqrestore(&pool_lock, flags);
>>       } else {
>> -             spin_lock(&pool_lock);
>> +             spin_lock_irqsave(&pool_lock, flags);
>>               obj_pool_used--;
>> -             spin_unlock(&pool_lock);
>> +             spin_unlock_irqrestore(&pool_lock, flags);
>>               kmem_cache_free(obj_cache, obj);
>>       }
>>  }
>> @@ -170,19 +172,28 @@ static void debug_objects_oom(void)
>>  {
>>       struct debug_bucket *db = obj_hash;
>>       struct hlist_node *node, *tmp;
>> +     HLIST_HEAD(freelist);
>>       struct debug_obj *obj;
>>       unsigned long flags;
>>       int i;
>>
>>       printk(KERN_WARNING "ODEBUG: Out of memory. ODEBUG disabled\n");
>>
>> +     /* XXX: Could probably be optimized by transplantation of more than
>> +      * one entry at a time. */
>>       for (i = 0; i < ODEBUG_HASH_SIZE; i++, db++) {
>>               spin_lock_irqsave(&db->lock, flags);
>>               hlist_for_each_entry_safe(obj, node, tmp, &db->list, node) {
>>                       hlist_del(&obj->node);
>> -                     free_object(obj);
>> +                     hlist_add_head(&obj->node, &freelist);
>>               }
>>               spin_unlock_irqrestore(&db->lock, flags);
>> +
>> +             /* Now free them */
>> +             hlist_for_each_entry_safe(obj, node, tmp, &freelist, node) {
>> +                     hlist_del(&obj->node);
>> +                     free_object(obj);
>
> I suspect that we can avoid the hlist_del() here, perhaps with a little
> effort.
>
>> +
>> +             /* Now free them */
>> +             hlist_for_each_entry_safe(obj, node, tmp, &freelist, node) {
>> +                     hlist_del(&obj->node);
>> +                     free_object(obj);
>> +             }
>> +
>
> and the other one.
>
> But I'm not sure that it's worth putting effort into - leaving dead
> objects strung onto a partially-live list is a little bit smelly IMO.

I've done some fairly heavy testing with the patch at it's current
state (ie with the upgraded pool_lock, explained above), and it _is_
in fact solid; I wasn't looking at the right setup previously.

(with the other XFS tweaks too) I'm not able to cause any
deadlocks/stack traces/warnings with maximum debugging [* the KVM
errors are another story], which would be the first time so far, so
the patch looks good for mainline and 2.6.27 is looking very strong!

Daniel

--- [*]

emulation failed (pagetable) rip bf9032c5 0f 6f 17 0f
__ratelimit: 1804664 callbacks suppressed
Fail to handle apic access vmexit! Offset is 0xf0
-- 
Daniel J Blueman
