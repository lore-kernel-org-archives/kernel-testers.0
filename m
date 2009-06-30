From: David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #13666] WARNING: at mm/page_alloc.c:1743
 __alloc_pages_nodemask
Date: Mon, 29 Jun 2009 17:06:42 -0700 (PDT)
Message-ID: <alpine.DEB.2.00.0906291703430.17663@chino.kir.corp.google.com>
References: <ij4ZQY4URcP.A.F3B.vIASKB@chimera> <6JJ2m5kyucK.A.cBC.0IASKB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=google.com; s=beta;
	t=1246320409; bh=JYoMqsWa1XEy39fZ8yonABBt8P4=;
	h=DomainKey-Signature:Date:From:X-X-Sender:To:cc:Subject:
	 In-Reply-To:Message-ID:References:User-Agent:MIME-Version:
	 Content-Type:X-System-Of-Record; b=ovQkyNDWwI7fFE89hbDkTj1JI70+/zE
	eCq4hYrsKZGZiGPzYv2RmTwzXmF4qKykrJr4zJybw+DtlJvnzKf5pcQ==
In-Reply-To: <6JJ2m5kyucK.A.cBC.0IASKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Arnaldo Carvalho de Melo <acme-f8uhVLnGfZaxAyOMLChx1axOck334EZe@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Thomas Meyer <thomas-VsYtu1Qij5c@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, dccp-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On Mon, 29 Jun 2009, Rafael J. Wysocki wrote:

> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.30.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13666
> Subject		: WARNING: at mm/page_alloc.c:1743 __alloc_pages_nodemask
> Submitter	: Thomas Meyer <thomas-VsYtu1Qij5c@public.gmane.org>
> Date		: 2009-06-27 16:15 (2 days old)
> References	: http://lkml.org/lkml/2009/6/27/75
> 

dccp_init() is trying to allocate a goal that causes the order in 
__get_free_pages() to be >= MAX_ORDER.  

Arnaldo, can we cap ehash_order and bhash_order at MAX_ORDER - 1?
