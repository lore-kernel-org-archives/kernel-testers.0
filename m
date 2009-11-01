From: Pavel Machek <pavel-+ZI9xUNit7I@public.gmane.org>
Subject: Re: [PATCH 2/3] page allocator: Do not allow interrupts to use
 ALLOC_HARDER
Date: Sun, 1 Nov 2009 20:32:47 +0100
Message-ID: <20091101193247.GA2155@elf.ucw.cz>
References: <20091027130924.fa903f5a.akpm@linux-foundation.org>
 <alpine.DEB.2.00.0910271411530.9183@chino.kir.corp.google.com>
 <20091031184054.GB1475@ucw.cz>
 <alpine.DEB.2.00.0910311248490.13829@chino.kir.corp.google.com>
 <20091031201158.GB29536@elf.ucw.cz>
 <alpine.DEB.2.00.0910311413160.25524@chino.kir.corp.google.com>
 <20091031222905.GA32720@elf.ucw.cz>
 <4AECC04B.9060808@redhat.com>
 <20091101073527.GB32720@elf.ucw.cz>
 <4AED9EB4.5080601@redhat.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <4AED9EB4.5080601-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Rik van Riel <riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Cc: David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>, stable-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org, Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>, Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>, Sven Geggus <lists-+AJD3D7QEjjt/htJsj1pd9AswbaBtrod@public.gmane.org>, Karol Lewandowski <karol.k.lewandowski-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Tobias Oetiker <tobi-7K0TWYW2a3pyDzI6CaY1VQ@public.gmane.org>, KOSAKI Motohiro <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>, Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Stephan von Krawczynski <skraw-DcQCyzbjH0jQT0dZR+AlfA@public.gmane.org>, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On Sun 2009-11-01 09:44:04, Rik van Riel wrote:
> On 11/01/2009 02:35 AM, Pavel Machek wrote:
> >>>I believe it would be better to simply remove it.
> >>
> >>You are against trying to give the realtime tasks a best effort
> >>advantage at memory allocation?
> >
> >Yes. Those memory reserves were for kernel, GPF_ATOMIC and stuff. Now
> >realtime tasks are allowed to eat into them. That feels wrong.
> >
> >"realtime" tasks are not automatically "more important".
> >
> >>Realtime apps often *have* to allocate memory on the kernel side,
> >>because they use network system calls, etc...
> >
> >So what? As soon as they do that, they lose any guarantees, anyway.
> 
> They might lose the absolute guarantee, but that's no reason
> not to give it our best effort!

You know, there's no reason not to give best effort to normal tasks,
too...

Well, OTOH that means that realtime tasks can now interfere with
interrupt memory allocations...

Anyway, I guess this is not terribly important...
									Pavel
-- 
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blog.html
