From: KOSAKI Motohiro <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>
Subject: Re: [PATCH 4/5] vmscan: Have kswapd sleep for a short interval and 
	double check it should be asleep
Date: Sat, 14 Nov 2009 18:34:23 +0900
Message-ID: <2f11576a0911140134u21eafa83t9642bb25ccd953de@mail.gmail.com>
References: <20091113142558.33B6.A69D9226@jp.fujitsu.com>
	 <20091113141303.GI29804@csn.ul.ie>
	 <20091114023901.3DA8.A69D9226@jp.fujitsu.com>
	 <20091113181740.GN29804@csn.ul.ie>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:sender:received:in-reply-to
         :references:date:x-google-sender-auth:message-id:subject:from:to:cc
         :content-type:content-transfer-encoding;
        bh=yrA2a4N66cT5EWP1RB0oSeFlsHxhM9fjTfLlIWTpCNc=;
        b=Kbnw0lTpCqeoSF5OV5bmKJ+cCFGrisLrHEwU86IrCnt5IzIKxm5Q+s6vWSVdjY0FdM
         RXgcvhiMEqAV5DaEYMBxIq/LPzCR+guuVYDnzbY9NvJmsjXOqNlMwj8E2764SvhVhi7v
         7zL1EV3wSg0qg3hWdNS1OFYwKJwYfcBa8MJA4=
In-Reply-To: <20091113181740.GN29804-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>
Cc: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>, Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>, Sven Geggus <lists-+AJD3D7QEjjt/htJsj1pd9AswbaBtrod@public.gmane.org>, Karol Lewandowski <karol.k.lewandowski-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Tobias Oetiker <tobi-7K0TWYW2a3pyDzI6CaY1VQ@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, "linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org" <linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org>, Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>, Rik van Riel <riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Stephan von Krawczynski <skraw-DcQCyzbjH0jQT0dZR+AlfA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

2009/11/14 Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>:
> On Sat, Nov 14, 2009 at 03:00:57AM +0900, KOSAKI Motohiro wrote:
>> > On Fri, Nov 13, 2009 at 07:43:09PM +0900, KOSAKI Motohiro wrote:
>> > > > After kswapd balances all zones in a pgdat, it goes to sleep. =
In the event
>> > > > of no IO congestion, kswapd can go to sleep very shortly after=
 the high
>> > > > watermark was reached. If there are a constant stream of alloc=
ations from
>> > > > parallel processes, it can mean that kswapd went to sleep too =
quickly and
>> > > > the high watermark is not being maintained for sufficient leng=
th time.
>> > > >
>> > > > This patch makes kswapd go to sleep as a two-stage process. It=
 first
>> > > > tries to sleep for HZ/10. If it is woken up by another process=
 or the
>> > > > high watermark is no longer met, it's considered a premature s=
leep and
>> > > > kswapd continues work. Otherwise it goes fully to sleep.
>> > > >
>> > > > This adds more counters to distinguish between fast and slow b=
reaches of
>> > > > watermarks. A "fast" premature sleep is one where the low wate=
rmark was
>> > > > hit in a very short time after kswapd going to sleep. A "slow"=
 premature
>> > > > sleep indicates that the high watermark was breached after a v=
ery short
>> > > > interval.
>> > > >
>> > > > Signed-off-by: Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>
>> > >
>> > > Why do you submit this patch to mainline? this is debugging patc=
h
>> > > no more and no less.
>> > >
>> >
>> > Do you mean the stats part? The stats are included until such time=
 as the page
>> > allocator failure reports stop or are significantly reduced. In th=
e event a
>> > report is received, the value of the counters help determine if ks=
wapd was
>> > struggling or not. They should be removed once this mess is ironed=
 out.
>> >
>> > If there is a preference, I can split out the stats part and send =
it to
>> > people with page allocator failure reports for retesting.
>>
>> I'm sorry my last mail didn't have enough explanation.
>> This stats help to solve this issue. I agreed. but after solving thi=
s issue,
>> I don't imagine administrator how to use this stats. if KSWAPD_PREMA=
TURE_FAST or
>> KSWAPD_PREMATURE_SLOW significantly increased, what should admin do?
>
> One possible workaround would be to raise min_free_kbytes while a fix=
 is
> being worked on.

Please correct me, if I said wrong thing.

if I was admin, I don't watch this stats because kswapd frequently
wakeup doesn't mean any trouble. instead I watch number of allocation
failure.

[see include/linux/vmstat.h]

umm...
Why don't we have nr-allocation-failure vmstat? I don't remember it.
GFP_NOWARN failure doesn't make syslog error logging. but frequently
GFP_NOWARN failure imply the system is under memory pressure or under
heavy fragmentation. It is good opportunity to change min_free_kbytes.



>> Or, Can LKML folk make any advise to admin?
>>
>
> Work with them to fix the bug :/
>
>> if kernel doesn't have any bug, kswapd wakeup rate is not so worth i=
nformation imho.
>> following your additional code itself looks good to me. but...
>>
>>
>> > =3D=3D=3D=3D CUT HERE =3D=3D=3D=3D
>> > vmscan: Have kswapd sleep for a short interval and double check it=
 should be asleep fix 1
>> >
>> > This patch is a fix and a claritifacation to the patch "vmscan: Ha=
ve
>> > kswapd sleep for a short interval and double check it should be as=
leep".
>> > The fix is for kswapd to only check zones in the node it is respon=
sible
>> > for. The clarification is to rename two counters to better explain=
 what is
>> > being counted.
>> >
>> > Signed-off-by: Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>
>> > ---
>> > =A0include/linux/vmstat.h | =A0 =A02 +-
>> > =A0mm/vmscan.c =A0 =A0 =A0 =A0 =A0 =A0| =A0 20 +++++++++++++------=
-
>> > =A0mm/vmstat.c =A0 =A0 =A0 =A0 =A0 =A0| =A0 =A04 ++--
>> > =A03 files changed, 16 insertions(+), 10 deletions(-)
>> >
>> > diff --git a/include/linux/vmstat.h b/include/linux/vmstat.h
>> > index 7d66695..0591a48 100644
>> > --- a/include/linux/vmstat.h
>> > +++ b/include/linux/vmstat.h
>> > @@ -40,7 +40,7 @@ enum vm_event_item { PGPGIN, PGPGOUT, PSWPIN, PS=
WPOUT,
>> > =A0 =A0 =A0 =A0 =A0 =A0 PGSCAN_ZONE_RECLAIM_FAILED,
>> > =A0#endif
>> > =A0 =A0 =A0 =A0 =A0 =A0 PGINODESTEAL, SLABS_SCANNED, KSWAPD_STEAL,=
 KSWAPD_INODESTEAL,
>> > - =A0 =A0 =A0 =A0 =A0 KSWAPD_PREMATURE_FAST, KSWAPD_PREMATURE_SLOW=
,
>> > + =A0 =A0 =A0 =A0 =A0 KSWAPD_LOW_WMARK_HIT_QUICKLY, KSWAPD_HIGH_WM=
ARK_HIT_QUICKLY,
>> > =A0 =A0 =A0 =A0 =A0 =A0 KSWAPD_NO_CONGESTION_WAIT,
>> > =A0 =A0 =A0 =A0 =A0 =A0 PAGEOUTRUN, ALLOCSTALL, PGROTATED,
>> > =A0#ifdef CONFIG_HUGETLB_PAGE
>> > diff --git a/mm/vmscan.c b/mm/vmscan.c
>> > index 70967e1..5557555 100644
>> > --- a/mm/vmscan.c
>> > +++ b/mm/vmscan.c
>> > @@ -1905,19 +1905,25 @@ unsigned long try_to_free_mem_cgroup_pages=
(struct mem_cgroup *mem_cont,
>> > =A0#endif
>> >
>> > =A0/* is kswapd sleeping prematurely? */
>> > -static int sleeping_prematurely(int order, long remaining)
>> > +static int sleeping_prematurely(pg_data_t *pgdat, int order, long=
 remaining)
>> > =A0{
>> > - =A0 struct zone *zone;
>> > + =A0 int i;
>> >
>> > =A0 =A0 /* If a direct reclaimer woke kswapd within HZ/10, it's pr=
emature */
>> > =A0 =A0 if (remaining)
>> > =A0 =A0 =A0 =A0 =A0 =A0 return 1;
>> >
>> > =A0 =A0 /* If after HZ/10, a zone is below the high mark, it's pre=
mature */
>> > - =A0 for_each_populated_zone(zone)
>> > + =A0 for (i =3D 0; i < pgdat->nr_zones; i++) {
>> > + =A0 =A0 =A0 =A0 =A0 struct zone *zone =3D pgdat->node_zones + i;
>> > +
>> > + =A0 =A0 =A0 =A0 =A0 if (!populated_zone(zone))
>> > + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 continue;
>> > +
>> > =A0 =A0 =A0 =A0 =A0 =A0 if (!zone_watermark_ok(zone, order, high_w=
mark_pages(zone),
>> > =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 0, 0))
>> > =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 return 1;
>> > + =A0 }
>> >
>> > =A0 =A0 return 0;
>> > =A0}
>> > @@ -2221,7 +2227,7 @@ static int kswapd(void *p)
>> > =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 long remai=
ning =3D 0;
>> >
>> > =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 /* Try to =
sleep for a short interval */
>> > - =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 if (!sleepin=
g_prematurely(order, remaining)) {
>> > + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 if (!sleepin=
g_prematurely(pgdat, order, remaining)) {
>> > =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 remaining =3D schedule_timeout(HZ/10);
>> > =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 finish_wait(&pgdat->kswapd_wait, &wait);
>> > =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 prepare_to_wait(&pgdat->kswapd_wait, &wait, TASK_INTERRUPTIBLE);
>> > @@ -2232,13 +2238,13 @@ static int kswapd(void *p)
>> > =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0* prema=
ture sleep. If not, then go fully
>> > =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0* to sl=
eep until explicitly woken up
>> > =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0*/
>> > - =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 if (!sleepin=
g_prematurely(order, remaining))
>> > + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 if (!sleepin=
g_prematurely(pgdat, order, remaining))
>> > =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 schedule();
>> > =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 else {
>> > =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 if (remaining)
>> > - =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 count_vm_event(KSWAPD_PREMATURE_FAST);
>> > + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 count_vm_event(KSWAPD_LOW_WMARK_HIT_QUICKLY);
>> > =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 else
>> > - =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 count_vm_event(KSWAPD_PREMATURE_SLOW);
>> > + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 count_vm_event(KSWAPD_HIGH_WMARK_HIT_QUICKLY);
>> > =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 }
>> > =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 }
>> >
>> > diff --git a/mm/vmstat.c b/mm/vmstat.c
>> > index bc09547..6cc8dc6 100644
>> > --- a/mm/vmstat.c
>> > +++ b/mm/vmstat.c
>> > @@ -683,8 +683,8 @@ static const char * const vmstat_text[] =3D {
>> > =A0 =A0 "slabs_scanned",
>> > =A0 =A0 "kswapd_steal",
>> > =A0 =A0 "kswapd_inodesteal",
>> > - =A0 "kswapd_slept_prematurely_fast",
>> > - =A0 "kswapd_slept_prematurely_slow",
>> > + =A0 "kswapd_low_wmark_hit_quickly",
>> > + =A0 "kswapd_high_wmark_hit_quickly",
>> > =A0 =A0 "kswapd_no_congestion_wait",
>> > =A0 =A0 "pageoutrun",
>> > =A0 =A0 "allocstall",
>>
>>
>>
>
> --
> Mel Gorman
> Part-time Phd Student =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0Linux Technology Center
> University of Limerick =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 IBM Dublin Software Lab
>
> --
> To unsubscribe, send a message with 'unsubscribe linux-mm' in
> the body to majordomo-Bw31MaZKKs0EbZ0PF+XxCw@public.gmane.org =A0For more info on Linux MM,
> see: http://www.linux-mm.org/ .
> Don't email: <a href=3Dmailto:"dont-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org"> email-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org </a>
>
