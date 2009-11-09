From: Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH 2/3] page allocator: Do not allow interrupts to use
	ALLOC_HARDER
Date: Mon, 9 Nov 2009 10:11:28 +0000
Message-ID: <20091109101128.GB6657@csn.ul.ie>
References: <alpine.DEB.2.00.0910271411530.9183@chino.kir.corp.google.com> <20091031184054.GB1475@ucw.cz> <alpine.DEB.2.00.0910311248490.13829@chino.kir.corp.google.com> <20091031201158.GB29536@elf.ucw.cz> <4AECCF6A.4020206@redhat.com> <alpine.DEB.1.10.0911021139100.24535@V090114053VZO-1> <alpine.DEB.2.00.0911021249470.22525@chino.kir.corp.google.com> <alpine.DEB.1.10.0911031208150.21943@V090114053VZO-1> <alpine.DEB.2.00.0911031739380.1187@chino.kir.corp.google.com> <20091104090140.GA14694@elf.ucw.cz>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20091104090140.GA14694-I/5MKhXcvmPrBKCeMvbIDA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Pavel Machek <pavel-+ZI9xUNit7I@public.gmane.org>
Cc: David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>, Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Rik van Riel <riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, stable-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org, Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>, Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>, Sven Geggus <lists-+AJD3D7QEjjt/htJsj1pd9AswbaBtrod@public.gmane.org>, Karol Lewandowski <karol.k.lewandowski-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Tobias Oetiker <tobi-7K0TWYW2a3pyDzI6CaY1VQ@public.gmane.org>, KOSAKI Motohiro <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>, Stephan von Krawczynski <skraw-DcQCyzbjH0jQT0dZR+AlfA@public.gmane.org>, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On Wed, Nov 04, 2009 at 10:01:40AM +0100, Pavel Machek wrote:
> 
> > I hope we can move this to another thread if people would like to remove 
> > this exemption completely instead of talking about this trivial fix, which 
> > I doubt there's any objection to.
> 
> I'm arguing that this "trivial fix" is wrong, and that you should just
> remove those two lines.
> 
> If going into reserves from interrupts hurts, doing that from task
> context will hurt, too. "realtime" task should not be normally allowed
> to "hurt" the system like that.
> 									Pavel

As David points out, it has been the behaviour of the system for 4 years
and removing it should be made as a separate decision and not in the
guise of a fix. In the particular case causing concern, there are a lot
more allocations from interrupt due to network receive than there are
from the activities of tasks with a high priority.

-- 
Mel Gorman
Part-time Phd Student                          Linux Technology Center
University of Limerick                         IBM Dublin Software Lab
