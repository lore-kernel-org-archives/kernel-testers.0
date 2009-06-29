From: David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #13319] Page allocation failures with b43 and p54usb
Date: Mon, 29 Jun 2009 16:47:57 -0700 (PDT)
Message-ID: <alpine.DEB.2.00.0906291642520.17663@chino.kir.corp.google.com>
References: <etTXaRqGgAC.A.SaE.6iASKB@chimera> <5Hhc7UkUKEO.A.fNH.4kASKB@chimera> <4A48F114.1010702@lwfinger.net>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=google.com; s=beta;
	t=1246319282; bh=vmYSAFpvw7PhaTtP1SQRESMpsJE=;
	h=DomainKey-Signature:Date:From:X-X-Sender:To:cc:Subject:
	 In-Reply-To:Message-ID:References:User-Agent:MIME-Version:
	 Content-Type:X-System-Of-Record; b=eHpQpGm1MKaZz6mkdKOofP8j/nMB7qO
	VZAnCrbbHddJvCRuqMWUJ/pdz5hoL0EGCs6bGn86D2apx4qX+Zoj+hg==
In-Reply-To: <4A48F114.1010702-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>, Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>, Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>

On Mon, 29 Jun 2009, Larry Finger wrote:

> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13319
> > Subject		: Page allocation failures with b43 and p54usb
> > Submitter	: Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>
> > Date		: 2009-04-29 21:01 (61 days old)
> > References	: http://marc.info/?l=linux-kernel&m=124103897101088&w=4
> > 		  http://lkml.org/lkml/2009/6/7/136
> > Handled-By	: Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>
> 
> The cause of these failures has been determined. The wireless
> subsystem frequently requests buffers of size 4096, but when SLUB
> debugging is enabled and the debug info is added, the request becomes
> of order 1 and memory becomes fragmented.
> 
> A controversial "fix" in which SLUB debugging was disabled for
> allocations where adding such debugging info would increase the order
> was discussed and tried. With a quick look at the commit list for
> Linus's tree, I don't see that such a patch is available, but I will
> be corrected if I missed it.
> 

I'd disagree with disabling slub debugging by default for caches where 
oo_order(s->min) increases as the result of using it.  This particular 
page allocation failure is happening for, presumably, kmalloc-4096, and 
the system has 4K pages.  Disabling debugging for that cache (and any of 
its aliases) implicitly will lead to errors going undiagnosed as a result.
