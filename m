From: David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #13666] WARNING: at mm/page_alloc.c:1743
 __alloc_pages_nodemask
Date: Thu, 30 Jul 2009 00:21:54 -0700 (PDT)
Message-ID: <alpine.DEB.2.00.0907300021330.7540@chino.kir.corp.google.com>
References: <Jya1GruKQpD.A.16.2GObKB@chimera> <3zAHs5O6maO.A.GwE.OIObKB@chimera> <alpine.DEB.2.00.0907261628180.17123@chino.kir.corp.google.com> <200907280021.26320.rjw@sisk.pl>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=google.com; s=beta;
	t=1248938524; bh=WMRO05unKsJgHTHexHTADPOPXHw=;
	h=DomainKey-Signature:Date:From:X-X-Sender:To:cc:Subject:
	 In-Reply-To:Message-ID:References:User-Agent:MIME-Version:
	 Content-Type:X-System-Of-Record; b=PPNajSb/yqvAFQwmEaxkb6nNXtiqA7A
	Ud76XBrVLaVMvJYvI5cdFLaBcteEkitRR0IyudBdmC+TrVjjgOgJXsw==
In-Reply-To: <200907280021.26320.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Thomas Meyer <thomas-VsYtu1Qij5c@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>

On Tue, 28 Jul 2009, Rafael J. Wysocki wrote:

> > This is fixed in mmotm with the following patches, waiting for Andrew's 
> > push to Linus:
> > 
> > 	page-allocator-allow-too-high-order-warning-messages-to-be-suppressed-with-__gfp_nowarn.patch
> > 	net-dccp-suppress-warning-about-large-allocations-from-dccp.patch
> 
> Thanks, updated.
> 

These patches have made it to Linus' tree, so this issue is resolved.
