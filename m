From: Rik van Riel <riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Subject: Re: [PATCH 3/3] vmscan: Force kswapd to take notice faster when high-order
 watermarks are being hit
Date: Tue, 27 Oct 2009 14:18:34 -0400
Message-ID: <4AE7397A.4010907__46763.1716201597$1256667670$gmane$org@redhat.com>
References: <1256650833-15516-1-git-send-email-mel@csn.ul.ie> <1256650833-15516-4-git-send-email-mel@csn.ul.ie>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1256650833-15516-4-git-send-email-mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>
Cc: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, stable-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, " <rjw-KKrjLPT3xs0@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>"@redhat.com

On 10/27/2009 09:40 AM, Mel Gorman wrote:
> When a high-order allocation fails, kswapd is kicked so that it reclaims
> at a higher-order to avoid direct reclaimers stall and to help GFP_ATOMIC
> allocations. Something has changed in recent kernels that affect the timing
> where high-order GFP_ATOMIC allocations are now failing with more frequency,
> particularly under pressure. This patch forces kswapd to notice sooner that
> high-order allocations are occuring.
>
> Signed-off-by: Mel Gorman<mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>

Reviewed-by: Rik van Riel <riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>

-- 
All rights reversed.
