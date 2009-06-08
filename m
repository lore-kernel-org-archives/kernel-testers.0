From: Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>
Subject: Re: [Bug #13319] Page allocation failures with b43 and p54usb
Date: Mon, 8 Jun 2009 11:17:40 +0100
Message-ID: <20090608101739.GA15377@csn.ul.ie>
References: <bCxQpon4SCJ.A.RrF.yY7KKB@chimera> <D9VoutSOyXP.A.hvH.Ha7KKB@chimera> <4A2BBC30.2030300@lwfinger.net> <84144f020906070640rf5ab14nbf66d3ca7c97675f@mail.gmail.com> <4A2BCC6F.8090004@redhat.com> <84144f020906070732l31786156r5d9753a0cabfde79@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <84144f020906070732l31786156r5d9753a0cabfde79-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
Cc: Rik van Riel <riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, KOSAKI Motohiro <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, KAMEZAWA Hiroyuki <kamezawa.hiroyu-+CUm20s59erQFUHtdCDX3A@public.gmane.org>

On Sun, Jun 07, 2009 at 05:32:52PM +0300, Pekka Enberg wrote:
> On Sun, Jun 7, 2009 at 5:19 PM, Rik van Riel <riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org> wrote:
> > Pekka Enberg wrote:
> >>
> >> Hi Larry,
> >>
> >> On Sun, Jun 7, 2009 at 4:10 PM, Larry Finger <Larry.Finger@lwfinge=
r.net>
> >> wrote:
> >>>
> >>> Rafael J. Wysocki wrote:
> >>>>
> >>>> This message has been generated automatically as a part of a rep=
ort
> >>>> of recent regressions.
> >>>>
> >>>> The following bug entry is on the current list of known regressi=
ons
> >>>> from 2.6.29. =A0Please verify if it still should be listed and l=
et me know
> >>>> (either way).
> >>>>
> >>>>
> >>>> Bug-Entry =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
13319
> >>>> Subject =A0 =A0 =A0 =A0 =A0 =A0 =A0 : Page allocation failures w=
ith b43 and p54usb
> >>>> Submitter =A0 =A0 : Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>
> >>>> Date =A0 =A0 =A0 =A0 =A0: 2009-04-29 21:01 (40 days old)
> >>>> References =A0 =A0: http://marc.info/?l=3Dlinux-kernel&m=3D12410=
3897101088&w=3D4
> >>>> Handled-By =A0 =A0: Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>
> >>>
> >>> This bug is extremely difficult to pin down. I cannot reproduce i=
t at
> >>> will. The system has to be up for a long time, which is difficult=
 with
> >>> testing the late RC's of 2.6.30 and the code in wireless-testing =
so
> >>> that new bugs don't end up in 2.6.31-RCX. That said, it still was=
 in
> >>> 2.6.30-RC6 and I'm not aware of any changes since that would fix =
it.
> >>>
> >>> My operating kernel is patched with additional diagnostics to hel=
p me
> >>> understand why a kmalloc request for a buffer of 1390 bytes sudde=
nly
> >>> ends up as an O(1) request. Unfortunately, I don't have any answe=
rs.
> >>
> >> Looking at the out-of-memory trace, there's still memory available=
 but
> >> the pskb_expand_head() allocation is GFP_ATOMIC so there's not muc=
h
> >> the page allocator can do here. The amount of memory consumed by
> >> inactive_file is pretty high so maybe the problem is related to th=
e
> >> recent mm/vmscan.c changes. Lets copy some more mm developers and =
see
> >> if they can help out.
> >
> > That is a very strange trace. =A0The Mem-Info indicates
> > that the system has more than enough memory free, and
> > also enough memory in higher-order free blocks.
> >
> > This would indicate a bug somewhere in the page
> > allocator - this memory should have been given to this
> > allocation request.
>=20
> Aha, I always have difficulties deciphering the traces. But lets
> invite Mel to the party then!
>=20

Nothing like a party on Monday morning to get the week started!

What we appear to have is

o Allocation failure is high-order, high-priority, compound and atomic.
o swap is mostly unused, but we cannot enter direct reclaim.
o ZONE_DMA32 can be used
o The allocation path is in the slub allocator
o Are way above the order-0 watermarks so kswapd is probably not awake
o The minimum watermark for an order-0 page was about 647 pages in ZONE=
_DMA32
o The minimum watermark for an order-1 page was about 323 pages in ZONE=
_DMA32
o There are 10244 pages free at the time of the failure
o With the order-0 pages taken out for watermark calculation, there are
  182 free pages which is below the watermark of 323 pages for an
  order-1 allocation

While there is enough free memory overall, the zone watermark calculati=
on
takes into account the order of the request. As this is an order-1 allo=
cation,
the free order-0 pages are taken out of consideration and so the alloca=
tion
fails.

We've encountered this before and the conclusion was that the current
adjustments for watermark calculations of high-order allocations is rig=
ht,
or at least there is no better alternative. In other words, the page
allocator in this instance is behaving as expected. Do we want to
revisit that discussion as to whether the watermark calculations for
high-order allocation should change? I think we'll reach the same
conclusion or at least decide that allowing the order-1 atomic
allocation to succeed here would just postpone the problem.

So the question is why are we doing a high-order atomic allocation in
this path? According to an earlier discussion on this problemn

> I think something happened to change the allocation as I never saw th=
ese
> O(1) failures before with these particular drivers. I put in a few te=
st
> printk's and the buffers were 700-800 bytes long, and I would not exp=
ect
> them to require more than an O(0) allocation.

So, SLUB is deciding to use order-1 pages for the slab allocation.
Ordinarily, it'll get away with that because order-1 pages will be
allocated from a path that can direct reclaim. However, if a slab is
being used for atomic allocations, there is a chance that it's the
atomic request that allocates a new page for the slab.

Larry, can you post the contents of /proc/slabinfo so we can see
what size pages are being used for the kmalloc() buckets please?

Larry, you say the buffer is 700-800 bytes. Can you confirm that 800 by=
tes
is roughly the request size being made by ieee80211_skb_resize()?

Pekka, assuming the request size is 800 bytes, and SLUB is using order-=
1
pages for allocations of that size, what happened order-1 allocations
falling back to order-0 allocations as necessary. That logic exists,
right? If so, could it be broken?

--=20
Mel Gorman
Part-time Phd Student                          Linux Technology Center
University of Limerick                         IBM Dublin Software Lab
