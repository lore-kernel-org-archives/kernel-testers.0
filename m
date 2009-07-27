From: David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #13319] Page allocation failures with b43 and p54usb
Date: Sun, 26 Jul 2009 17:24:44 -0700 (PDT)
Message-ID: <alpine.DEB.2.00.0907261722140.21259@chino.kir.corp.google.com>
References: <DizPU9GBfHF.A.kgF.iWObKB@chimera> <H5-1lZIIeYK.A.Pi.BZObKB@chimera> <4A6CF220.7080605@lwfinger.net>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=google.com; s=beta;
	t=1248654294; bh=lC4n9TlHcV1auzqCxPapHGoVLaw=;
	h=DomainKey-Signature:Date:From:X-X-Sender:To:cc:Subject:
	 In-Reply-To:Message-ID:References:User-Agent:MIME-Version:
	 Content-Type:X-System-Of-Record; b=UzlE/Vno1gQgj0bMdYR4EpzHt2Qg0AE
	wsUAo/dfgQTjzAwReFyeHfSuF3h5M1OrmDxghseqSHcfFJUHD1l0hwQ==
In-Reply-To: <4A6CF220.7080605-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>, Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>

On Sun, 26 Jul 2009, Larry Finger wrote:

> Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a report
> > of regressions introduced between 2.6.29 and 2.6.30.
> > 
> > The following bug entry is on the current list of known regressions
> > introduced between 2.6.29 and 2.6.30.  Please verify if it still should
> > be listed and let me know (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13319
> > Subject		: Page allocation failures with b43 and p54usb
> > Submitter	: Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>
> > Date		: 2009-04-29 21:01 (89 days old)
> > References	: http://marc.info/?l=linux-kernel&m=124103897101088&w=4
> > 		  http://lkml.org/lkml/2009/6/7/136
> > Handled-By	: Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>
> 
> This bug was fixed by commit 781b2ba6eb5f22440afac9c79a89ebd6e3674a60
> entitled "SLUB: Out-of-memory diagnostics" by Pekka Enberg
> <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org> and dated Wed Jun 10 18:50:32 2009 +0300.
> 

Hmm, I'm remembering differently.  I thought the root problem here has 
only been fixed in Pekka's slab-2.6.git tree with "slub: add option to 
disable higher order debugging slabs" and isn't currently in Linus' tree.

> The fault occurred because when CONFIG_SLUB_DEBUG was set, many of the
> memory allocations for wireless buffers were increased from O(0) to
> O(1) causing memory fragmentation, and eventually there were no
> remaining O(1) fragments. This problem is unlikely to affect most
> users as none of the distos turn on the above debug option.
> 

It only happens when CONFIG_SLUB_DEBUG_ON is enabled for caches with 
sizes that increase as the result of the added metadata.
