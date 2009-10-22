From: Pekka Enberg <penberg@cs.helsinki.fi>
Subject: Re: [PATCH 0/5] Candidate fix for increased number of GFP_ATOMIC 
	failures V2
Date: Thu, 22 Oct 2009 17:47:10 +0300
Message-ID: <84144f020910220747nba30d8bkc83c2569da79bd7c@mail.gmail.com>
References: <1256221356-26049-1-git-send-email-mel@csn.ul.ie>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <netdev-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:sender:received:in-reply-to
         :references:date:x-google-sender-auth:message-id:subject:from:to:cc
         :content-type:content-transfer-encoding;
        bh=DKHW1d8wYDNWJGF8rZMaFxmP8EiUHj2a3BKetUHjQCI=;
        b=hP7Fj9aYAQqvpsoclsN1b7zJ+Rb8rqhLjSv6Z5rlIhP/3hDSGvbupEe1oI19DtTYJK
         ihTNWWudcgvEOj8d49/P5fli1p/HRIZHTDYlsGWnSultIGvtsIN1St35aFgwLRuxOIo+
         RntdYVPtumEE8eLonr7/3aU3VVOpI18VzFWmg=
In-Reply-To: <1256221356-26049-1-git-send-email-mel@csn.ul.ie>
Sender: netdev-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Mel Gorman <mel@csn.ul.ie>
Cc: Frans Pop <elendil@planet.nl>, Jiri Kosina <jkosina@suse.cz>, Sven Geggus <lists@fuchsschwanzdomain.de>, Karol Lewandowski <karol.k.lewandowski@gmail.com>, Tobias Oetiker <tobi@oetiker.ch>, "Rafael J. Wysocki" <rjw@sisk.pl>, David Miller <davem@davemloft.net>, Reinette Chatre <reinette.chatre@intel.com>, Kalle Valo <kalle.valo@iki.fi>, David Rientjes <rientjes@google.com>, KOSAKI Motohiro <kosaki.motohiro@jp.fujitsu.com>, Mohamed Abbas <mohamed.abbas@intel.com>, Jens Axboe <jens.axboe@oracle.com>, "John W. Linville" <linville@tuxdriver.com>, Bartlomiej Zolnierkiewicz <bzolnier@gmail.com>, Greg Kroah-Hartman <gregkh@suse.de>, Stephan von Krawczynski <skraw@ithnet.com>, Kernel Testers List <kernel-testers@vger.kernel.org>, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, "linux-mm@kvack.org\"" <linux-mm@kvack.org>, akpm@linux-foundation.org, cl@linux-foundation.

On Thu, Oct 22, 2009 at 5:22 PM, Mel Gorman <mel@csn.ul.ie> wrote:
> Test 1: Verify your problem occurs on 2.6.32-rc5 if you can
>
> Test 2: Apply the following two patches and test again
>
> =A01/5 page allocator: Always wake kswapd when restarting an allocati=
on attempt after direct reclaim failed
> =A02/5 page allocator: Do not allow interrupts to use ALLOC_HARDER

These are pretty obvious bug fixes and should go to linux-next ASAP IMH=
O.

> Test 5: If things are still screwed, apply the following
> =A05/5 Revert 373c0a7e, 8aa7e847: Fix congestion_wait() sync/async vs=
 read/write confusion
>
> =A0 =A0 =A0 =A0Frans Pop reports that the bulk of his problems go awa=
y when this
> =A0 =A0 =A0 =A0patch is reverted on 2.6.31. There has been some confu=
sion on why
> =A0 =A0 =A0 =A0exactly this patch was wrong but apparently the conver=
sion was not
> =A0 =A0 =A0 =A0complete and further work was required. It's unknown i=
f all the
> =A0 =A0 =A0 =A0necessary work exists in 2.6.31-rc5 or not. If there a=
re still
> =A0 =A0 =A0 =A0allocation failures and applying this patch fixes the =
problem,
> =A0 =A0 =A0 =A0there are still snags that need to be ironed out.

As explained by Jens Axboe, this changes timing but is not the source
of the OOMs so the revert is bogus even if it "helps" on some
workloads. IIRC the person who reported the revert to help things did
report that the OOMs did not go away, they were simply harder to
trigger with the revert.
