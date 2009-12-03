From: Corrado Zoccolo <czoccolo-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: still getting allocation failures (was Re: [PATCH] vmscan: Stop 
	kswapd waiting on congestion when the min watermark is not being met V2)
Date: Thu, 3 Dec 2009 21:26:00 +0100
Message-ID: <4e5e476b0912031226i5b0e6cf9hdfd5519182ccdefa@mail.gmail.com>
References: <20091113142608.33B9.A69D9226@jp.fujitsu.com>
	 <20091113135443.GF29804@csn.ul.ie>
	 <20091114023138.3DA5.A69D9226@jp.fujitsu.com>
	 <20091113181557.GM29804@csn.ul.ie>
	 <2f11576a0911131033w4a9e6042k3349f0be290a167e@mail.gmail.com>
	 <20091113200357.GO29804@csn.ul.ie>
	 <alpine.DEB.2.00.0911261542500.21450@sebohet.brgvxre.pu>
	 <alpine.DEB.2.00.0911290834470.20857@sebohet.brgvxre.pu>
	 <20091202113241.GC1457@csn.ul.ie>
	 <alpine.DEB.2.00.0912022210220.30023@sebohet.brgvxre.pu>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=+/+gBWgmHZmFomi1NIOVJi5JitmiYaC2BCCG4sbEeGw=;
        b=v8CrXurbtjX5KhdFxwFTQFvgvZASEEZjTT/FnEShV7qkEom1OVirtdh/E8b1+Z3zrt
         pVDhHpZX4cdeR/GiP9MiA5tWULbwqnVHmydlUwYBcq+oQYDHlKUwJH7ifxpKNAkyOHbH
         ibOnWcm7U/6chcFnf48To5vOEkxnzaHJn5uxw=
In-Reply-To: <alpine.DEB.2.00.0912022210220.30023-EjsAmf5DE5zIvOfxy3zmAzgUDZmNtoG9@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: Tobias Oetiker <tobi-7K0TWYW2a3pyDzI6CaY1VQ@public.gmane.org>
Cc: Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, KOSAKI Motohiro <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>, Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>, Sven Geggus <lists-+AJD3D7QEjjt/htJsj1pd9AswbaBtrod@public.gmane.org>, Karol Lewandowski <karol.k.lewandowski-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, "linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org" <linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org>, Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>, Rik van Riel <riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Stephan von Krawczynski <skraw-DcQCyzbjH0jQT0dZR+AlfA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

Hi Tobias,
does the patch in http://lkml.org/lkml/2009/11/30/301 help with your
high order allocation problems?
It seems that you have lot of memory, but high order pages do not show =
up.
The patch should make them more likely to appear.
On my machine (that has much less ram than yours), with the patch, I
always have order-10 pages available.

Corrado

On Wed, Dec 2, 2009 at 10:30 PM, Tobias Oetiker <tobi-7K0TWYW2a3pyDzI6CaY1VQ@public.gmane.org> wrote=
:
> Hi Mel,
>
> Today Mel Gorman wrote:
>
>> On Sun, Nov 29, 2009 at 08:42:09AM +0100, Tobi Oetiker wrote:
>> > Hi Mel,
>> >
>> > Thursday Tobias Oetiker wrote:
>> > > Hi Mel,
>> > >
>> > > Nov 13 Mel Gorman wrote:
>> > >
>> > > > The last version has a stupid bug in it. Sorry.
>> > > >
>> > > > Changelog since V1
>> > > > =C2=A0 o Fix incorrect negation
>> > > > =C2=A0 o Rename kswapd_no_congestion_wait to kswapd_skip_conge=
stion_wait as
>> > > > =C2=A0 =C2=A0 suggested by Rik
>> > > >
>> > > > If reclaim fails to make sufficient progress, the priority is =
raised.
>> > > > Once the priority is higher, kswapd starts waiting on congesti=
on. =C2=A0However,
>> > > > if the zone is below the min watermark then kswapd needs to co=
ntinue working
>> > > > without delay as there is a danger of an increased rate of GFP=
_ATOMIC
>> > > > allocation failure.
>> > > >
>> > > > This patch changes the conditions under which kswapd waits on
>> > > > congestion by only going to sleep if the min watermarks are be=
ing met.
>> > >
>> > > I finally got around to test this together with the whole series=
 on
>> > > 2.6.31.6. after running it for a day I have not yet seen a singl=
e
>> > > order:5 allocation problem ... (while I had several an hour befo=
re)
>> >
>> > > for the record, my kernel is now running with the following
>> > > patches:
>> > >
>> > > patch1:Date: Thu, 12 Nov 2009 19:30:31 +0000
>> > > patch1:Subject: [PATCH 1/5] page allocator: Always wake kswapd w=
hen restarting an allocation attempt after direct reclaim failed
>> > >
>> > > patch2:Date: Thu, 12 Nov 2009 19:30:32 +0000
>> > > patch2:Subject: [PATCH 2/5] page allocator: Do not allow interru=
pts to use ALLOC_HARDER
>> > >
>> > > patch3:Date: Thu, 12 Nov 2009 19:30:33 +0000
>> > > patch3:Subject: [PATCH 3/5] page allocator: Wait on both sync an=
d async congestion after direct reclaim
>> > >
>> > > patch4:Date: Thu, 12 Nov 2009 19:30:34 +0000
>> > > patch4:Subject: [PATCH 4/5] vmscan: Have kswapd sleep for a shor=
t interval and double check it should be asleep
>> > >
>> > > patch5:Date: Fri, 13 Nov 2009 20:03:57 +0000
>> > > patch5:Subject: [PATCH] vmscan: Stop kswapd waiting on congestio=
n when the min watermark is not being met V2
>> > >
>> > > patch6:Date: Tue, 17 Nov 2009 10:34:21 +0000
>> > > patch6:Subject: [PATCH] vmscan: Have kswapd sleep for a short in=
terval and double check it should be asleep fix 1
>> > >
>> > I have now been running the new kernel for a few days and I am
>> > sorry to report that about a day after booting the allocation
>> > failures started showing again. More order:4 instead of order:5 ..=
=2E
>> >
>>
>> Why has the order changed?
>
> ? no idea ... the order has changed after applying the patches
> cited above.
>
>> Also, what allocator were you using in 2.6.30 and 2.6.31.6, SLAB or
>> SLUB? Did you happen to change them when upgrading the kernel?
>
> I have been and still am using SLUB =C2=A0...
>
> cheers
> tobi
>
>
> --
> Tobi Oetiker, OETIKER+PARTNER AG, Aarweg 15 CH-4600 Olten, Switzerlan=
d
> http://it.oetiker.ch tobi-7K0TWYW2a3pyDzI6CaY1VQ@public.gmane.org ++41 62 775 9902 / sb: -9900
> --
> To unsubscribe from this list: send the line "unsubscribe linux-kerne=
l" in
> the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
> More majordomo info at =C2=A0http://vger.kernel.org/majordomo-info.ht=
ml
> Please read the FAQ at =C2=A0http://www.tux.org/lkml/
>



--=20
_______________________________________________________________________=
___

dott. Corrado Zoccolo                          mailto:czoccolo-Re5JQEeQqe8@public.gmane.org=
m
PhD - Department of Computer Science - University of Pisa, Italy
-----------------------------------------------------------------------=
---
The self-confidence of a warrior is not the self-confidence of the aver=
age
man. The average man seeks certainty in the eyes of the onlooker and ca=
lls
that self-confidence. The warrior seeks impeccability in his own eyes a=
nd
calls that humbleness.
                               Tales of Power - C. Castaneda
