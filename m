From: David Rientjes <rientjes@google.com>
Subject: Re: [Bug #13666] WARNING: at mm/page_alloc.c:1743
 __alloc_pages_nodemask
Date: Sun, 26 Jul 2009 16:30:22 -0700 (PDT)
Message-ID: <alpine.DEB.2.00.0907261628180.17123@chino.kir.corp.google.com>
References: <Jya1GruKQpD.A.16.2GObKB@chimera> <3zAHs5O6maO.A.GwE.OIObKB@chimera>
Mime-Version: 1.0
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1754831AbZGZXab@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=google.com; s=beta;
	t=1248651027; bh=64riAyK+yhOHXEzkF41ZhgHcav8=;
	h=DomainKey-Signature:Date:From:X-X-Sender:To:cc:Subject:
	 In-Reply-To:Message-ID:References:User-Agent:MIME-Version:
	 Content-Type:X-System-Of-Record; b=JMi7kYUQ27T104KW3+RKQ1OTCEEIQn3
	hWRfvbii66cCH2ziI4uMZVa+VYEFtyZVrPHNyXWk5kI8WTTIlwiok6w==
In-Reply-To: <3zAHs5O6maO.A.GwE.OIObKB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Thomas Meyer <thomas@m3y3r.de>, Andrew Morton <akpm@linux-foundation.org>

On Sun, 26 Jul 2009, Rafael J. Wysocki wrote:

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
> Submitter	: Thomas Meyer <thomas@m3y3r.de>
> Date		: 2009-06-27 16:15 (30 days old)
> References	: http://lkml.org/lkml/2009/6/27/75
> 		  http://lkml.org/lkml/2009/7/7/6
> 

This is fixed in mmotm with the following patches, waiting for Andrew's 
push to Linus:

	page-allocator-allow-too-high-order-warning-messages-to-be-suppressed-with-__gfp_nowarn.patch
	net-dccp-suppress-warning-about-large-allocations-from-dccp.patch
