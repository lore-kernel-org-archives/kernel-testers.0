From: Mathieu Desnoyers <mathieu.desnoyers-scC8bbJcJLCw5LPnMra/2Q@public.gmane.org>
Subject: Re: [Bug #12660] Linux 2.6.28.3 freezing on a 32-bits x86 Thinkpad
	T43p
Date: Tue, 24 Feb 2009 11:13:24 -0500
Message-ID: <20090224161324.GB2803@Krystal>
References: <GVhknozYwrL.A.hiC.rozoJB@chimera> <vP9hdyF4fL.A.IkE.cpzoJB@chimera> <20090224072902.GA20098@elte.hu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20090224072902.GA20098-X9Un+BFzKDI@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

* Ingo Molnar (mingo-X9Un+BFzKDI@public.gmane.org) wrote:
> 
> * Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> 
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.28.  Please verify if it still should be listed and let me know
> > (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12660
> > Subject		: Linux 2.6.28.3 freezing on a 32-bits x86 Thinkpad T43p
> > Submitter	: Mathieu Desnoyers <mathieu.desnoyers-scC8bbJcJLCw5LPnMra/2Q@public.gmane.org>
> > Date		: 2009-02-04 21:11 (20 days old)
> > References	: http://marc.info/?l=linux-kernel&m=123378196022258&w=4
> > Handled-By	: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
> 
> Mathieu, this bug is very weird and makes little sense. Could 
> you please reproduce it with vanilla -git too (without any LTT 
> patches applied) and send the full boot+crash log?
> 
> 	Ingo

Hi Ingo,

The last time I reproduced this bug (before going back to 2.6.27 on this
machine) was with a vanilla 2.6.28.5 kernel with the following patche
applied. So maybe this patch is actually causing the problem now that
other memory problems have been fixed since 2.6.28.3. I'll try without
it, but it can take a while before the bug reappears, we'll see.

Mathieu


diff --git a/arch/x86/mm/pageattr.c b/arch/x86/mm/pageattr.c
index 84ba748..fb12f06 100644
--- a/arch/x86/mm/pageattr.c
+++ b/arch/x86/mm/pageattr.c
@@ -576,6 +576,13 @@ static int __change_page_attr(struct cpa_data *cpa, int primary)
 	else
 		address = *cpa->vaddr;
 
+	/*
+	 * If we're called with lazy mmu updates enabled, the
+	 * in-memory pte state may be stale.  Flush pending updates to
+	 * bring them up to date.
+	 */
+	arch_flush_lazy_mmu_mode();
+
 repeat:
 	kpte = lookup_address(address, &level);
 	if (!kpte)
@@ -854,6 +861,13 @@ static int change_page_attr_set_clr(unsigned long *addr, int numpages,
 	} else
 		cpa_flush_all(cache);
 
+	/* 
+	 * If we've been called with lazy mmu updates enabled, then
+	 * make sure that everything gets flushed out before we
+	 * return.
+	 */
+	arch_flush_lazy_mmu_mode();
+
 out:
 	return ret;
 }

-- 
Mathieu Desnoyers
OpenPGP key fingerprint: 8CD5 52C3 8E3C 4140 715F  BA06 3F25 A8FE 3BAE 9A68
