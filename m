From: David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #13666] WARNING: at mm/page_alloc.c:1743
 __alloc_pages_nodemask
Date: Mon, 6 Jul 2009 21:23:03 -0700 (PDT)
Message-ID: <alpine.DEB.2.00.0907062101330.31794@chino.kir.corp.google.com>
References: <35kKlbXMqWN.A.RXD.D0oUKB@chimera> <dWkuWjWDsSB.A.iyE.f0oUKB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=google.com; s=beta;
	t=1246940592; bh=C6xQk3d2aBNP5an45DrZrdlvpy4=;
	h=DomainKey-Signature:Date:From:X-X-Sender:To:cc:Subject:
	 In-Reply-To:Message-ID:References:User-Agent:MIME-Version:
	 Content-Type:X-System-Of-Record; b=ORFJ+7JGi6VAHdoDCaoyggK5/qQaNAW
	G73rJvQ3euNDzigdxG6GHiK0vSbFXAu0KrWtU8D0A7QStlxFzjiMkAg==
In-Reply-To: <dWkuWjWDsSB.A.iyE.f0oUKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Thomas Meyer <thomas-VsYtu1Qij5c@public.gmane.org>, Arnaldo Carvalho de Melo <acme-f8uhVLnGfZaxAyOMLChx1axOck334EZe@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>

On Tue, 7 Jul 2009, Rafael J. Wysocki wrote:

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
> Date		: 2009-06-27 16:15 (10 days old)
> References	: http://lkml.org/lkml/2009/6/27/75
> 

This should be suppressed with the patchset proposed by Mel on linux-mm:

	http://marc.info/?l=linux-mm&m=124568542405734
	http://marc.info/?l=linux-mm&m=124568542605738
	http://marc.info/?l=linux-mm&m=124568542905750
	http://marc.info/?l=linux-mm&m=124568543305755

It doesn't appear that these are in linux-next, however.
