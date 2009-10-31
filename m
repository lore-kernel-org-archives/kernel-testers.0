From: David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Subject: Re: [PATCH 2/3] page allocator: Do not allow interrupts to use
 ALLOC_HARDER
Date: Sat, 31 Oct 2009 14:19:50 -0700 (PDT)
Message-ID: <alpine.DEB.2.00.0910311413160.25524@chino.kir.corp.google.com>
References: <1256650833-15516-1-git-send-email-mel@csn.ul.ie> <1256650833-15516-3-git-send-email-mel@csn.ul.ie> <20091027130924.fa903f5a.akpm@linux-foundation.org> <alpine.DEB.2.00.0910271411530.9183@chino.kir.corp.google.com> <20091031184054.GB1475@ucw.cz>
 <alpine.DEB.2.00.0910311248490.13829@chino.kir.corp.google.com> <20091031201158.GB29536@elf.ucw.cz>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=google.com; s=beta;
	t=1257023998; bh=/6nDsnUAE6va0Q7ZhPI6xB3eoP4=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type;
	b=HySRXt7BwuVuCFoF+uHGnbtja5eZNjyiwUH9GiYHzniCp7jPC5fg/NBUdq/WE33hW
	 Rs+KF0rooZ9xQZFs9xFfQ==
In-Reply-To: <20091031201158.GB29536-I/5MKhXcvmPrBKCeMvbIDA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Pavel Machek <pavel-+ZI9xUNit7I@public.gmane.org>
Cc: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>, stable-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org, Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>, Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>, Sven Geggus <lists-+AJD3D7QEjjt/htJsj1pd9AswbaBtrod@public.gmane.org>, Karol Lewandowski <karol.k.lewandowski-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Tobias Oetiker <tobi-7K0TWYW2a3pyDzI6CaY1VQ@public.gmane.org>, KOSAKI Motohiro <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>, Rik van Riel <riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Stephan von Krawczynski <skraw-DcQCyzbjH0jQT0dZR+AlfA@public.gmane.org>, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On Sat, 31 Oct 2009, Pavel Machek wrote:

> > Um, no, it's a matter of the kernel implementation.  We allow such tasks 
> > to allocate deeper into reserves to avoid the page allocator from 
> > incurring a significant penalty when direct reclaim is required.  
> > Background reclaim has already commenced at this point in the
> > slowpath.
> 
> But we can't guarantee that enough memory will be ready in the
> reserves. So if realtime task relies on it, it is broken, and will
> fail to meet its deadlines from time to time.

This is truly a bizarre tangent to take, I don't quite understand the 
point you're trying to make.  Memory reserves exist to prevent blocking 
when we need memory the most (oom killed task or direct reclaim) and to 
allocate from when we can't (GFP_ATOMIC) or shouldn't (rt tasks) utilize 
direct reclaim.  The idea is to kick background reclaim first in the 
slowpath so we're only below the low watermark for a short period and 
allow the allocation to succeed.  If direct reclaim actually can't free 
any memory, the oom killer will free it for us.

So the realtime[*] tasks aren't relying on it at all, the ALLOC_HARDER 
exemption for them in the page allocator are a convenience to return 
memory faster than otherwise when the fastpath fails.  I don't see much 
point in arguing against that.

 [*] This is the current mainline definition of "realtime," which actually
     includes a large range of different priorities.  For strict realtime,
     you'd need to check out the -rt tree.
