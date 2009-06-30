From: David Rientjes <rientjes@google.com>
Subject: Re: [Bug #13648] nfsd: page allocation failure
Date: Mon, 29 Jun 2009 17:02:55 -0700 (PDT)
Message-ID: <alpine.DEB.2.00.0906291659550.17663@chino.kir.corp.google.com>
References: <etTXaRqGgAC.A.SaE.6iASKB@chimera> <5Hhc7UkUKEO.A.KGF.HjASKB@chimera>
Mime-Version: 1.0
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1759179AbZF3ADY@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=google.com; s=beta;
	t=1246320180; bh=3oSwHiMYEOSAl9iQAO8cxnN5Xe8=;
	h=DomainKey-Signature:Date:From:X-X-Sender:To:cc:Subject:
	 In-Reply-To:Message-ID:References:User-Agent:MIME-Version:
	 Content-Type:X-System-Of-Record; b=x6VEFydeE+6CKSoT0WC6S4mKj8DPS8n
	SahGPb97IAn/OH4pITqO4TXSxKKeNz0RyZf7WnTqrv2m0K0+2TdxbtQ==
In-Reply-To: <5Hhc7UkUKEO.A.KGF.HjASKB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Justin Piszcz <jpiszcz@lucidpixels.com>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, "Rafael J. Wysocki" <rjw@sisk.pl>, Rik van Riel <riel@redhat.com>

On Mon, 29 Jun 2009, Rafael J. Wysocki wrote:

> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.29 and 2.6.30.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.29 and 2.6.30.  Please verify if it still should
> be listed and let me know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13648
> Subject		: nfsd: page allocation failure
> Submitter	: Justin Piszcz <jpiszcz@lucidpixels.com>
> Date		: 2009-06-22 12:08 (7 days old)
> References	: http://lkml.org/lkml/2009/6/22/309
> 

I'd be interested to hear from Justin if reducing 
/proc/sys/vm/dirty_background_ratio as I earlier suggested helps.  

ZONE_NORMAL isn't much larger than ZONE_DMA32 on this machine and both 
lowmem zones have an abundance of free memory which suggests pdflush's 
ratio isn't being met to commence background writeout while at the same 
time ZONE_NORMAL is being depleted as the result of constant nfs 
GFP_ATOMIC allocations that cannot try direct reclaim.
