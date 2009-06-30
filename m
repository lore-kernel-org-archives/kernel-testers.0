From: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Subject: Re: [Bug #13666] WARNING: at mm/page_alloc.c:1743
 __alloc_pages_nodemask
Date: Mon, 29 Jun 2009 19:16:55 -0700 (PDT)
Message-ID: <20090629.191655.193712233.davem@davemloft.net>
References: <ij4ZQY4URcP.A.F3B.vIASKB@chimera>
	<6JJ2m5kyucK.A.cBC.0IASKB@chimera>
	<alpine.DEB.2.00.0906291703430.17663@chino.kir.corp.google.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.DEB.2.00.0906291703430.17663-X6Q0R45D7oAcqpCFd4KODRPsWskHk0ljAL8bYrjMMd8@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org
Cc: acme-f8uhVLnGfZaxAyOMLChx1axOck334EZe@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, thomas-VsYtu1Qij5c@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, dccp-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

From: David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Date: Mon, 29 Jun 2009 17:06:42 -0700 (PDT)

> On Mon, 29 Jun 2009, Rafael J. Wysocki wrote:
> 
>> This message has been generated automatically as a part of a report
>> of recent regressions.
>> 
>> The following bug entry is on the current list of known regressions
>> from 2.6.30.  Please verify if it still should be listed and let me know
>> (either way).
>> 
>> 
>> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13666
>> Subject		: WARNING: at mm/page_alloc.c:1743 __alloc_pages_nodemask
>> Submitter	: Thomas Meyer <thomas-VsYtu1Qij5c@public.gmane.org>
>> Date		: 2009-06-27 16:15 (2 days old)
>> References	: http://lkml.org/lkml/2009/6/27/75
>> 
> 
> dccp_init() is trying to allocate a goal that causes the order in 
> __get_free_pages() to be >= MAX_ORDER.  
> 
> Arnaldo, can we cap ehash_order and bhash_order at MAX_ORDER - 1?

There was a patch going arond for this already.
