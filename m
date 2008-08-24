From: Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: 2.6.27-rc4-git1: Reported regressions from 2.6.26
Date: Sun, 24 Aug 2008 11:03:09 -0700 (PDT)
Message-ID: <alpine.LFD.1.10.0808241050180.3363@nehalem.linux-foundation.org>
References: <mzBsPw3QUOF.A.87F.wZGsIB@albercik>
Mime-Version: 1.0
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1756458AbYHXSE2@vger.kernel.org>
In-Reply-To: <mzBsPw3QUOF.A.87F.wZGsIB@albercik>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw@sisk.pl>, Vegard Nossum <vegard.nossum@gmail.com>, Daniel J Blueman <daniel.blueman@gmail.com>, Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@elte.hu>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Adrian Bunk <bunk@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Natalie Protasevich <protasnb@gmail.com>, Kernel Testers List <kernel-testers@vger.kernel.org>



On Sat, 23 Aug 2008, Rafael J. Wysocki wrote:
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11410
> Subject		: SLUB list_lock vs obj_hash.lock...
> Submitter	: Daniel J Blueman <daniel.blueman@gmail.com>
> Date		: 2008-08-22 21:48 (2 days old)
> References	: http://marc.info/?l=linux-kernel&m=121944176609042&w=4

This one now has a suggested patch for Daniel to try from Vegard, but no 
reply yet:

	http://marc.info/?l=linux-kernel&m=121946972307110&w=4

Vegard, I think your patch is a bit odd, though. The result of your patch 
is

 - first loop:

	hlist_for_each_entry_safe(obj, node, tmp, &db->list, node) {
		hlist_del(&obj->node);
		hlist_add_head(&obj->node, &freelist);
	}

   and quite frankly, I don't see what the difference between that and a 
   something like a simple

	struct hlist_node *first = bd->list.first;
	if (first) {
		bd->list.first = NULL;
		first->pprev = &first;
	}

   really is?

I dunno. We don't have list splicing ops for the hlist things.

		Linus
