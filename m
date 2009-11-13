From: Minchan Kim <minchan.kim-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH 5/5] vmscan: Take order into consideration when deciding 
	if kswapd is in trouble
Date: Fri, 13 Nov 2009 23:48:57 +0900
Message-ID: <28c262360911130648q7b615ad4if75b902ed25d5fbd@mail.gmail.com>
References: <1258054235-3208-1-git-send-email-mel@csn.ul.ie>
	 <1258054235-3208-6-git-send-email-mel@csn.ul.ie>
	 <20091113142608.33B9.A69D9226@jp.fujitsu.com>
	 <20091113135443.GF29804@csn.ul.ie>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=HavplN6NfQmIa6EKUq2pyzJsqmqBsoqCnjPMIMvgoZM=;
        b=RkCcK8cxlBSOneOdadhxptm/n6fiY3mFKKdElcJPPEznwzf8BnQc0Tj4QGk/zKogol
         DWRU5vQN0yaih+maRpg8R3jjlIDUkoRT0tMmPshUVqk6WLIJWSxun0JvHaRM31XgRTEl
         +HoljgCDkRhcuedBDZd2YGVqzgXJBM4L8VuBU=
In-Reply-To: <20091113135443.GF29804-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>
Cc: KOSAKI Motohiro <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>, Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>, Sven Geggus <lists-+AJD3D7QEjjt/htJsj1pd9AswbaBtrod@public.gmane.org>, Karol Lewandowski <karol.k.lewandowski-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Tobias Oetiker <tobi-7K0TWYW2a3pyDzI6CaY1VQ@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, "linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org" <linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org>, Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>, Rik van Riel <riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Stephan von Krawczynski <skraw-DcQCyzbjH0jQT0dZR+AlfA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Fri, Nov 13, 2009 at 10:54 PM, Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org> wrote:
> On Fri, Nov 13, 2009 at 06:54:29PM +0900, KOSAKI Motohiro wrote:
>> > If reclaim fails to make sufficient progress, the priority is rais=
ed.
>> > Once the priority is higher, kswapd starts waiting on congestion.
>> > However, on systems with large numbers of high-order atomics due t=
o
>> > crappy network cards, it's important that kswapd keep working in
>> > parallel to save their sorry ass.
>> >
>> > This patch takes into account the order kswapd is reclaiming at be=
fore
>> > waiting on congestion. The higher the order, the longer it is befo=
re
>> > kswapd considers itself to be in trouble. The impact is that kswap=
d
>> > works harder in parallel rather than depending on direct reclaimer=
s or
>> > atomic allocations to fail.
>> >
>> > Signed-off-by: Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>
>> > ---
>> > =A0mm/vmscan.c | =A0 14 ++++++++++++--
>> > =A01 files changed, 12 insertions(+), 2 deletions(-)
>> >
>> > diff --git a/mm/vmscan.c b/mm/vmscan.c
>> > index ffa1766..5e200f1 100644
>> > --- a/mm/vmscan.c
>> > +++ b/mm/vmscan.c
>> > @@ -1946,7 +1946,7 @@ static int sleeping_prematurely(int order, l=
ong remaining)
>> > =A0static unsigned long balance_pgdat(pg_data_t *pgdat, int order)
>> > =A0{
>> > =A0 =A0 int all_zones_ok;
>> > - =A0 int priority;
>> > + =A0 int priority, congestion_priority;
>> > =A0 =A0 int i;
>> > =A0 =A0 unsigned long total_scanned;
>> > =A0 =A0 struct reclaim_state *reclaim_state =3D current->reclaim_s=
tate;
>> > @@ -1967,6 +1967,16 @@ static unsigned long balance_pgdat(pg_data_=
t *pgdat, int order)
>> > =A0 =A0 =A0*/
>> > =A0 =A0 int temp_priority[MAX_NR_ZONES];
>> >
>> > + =A0 /*
>> > + =A0 =A0* When priority reaches congestion_priority, kswapd will =
sleep
>> > + =A0 =A0* for a short time while congestion clears. The higher th=
e
>> > + =A0 =A0* order being reclaimed, the less likely kswapd will go t=
o
>> > + =A0 =A0* sleep as high-order allocations are harder to reclaim a=
nd
>> > + =A0 =A0* stall direct reclaimers longer
>> > + =A0 =A0*/
>> > + =A0 congestion_priority =3D DEF_PRIORITY - 2;
>> > + =A0 congestion_priority -=3D min(congestion_priority, sc.order);
>>
>> This calculation mean
>>
>> =A0 =A0 =A0 sc.order =A0 =A0 =A0 =A0congestion_priority =A0 =A0 scan=
-pages
>> =A0 =A0 =A0 --------------------------------------------------------=
-
>> =A0 =A0 =A0 0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 10 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A01/1024 * zone-mem
>> =A0 =A0 =A0 1 =A0 =A0 =A0 =A0 =A0 =A0 =A0 9 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 1/512 =A0* zone-mem
>> =A0 =A0 =A0 2 =A0 =A0 =A0 =A0 =A0 =A0 =A0 8 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 1/256 =A0* zone-mem
>> =A0 =A0 =A0 3 =A0 =A0 =A0 =A0 =A0 =A0 =A0 7 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 1/128 =A0* zone-mem
>> =A0 =A0 =A0 4 =A0 =A0 =A0 =A0 =A0 =A0 =A0 6 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 1/64 =A0 * zone-mem
>> =A0 =A0 =A0 5 =A0 =A0 =A0 =A0 =A0 =A0 =A0 5 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 1/32 =A0 * zone-mem
>> =A0 =A0 =A0 6 =A0 =A0 =A0 =A0 =A0 =A0 =A0 4 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 1/16 =A0 * zone-mem
>> =A0 =A0 =A0 7 =A0 =A0 =A0 =A0 =A0 =A0 =A0 3 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 1/8 =A0 =A0* zone-mem
>> =A0 =A0 =A0 8 =A0 =A0 =A0 =A0 =A0 =A0 =A0 2 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 1/4 =A0 =A0* zone-mem
>> =A0 =A0 =A0 9 =A0 =A0 =A0 =A0 =A0 =A0 =A0 1 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 1/2 =A0 =A0* zone-mem
>> =A0 =A0 =A0 10 =A0 =A0 =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 1 =A0 =A0 =A0* zone-mem
>> =A0 =A0 =A0 11+ =A0 =A0 =A0 =A0 =A0 =A0 0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 1 =A0 =A0 =A0* zone-mem
>>
>> I feel this is too agressive. The intention of this congestion_wait(=
)
>> is to prevent kswapd use 100% cpu time.

As I said in reply of kosaki's patch, I can't understand point.

> Ok, I thought the intention might be to avoid dumping too many pages =
on
> the queue but it was already waiting on congestion elsewhere.
>
>> but the above promotion seems
>> break it.
>>
>> example,
>> ia64 have 256MB hugepage (i.e. order=3D14). it mean kswapd never sle=
ep.
>> example2,

But, This is a true problem missed in my review.
Thanks, Kosaki.

>> order-3 (i.e. PAGE_ALLOC_COSTLY_ORDER) makes one of most inefficent
>> reclaim, because it doesn't use lumpy recliam.
>> I've seen 128GB size zone, it mean 1/128 =3D 1GB. oh well, kswapd de=
finitely
>> waste cpu time 100%.
>>
>>
>> > +
>> > =A0loop_again:
>> > =A0 =A0 total_scanned =3D 0;
>> > =A0 =A0 sc.nr_reclaimed =3D 0;
>> > @@ -2092,7 +2102,7 @@ loop_again:
>> > =A0 =A0 =A0 =A0 =A0 =A0 =A0* OK, kswapd is getting into trouble. =A0=
Take a nap, then take
>> > =A0 =A0 =A0 =A0 =A0 =A0 =A0* another pass across the zones.
>> > =A0 =A0 =A0 =A0 =A0 =A0 =A0*/
>> > - =A0 =A0 =A0 =A0 =A0 if (total_scanned && priority < DEF_PRIORITY=
 - 2)
>> > + =A0 =A0 =A0 =A0 =A0 if (total_scanned && priority < congestion_p=
riority)
>> > =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 congestion_wait(BLK_RW_ASY=
NC, HZ/10);
>>
>> Instead, How about this?
>>
>
> This makes a lot of sense. Tests look good and I added stats to make =
sure
> the logic was triggering. On X86, kswapd avoided a congestion_wait 11=
723
> times and X86-64 avoided it 5084 times. I think we should hold onto t=
he
> stats temporarily until all these bugs are ironed out.
>
> Would you like to sign off the following?
>
> If you are ok to sign off, this patch should replace my patch 5 in
> the series.

I agree Kosaki's patch is more strightforward.

You can add my review sign, too.
Thanks for good patch, Kosaki. :)

--=20
Kind regards,
Minchan Kim
