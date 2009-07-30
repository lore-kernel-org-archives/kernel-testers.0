From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #13666] WARNING: at mm/page_alloc.c:1743 __alloc_pages_nodemask
Date: Thu, 30 Jul 2009 22:46:17 +0200
Message-ID: <200907302246.17742.rjw@sisk.pl>
References: <Jya1GruKQpD.A.16.2GObKB@chimera> <200907280021.26320.rjw@sisk.pl> <alpine.DEB.2.00.0907300021330.7540@chino.kir.corp.google.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.DEB.2.00.0907300021330.7540-X6Q0R45D7oAcqpCFd4KODRPsWskHk0ljAL8bYrjMMd8@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Thomas Meyer <thomas-VsYtu1Qij5c@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>

On Thursday 30 July 2009, David Rientjes wrote:
> On Tue, 28 Jul 2009, Rafael J. Wysocki wrote:
> 
> > > This is fixed in mmotm with the following patches, waiting for Andrew's 
> > > push to Linus:
> > > 
> > > 	page-allocator-allow-too-high-order-warning-messages-to-be-suppressed-with-__gfp_nowarn.patch
> > > 	net-dccp-suppress-warning-about-large-allocations-from-dccp.patch
> > 
> > Thanks, updated.
> > 
> 
> These patches have made it to Linus' tree, so this issue is resolved.

Thanks, bug closed.

Rafael
