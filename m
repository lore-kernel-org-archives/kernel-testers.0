From: Frans Pop <elendil@planet.nl>
Subject: Re: [Bug #14141] order 2 page allocation failures in iwlagn
Date: Mon, 12 Oct 2009 01:36:18 +0200
Message-ID: <200910120136.20390.elendil@planet.nl>
References: <3onW63eFtRF.A.xXH.oMTxKB@chimera> <200910050851.02056.elendil@planet.nl> <200910120110.28061.elendil@planet.nl>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Return-path: <owner-linux-mm@kvack.org>
In-Reply-To: <200910120110.28061.elendil@planet.nl>
Content-Disposition: inline
Sender: owner-linux-mm@kvack.org
List-Id: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: Mel Gorman <mel@csn.ul.ie>
Cc: David Rientjes <rientjes@google.com>, KOSAKI Motohiro <kosaki.motohiro@jp.fujitsu.com>, "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Pekka Enberg <penberg@cs.helsinki.fi>, Reinette Chatre <reinette.chatre@intel.com>, Bartlomiej Zolnierkiewicz <bzolnier@gmail.com>, Karol Lewandowski <karol.k.lewandowski@gmail.com>, linux-mm@kvack.org

On Monday 12 October 2009, Frans Pop wrote:
> BISECTION of akpm (mm) MERGE
> ----------------------------
> So here I went looking for "where does the test start failing on the
> first try". Again, I was unable to narrow it down to a single commit.

Note that this merge is based on mainline at v2.6.30-5415-g03347e2, so a
number of merges "drop out" once I  started bisecting into this merge. But
that point is still *after* the net-next-2.6 merge, which is all that's
really relevant for this issue.

> For a good overview of the area, use 'gitk f83b1e61..517d0869'.
>
> v2.6.30-5466-ga1dd268=C2=A0=C2=A0=C2=A0mm: use alloc_pages_exact in alloc=
_large_system_hash
>	2.3=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0+-=20
> v2.6.30-5478-ge9bb35d=C2=A0=C2=A0=C2=A0mm: setup_per_zone_inactive_ratio =
=2D fix comment and..
>	2.5=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0+-=20
> v2.6.30-5486-g35282a2=C2=A0=C2=A0=C2=A0migration: only migrate_prep() onc=
e per move_pages()
>	2.6=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0-|+|-=C2=A0=C2=A0=C2=A0not quite conclus=
ive...=20
> v2.6.30-5492-gbce7394=C2=A0=C2=A0=C2=A0page-allocator: reset wmark_min an=
d inactive ratio..
>	2.4=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0-|-=20

--
To unsubscribe, send a message with 'unsubscribe linux-mm' in
the body to majordomo@kvack.org.  For more info on Linux MM,
see: http://www.linux-mm.org/ .
Don't email: <a href=mailto:"dont@kvack.org"> email@kvack.org </a>
