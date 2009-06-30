From: Arnaldo Carvalho de Melo <acme-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #13666] WARNING: at mm/page_alloc.c:1743
	__alloc_pages_nodemask
Date: Tue, 30 Jun 2009 10:58:51 -0300
Message-ID: <20090630135851.GA12663@ghostprotocols.net>
References: <ij4ZQY4URcP.A.F3B.vIASKB@chimera> <6JJ2m5kyucK.A.cBC.0IASKB@chimera> <alpine.DEB.2.00.0906291703430.17663@chino.kir.corp.google.com> <20090629.191655.193712233.davem@davemloft.net>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20090629.191655.193712233.davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Cc: rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, thomas-VsYtu1Qij5c@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, dccp-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

Em Mon, Jun 29, 2009 at 07:16:55PM -0700, David Miller escreveu:
> From: David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
> Date: Mon, 29 Jun 2009 17:06:42 -0700 (PDT)
> 
> > On Mon, 29 Jun 2009, Rafael J. Wysocki wrote:
> > 
> >> This message has been generated automatically as a part of a report
> >> of recent regressions.
> >> 
> >> The following bug entry is on the current list of known regressions
> >> from 2.6.30.  Please verify if it still should be listed and let me know
> >> (either way).
> >> 
> >> 
> >> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13666
> >> Subject		: WARNING: at mm/page_alloc.c:1743 __alloc_pages_nodemask
> >> Submitter	: Thomas Meyer <thomas-VsYtu1Qij5c@public.gmane.org>
> >> Date		: 2009-06-27 16:15 (2 days old)
> >> References	: http://lkml.org/lkml/2009/6/27/75
> >> 
> > 
> > dccp_init() is trying to allocate a goal that causes the order in 
> > __get_free_pages() to be >= MAX_ORDER.  
> > 
> > Arnaldo, can we cap ehash_order and bhash_order at MAX_ORDER - 1?
> 
> There was a patch going arond for this already.

http://patchwork.kernel.org/patch/31784/

- Arnaldo
