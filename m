From: Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH 4/5] vmscan: Have kswapd sleep for a short interval and
	double check it should be asleep
Date: Sat, 14 Nov 2009 15:46:36 +0000
Message-ID: <20091114154636.GR29804@csn.ul.ie>
References: <20091113142558.33B6.A69D9226@jp.fujitsu.com> <20091113141303.GI29804@csn.ul.ie> <20091114023901.3DA8.A69D9226@jp.fujitsu.com> <20091113181740.GN29804@csn.ul.ie> <2f11576a0911140134u21eafa83t9642bb25ccd953de@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <2f11576a0911140134u21eafa83t9642bb25ccd953de-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: KOSAKI Motohiro <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>
Cc: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>, Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>, Sven Geggus <lists-+AJD3D7QEjjt/htJsj1pd9AswbaBtrod@public.gmane.org>, Karol Lewandowski <karol.k.lewandowski-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Tobias Oetiker <tobi-7K0TWYW2a3pyDzI6CaY1VQ@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, "linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org" <linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org>, Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>, Rik van Riel <riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Stephan von Krawczynski <skraw-DcQCyzbjH0jQT0dZR+AlfA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Sat, Nov 14, 2009 at 06:34:23PM +0900, KOSAKI Motohiro wrote:
> 2009/11/14 Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>:
> > On Sat, Nov 14, 2009 at 03:00:57AM +0900, KOSAKI Motohiro wrote:
> >> > On Fri, Nov 13, 2009 at 07:43:09PM +0900, KOSAKI Motohiro wrote:
> >> > > > After kswapd balances all zones in a pgdat, it goes to sleep=
=2E In the event
> >> > > > of no IO congestion, kswapd can go to sleep very shortly aft=
er the high
> >> > > > watermark was reached. If there are a constant stream of all=
ocations from
> >> > > > parallel processes, it can mean that kswapd went to sleep to=
o quickly and
> >> > > > the high watermark is not being maintained for sufficient le=
ngth time.
> >> > > >
> >> > > > This patch makes kswapd go to sleep as a two-stage process. =
It first
> >> > > > tries to sleep for HZ/10. If it is woken up by another proce=
ss or the
> >> > > > high watermark is no longer met, it's considered a premature=
 sleep and
> >> > > > kswapd continues work. Otherwise it goes fully to sleep.
> >> > > >
> >> > > > This adds more counters to distinguish between fast and slow=
 breaches of
> >> > > > watermarks. A "fast" premature sleep is one where the low wa=
termark was
> >> > > > hit in a very short time after kswapd going to sleep. A "slo=
w" premature
> >> > > > sleep indicates that the high watermark was breached after a=
 very short
> >> > > > interval.
> >> > > >
> >> > > > Signed-off-by: Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>
> >> > >
> >> > > Why do you submit this patch to mainline? this is debugging pa=
tch
> >> > > no more and no less.
> >> > >
> >> >
> >> > Do you mean the stats part? The stats are included until such ti=
me as the page
> >> > allocator failure reports stop or are significantly reduced. In =
the event a
> >> > report is received, the value of the counters help determine if =
kswapd was
> >> > struggling or not. They should be removed once this mess is iron=
ed out.
> >> >
> >> > If there is a preference, I can split out the stats part and sen=
d it to
> >> > people with page allocator failure reports for retesting.
> >>
> >> I'm sorry my last mail didn't have enough explanation.
> >> This stats help to solve this issue. I agreed. but after solving t=
his issue,
> >> I don't imagine administrator how to use this stats. if KSWAPD_PRE=
MATURE_FAST or
> >> KSWAPD_PREMATURE_SLOW significantly increased, what should admin d=
o?
> >
> > One possible workaround would be to raise min_free_kbytes while a f=
ix is
> > being worked on.
>=20
> Please correct me, if I said wrong thing.
>=20

You didn't.

> if I was admin, I don't watch this stats because kswapd frequently
> wakeup doesn't mean any trouble. instead I watch number of allocation
> failure.
>=20

The stats are not tracking when kswapd wakes up. It helps track how
quickly the high or low watermarks are going under once kswapd tries to
go back to sleep.

> [see include/linux/vmstat.h]
>=20
> umm...
> Why don't we have nr-allocation-failure vmstat?

There isn't a stat for allocation failures, but there are tracepoints t=
hat
can be used to find out that information if necessary. For the cases I'=
m
looking at the moment though, GFP_NOWARN is not a factor so just lookin=
g
through the kernel log has been sufficient.

> I don't remember it.
> GFP_NOWARN failure doesn't make syslog error logging. but frequently
> GFP_NOWARN failure imply the system is under memory pressure or under
> heavy fragmentation. It is good opportunity to change min_free_kbytes=
=2E
>=20
>=20
>=20
> >> Or, Can LKML folk make any advise to admin?
> >>
> >
> > Work with them to fix the bug :/
> >
> >> if kernel doesn't have any bug, kswapd wakeup rate is not so worth=
 information imho.
> >> following your additional code itself looks good to me. but...
> >>
> >>
> >> > =3D=3D=3D=3D CUT HERE =3D=3D=3D=3D
> >> > vmscan: Have kswapd sleep for a short interval and double check =
it should be asleep fix 1
> >> >
> >> > This patch is a fix and a claritifacation to the patch "vmscan: =
Have
> >> > kswapd sleep for a short interval and double check it should be =
asleep".
> >> > The fix is for kswapd to only check zones in the node it is resp=
onsible
> >> > for. The clarification is to rename two counters to better expla=
in what is
> >> > being counted.
> >> >
> >> > Signed-off-by: Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>
> >> > ---
> >> > =A0include/linux/vmstat.h | =A0 =A02 +-
> >> > =A0mm/vmscan.c =A0 =A0 =A0 =A0 =A0 =A0| =A0 20 +++++++++++++----=
---
> >> > =A0mm/vmstat.c =A0 =A0 =A0 =A0 =A0 =A0| =A0 =A04 ++--
> >> > =A03 files changed, 16 insertions(+), 10 deletions(-)
> >> >
> >> > diff --git a/include/linux/vmstat.h b/include/linux/vmstat.h
> >> > index 7d66695..0591a48 100644
> >> > --- a/include/linux/vmstat.h
> >> > +++ b/include/linux/vmstat.h
> >> > @@ -40,7 +40,7 @@ enum vm_event_item { PGPGIN, PGPGOUT, PSWPIN, =
PSWPOUT,
> >> > =A0 =A0 =A0 =A0 =A0 =A0 PGSCAN_ZONE_RECLAIM_FAILED,
> >> > =A0#endif
> >> > =A0 =A0 =A0 =A0 =A0 =A0 PGINODESTEAL, SLABS_SCANNED, KSWAPD_STEA=
L, KSWAPD_INODESTEAL,
> >> > - =A0 =A0 =A0 =A0 =A0 KSWAPD_PREMATURE_FAST, KSWAPD_PREMATURE_SL=
OW,
> >> > + =A0 =A0 =A0 =A0 =A0 KSWAPD_LOW_WMARK_HIT_QUICKLY, KSWAPD_HIGH_=
WMARK_HIT_QUICKLY,
> >> > =A0 =A0 =A0 =A0 =A0 =A0 KSWAPD_NO_CONGESTION_WAIT,
> >> > =A0 =A0 =A0 =A0 =A0 =A0 PAGEOUTRUN, ALLOCSTALL, PGROTATED,
> >> > =A0#ifdef CONFIG_HUGETLB_PAGE
> >> > diff --git a/mm/vmscan.c b/mm/vmscan.c
> >> > index 70967e1..5557555 100644
> >> > --- a/mm/vmscan.c
> >> > +++ b/mm/vmscan.c
> >> > @@ -1905,19 +1905,25 @@ unsigned long try_to_free_mem_cgroup_pag=
es(struct mem_cgroup *mem_cont,
> >> > =A0#endif
> >> >
> >> > =A0/* is kswapd sleeping prematurely? */
> >> > -static int sleeping_prematurely(int order, long remaining)
> >> > +static int sleeping_prematurely(pg_data_t *pgdat, int order, lo=
ng remaining)
> >> > =A0{
> >> > - =A0 struct zone *zone;
> >> > + =A0 int i;
> >> >
> >> > =A0 =A0 /* If a direct reclaimer woke kswapd within HZ/10, it's =
premature */
> >> > =A0 =A0 if (remaining)
> >> > =A0 =A0 =A0 =A0 =A0 =A0 return 1;
> >> >
> >> > =A0 =A0 /* If after HZ/10, a zone is below the high mark, it's p=
remature */
> >> > - =A0 for_each_populated_zone(zone)
> >> > + =A0 for (i =3D 0; i < pgdat->nr_zones; i++) {
> >> > + =A0 =A0 =A0 =A0 =A0 struct zone *zone =3D pgdat->node_zones + =
i;
> >> > +
> >> > + =A0 =A0 =A0 =A0 =A0 if (!populated_zone(zone))
> >> > + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 continue;
> >> > +
> >> > =A0 =A0 =A0 =A0 =A0 =A0 if (!zone_watermark_ok(zone, order, high=
_wmark_pages(zone),
> >> > =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 0, 0))
> >> > =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 return 1;
> >> > + =A0 }
> >> >
> >> > =A0 =A0 return 0;
> >> > =A0}
> >> > @@ -2221,7 +2227,7 @@ static int kswapd(void *p)
> >> > =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 long rem=
aining =3D 0;
> >> >
> >> > =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 /* Try t=
o sleep for a short interval */
> >> > - =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 if (!sleep=
ing_prematurely(order, remaining)) {
> >> > + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 if (!sleep=
ing_prematurely(pgdat, order, remaining)) {
> >> > =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 remaining =3D schedule_timeout(HZ/10);
> >> > =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 finish_wait(&pgdat->kswapd_wait, &wait);
> >> > =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 prepare_to_wait(&pgdat->kswapd_wait, &wait, TASK_INTERRUPTIBLE)=
;
> >> > @@ -2232,13 +2238,13 @@ static int kswapd(void *p)
> >> > =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0* pre=
mature sleep. If not, then go fully
> >> > =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0* to =
sleep until explicitly woken up
> >> > =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0*/
> >> > - =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 if (!sleep=
ing_prematurely(order, remaining))
> >> > + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 if (!sleep=
ing_prematurely(pgdat, order, remaining))
> >> > =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 schedule();
> >> > =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 else {
> >> > =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 if (remaining)
> >> > - =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 count_vm_event(KSWAPD_PREMATURE_FAST);
> >> > + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 count_vm_event(KSWAPD_LOW_WMARK_HIT_QUICKLY);
> >> > =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 else
> >> > - =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 count_vm_event(KSWAPD_PREMATURE_SLOW);
> >> > + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 count_vm_event(KSWAPD_HIGH_WMARK_HIT_QUICKLY);
> >> > =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 }
> >> > =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 }
> >> >
> >> > diff --git a/mm/vmstat.c b/mm/vmstat.c
> >> > index bc09547..6cc8dc6 100644
> >> > --- a/mm/vmstat.c
> >> > +++ b/mm/vmstat.c
> >> > @@ -683,8 +683,8 @@ static const char * const vmstat_text[] =3D =
{
> >> > =A0 =A0 "slabs_scanned",
> >> > =A0 =A0 "kswapd_steal",
> >> > =A0 =A0 "kswapd_inodesteal",
> >> > - =A0 "kswapd_slept_prematurely_fast",
> >> > - =A0 "kswapd_slept_prematurely_slow",
> >> > + =A0 "kswapd_low_wmark_hit_quickly",
> >> > + =A0 "kswapd_high_wmark_hit_quickly",
> >> > =A0 =A0 "kswapd_no_congestion_wait",
> >> > =A0 =A0 "pageoutrun",
> >> > =A0 =A0 "allocstall",
> >>
> >>
> >>
> >

--=20
Mel Gorman
Part-time Phd Student                          Linux Technology Center
University of Limerick                         IBM Dublin Software Lab
