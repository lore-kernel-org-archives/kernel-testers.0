From: Minchan Kim <minchan.kim-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH 5/5] vmscan: Take order into consideration when deciding 
	if kswapd is in trouble
Date: Fri, 13 Nov 2009 21:41:33 +0900
Message-ID: <28c262360911130441h24e45cd8l60e5e10aed0d3650@mail.gmail.com>
References: <1258054235-3208-1-git-send-email-mel@csn.ul.ie>
	 <1258054235-3208-6-git-send-email-mel@csn.ul.ie>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type;
        bh=8vInHgPRWNEtf1Xg0Lm/e2fIJJO+nRUrfIOwbqip4YM=;
        b=Bkf9J+980l6ZN/iF0VJJF29PjfN9G5kIRj/9zES0ucmYzJ25X8oae/1IjkrREg298j
         6EpGGs/T4NOLd+qgKob5wLDCS+eu2WOpBcNJ9pU5AyBUHEWvMttRh8RgAF06of+uAez0
         9Ndjzz1wEC45pdU/DnXbqdYkmba0jiplHoLjs=
In-Reply-To: <1258054235-3208-6-git-send-email-mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>
Cc: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>, Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>, Sven Geggus <lists-+AJD3D7QEjjt/htJsj1pd9AswbaBtrod@public.gmane.org>, Karol Lewandowski <karol.k.lewandowski-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Tobias Oetiker <tobi-7K0TWYW2a3pyDzI6CaY1VQ@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, "linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org\"" <linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org>, KOSAKI Motohiro <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>, Rik van Riel <riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Stephan von Krawczynski <skraw-DcQCyzbjH0jQT0dZR+AlfA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Fri, Nov 13, 2009 at 4:30 AM, Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org> wrote:
> If reclaim fails to make sufficient progress, the priority is raised.
> Once the priority is higher, kswapd starts waiting on congestion.
> However, on systems with large numbers of high-order atomics due to
> crappy network cards, it's important that kswapd keep working in
> parallel to save their sorry ass.
>
> This patch takes into account the order kswapd is reclaiming at before
> waiting on congestion. The higher the order, the longer it is before
> kswapd considers itself to be in trouble. The impact is that kswapd
> works harder in parallel rather than depending on direct reclaimers or
> atomic allocations to fail.
>
> Signed-off-by: Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>

It's make sense to me.
It can help high order atomic allocation which is a big problem of allocator. :)

Thanks Mel.

Reviewed-by: Minchan Kim <minchan.kim-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

-- 
Kind regards,
Minchan Kim
