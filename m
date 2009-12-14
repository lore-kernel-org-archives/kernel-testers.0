From: Tobias Oetiker <tobi-7K0TWYW2a3pyDzI6CaY1VQ@public.gmane.org>
Subject: Re: still getting allocation failures (was Re: [PATCH] vmscan: Stop
 kswapd waiting on congestion when the min watermark is not being met V2)
Date: Mon, 14 Dec 2009 06:59:08 +0100 (CET)
Message-ID: <alpine.DEB.2.00.0912140646550.12657@sebohet.brgvxre.pu>
References: <20091113142608.33B9.A69D9226@jp.fujitsu.com>  <20091113135443.GF29804@csn.ul.ie>  <20091114023138.3DA5.A69D9226@jp.fujitsu.com>  <20091113181557.GM29804@csn.ul.ie>  <2f11576a0911131033w4a9e6042k3349f0be290a167e@mail.gmail.com> 
 <20091113200357.GO29804@csn.ul.ie>  <alpine.DEB.2.00.0911261542500.21450@sebohet.brgvxre.pu>  <alpine.DEB.2.00.0911290834470.20857@sebohet.brgvxre.pu>  <20091202113241.GC1457@csn.ul.ie>  <alpine.DEB.2.00.0912022210220.30023@sebohet.brgvxre.pu>
 <4e5e476b0912031226i5b0e6cf9hdfd5519182ccdefa@mail.gmail.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <4e5e476b0912031226i5b0e6cf9hdfd5519182ccdefa-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Corrado Zoccolo <czoccolo-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, KOSAKI Motohiro <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>, Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>, Sven Geggus <lists-+AJD3D7QEjjt/htJsj1pd9AswbaBtrod@public.gmane.org>, Karol Lewandowski <karol.k.lewandowski-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, "linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org" <linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org>, Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>, Rik van Riel <riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Stephan von Krawczynski <skraw-DcQCyzbjH0jQT0dZR+AlfA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

Hi Corrado,

Dec 3 Corrado Zoccolo wrote:

> Hi Tobias,
> does the patch in http://lkml.org/lkml/2009/11/30/301 help with your
> high order allocation problems?
> It seems that you have lot of memory, but high order pages do not show up.
> The patch should make them more likely to appear.
> On my machine (that has much less ram than yours), with the patch, I
> always have order-10 pages available.

I have tried it and ... it does not work, the  page allocation
failure still shows. BUT while testing it on two machines I found that it
only shows on on machine. The workload on the two machines is
similar (they both run virtualbox) and also the available memory.

Could it be caused by a hardware driver ?

cheers
tobi

-- 
Tobi Oetiker, OETIKER+PARTNER AG, Aarweg 15 CH-4600 Olten, Switzerland
http://it.oetiker.ch tobi-7K0TWYW2a3pyDzI6CaY1VQ@public.gmane.org ++41 62 775 9902 / sb: -9900
