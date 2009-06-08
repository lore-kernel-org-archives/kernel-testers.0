From: KAMEZAWA Hiroyuki <kamezawa.hiroyu-+CUm20s59erQFUHtdCDX3A@public.gmane.org>
Subject: Re: [Bug #13319] Page allocation failures with b43 and p54usb
Date: Mon, 8 Jun 2009 17:32:19 +0900
Message-ID: <20090608173219.0588af26.kamezawa.hiroyu@jp.fujitsu.com>
References: <bCxQpon4SCJ.A.RrF.yY7KKB@chimera>
	<D9VoutSOyXP.A.hvH.Ha7KKB@chimera>
	<4A2BBC30.2030300@lwfinger.net>
	<84144f020906070640rf5ab14nbf66d3ca7c97675f@mail.gmail.com>
	<4A2BCC6F.8090004@redhat.com>
	<84144f020906070732l31786156r5d9753a0cabfde79@mail.gmail.com>
	<4A2BEC4F.6020908@lwfinger.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <4A2BEC4F.6020908-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>
Cc: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>, Rik van Riel <riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, KOSAKI Motohiro <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>

On Sun, 07 Jun 2009 11:35:27 -0500
Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org> wrote:

> Pekka Enberg wrote:
> > On Sun, Jun 7, 2009 at 5:19 PM, Rik van Riel <riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org> wrote:
> >> That is a very strange trace.  The Mem-Info indicates
> >> that the system has more than enough memory free, and
> >> also enough memory in higher-order free blocks.
> >>
> >> This would indicate a bug somewhere in the page
> >> allocator - this memory should have been given to this
> >> allocation request.
> > 
> > Aha, I always have difficulties deciphering the traces. But lets
> > invite Mel to the party then!
> 
> I'm happy to see some action on this problem. As usual, I'm happy to
> test patches and/or provide diagnostic output.
> 
One question. 

Did your system fragmented in same way as to this
(see DMA32, 10052 of order-0 pages) in older kernel ? I think you can check
fragmentation status via /proc/buddyinfo.
=
kernel: Node 0 DMA: 3*4kB 3*8kB 5*16kB 2*32kB 4*64kB 1*128kB 2*256kB 0*512kB
1*1024kB 0*2048kB 0*4096kB = 2100kB
kernel: Node 0 DMA32: 10062*4kB 1*8kB 1*16kB 0*32kB 1*64kB 1*128kB 0*256kB
1*512kB 0*1024kB 0*2048kB 0*4096kB = 40976kB
==

Thanks,
-Kame

