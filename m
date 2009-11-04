From: David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Subject: Re: [PATCH 2/3] page allocator: Do not allow interrupts to use
 ALLOC_HARDER
Date: Tue, 3 Nov 2009 17:46:48 -0800 (PST)
Message-ID: <alpine.DEB.2.00.0911031739380.1187@chino.kir.corp.google.com>
References: <1256650833-15516-1-git-send-email-mel@csn.ul.ie> <1256650833-15516-3-git-send-email-mel@csn.ul.ie> <20091027130924.fa903f5a.akpm@linux-foundation.org> <alpine.DEB.2.00.0910271411530.9183@chino.kir.corp.google.com> <20091031184054.GB1475@ucw.cz>
 <alpine.DEB.2.00.0910311248490.13829@chino.kir.corp.google.com> <20091031201158.GB29536@elf.ucw.cz> <4AECCF6A.4020206@redhat.com> <alpine.DEB.1.10.0911021139100.24535@V090114053VZO-1> <alpine.DEB.2.00.0911021249470.22525@chino.kir.corp.google.com>
 <alpine.DEB.1.10.0911031208150.21943@V090114053VZO-1>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=google.com; s=beta;
	t=1257299216; bh=eYqb9xxTXRhylltCdknkX8YZRi4=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type;
	b=KKYQE/Li91ulPyifRBoLTozxnh6nvst2G4LvCe5ttPIwuKcCLk1ByzqXFDaExAL7P
	 luupZsyr+O/fDZv0OkSFA==
In-Reply-To: <alpine.DEB.1.10.0911031208150.21943@V090114053VZO-1>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: Rik van Riel <riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Pavel Machek <pavel-+ZI9xUNit7I@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>, stable-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org, Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>, Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>, Sven Geggus <lists-+AJD3D7QEjjt/htJsj1pd9AswbaBtrod@public.gmane.org>, Karol Lewandowski <karol.k.lewandowski-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Tobias Oetiker <tobi-7K0TWYW2a3pyDzI6CaY1VQ@public.gmane.org>, KOSAKI Motohiro <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>, Stephan von Krawczynski <skraw-DcQCyzbjH0jQT0dZR+AlfA@public.gmane.org>, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On Tue, 3 Nov 2009, Christoph Lameter wrote:

> If you dont know what "realtime" is then we cannot really implement
> "realtime" behavior in the page allocator.
> 

It's not intended to implement realtime behavior!

This is a convenience given to rt_task() to reduce latency when possible 
by avoiding direct reclaim and allowing background reclaim to bring us 
back over the low watermark.

That's been in the page allocator for over four years and is not intended 
to implement realtime behavior.  These tasks do not rely on memory 
reserves being available.

Is it really hard to believe that tasks with such high priorities are 
given an exemption in the page allocator so that we reclaim in the 
background instead of directly?

I hope we can move this to another thread if people would like to remove 
this exemption completely instead of talking about this trivial fix, which 
I doubt there's any objection to.
