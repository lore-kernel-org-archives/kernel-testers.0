From: Hugh Dickins <hugh-DTz5qymZ9yRBDgjK7y7TUQ@public.gmane.org>
Subject: Re: [PATCH] mm: make unmap_vmas() handle non-page-aligned boundary
 addresses
Date: Sun, 17 Aug 2008 12:30:34 +0100 (BST)
Message-ID: <Pine.LNX.4.64.0808171151190.13521@blonde.site>
References: <DLWXHEp37wB.A.duD.yZzpIB@albercik> <sNRO-BDDjQL.A.spE.VazpIB@albercik>
 <Pine.LNX.4.64.0808170036400.25704@blonde.site> <87fxp4pi0r.fsf_-_@skyscraper.fehenstaub.lan>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <87fxp4pi0r.fsf_-_-ChBp1PjnKaFMLiIyqJsA6Zcj/bVcIWpj/z7RTEddyNg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Johannes Weiner <hannes-BfM5BwqdGSkPyMaTEpOvjQ@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Randy Dunlap <randy.dunlap-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>

On Sun, 17 Aug 2008, Johannes Weiner wrote:
> zap_pte_range() overruns the page tables if the distance between the
> start and end is not a multiple of the pagesize.  Because then,
> `start' will never be equal to `end' and we will keep looping.
> 
> To fix this, round the boundary addresses to exclude partial pages from
> the range completely, we must not unmap them anyway.

You've a good idea here, but no.

> 
> Signed-off-by: Johannes Weiner <hannes-BfM5BwqdGSkPyMaTEpOvjQ@public.gmane.org>
> ---
> 
> Hugh Dickins <hugh-DTz5qymZ9yRBDgjK7y7TUQ@public.gmane.org> writes:
> 
> > On Sat, 16 Aug 2008, Rafael J. Wysocki wrote:
> >> 
> >> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11335
> >> Subject		: 2.6.27-rc2-git5 BUG: unable to handle kernel paging request
> >> Submitter	: Randy Dunlap <randy.dunlap-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
> >> Date		: 2008-08-12 4:18 (5 days old)
> >> References	: http://marc.info/?l=linux-kernel&m=121851477201960&w=4
> >> Handled-By	: Hugh Dickins <hugh-DTz5qymZ9yRBDgjK7y7TUQ@public.gmane.org>
> >
> > This should still be listed for now, it's interesting,
> > but I doubt we'll make any progress unless it can be reproduced.
> 
> I think this patch fixes it.  exit_mmap() even calls unmap_vmas() with
> an ending address of -1UL which is not page-aligned in my book and on my
> architecture :)

You need to take into consideration that gazillions of calls to
exit_mmap(), unmap_vmas() and zap_pte_range() have been succeeding
since we reworked those loops three years ago.  exit_mmap() calls
unmap_vmas() with a start_addr of 0 (so your patch won't help that),
and the (unsigned long) end_addr of -1 is simply an upper bound on
on how far the vma loop goes, it doesn't need the alignment your
patch enforces.

That's a great idea that overrunning a pagetable may account for
Randy's apparent pagetable corruption: I (and please, you too) need
to go back over the info he's given with that hypothesis in mind,
it certainly fits well the fact that 6 out of 7 entries were found
bad at the _start_ of a pagetable before collapsing - though OTOH
I don't think it does fit with the two processes seeing similar
but different corruption, or the general protection faults.
But definitely worth pursuing, it hadn't crossed my mind.

But if a pagetable is being overrun in that way, doesn't that mean
that a vma->vm_start (or vma->vm_end?) has got corrupted, and then
we'll need to work that out.  vm_start and vm_end (unless corrupted)
are always page aligned, and there's lots of code which assumes that:
or have you noticed somewhere that's not so?

> 
> It is a similar problem to what we had with gup some weeks ago.

You're right that those pgd_addr_end() etc. loops have an implicit
and fragile dependence on the page alignment of addr and end.  They
were written that way to maximize efficiency and be homogeneous
across the levels, while handling the wrapped end 0 case.  But both
fast gup and pagewalk have stumbled on those assumptions recently.

Hugh
