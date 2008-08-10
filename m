From: Russell King - ARM Linux <linux-lFZ/pmaqli7XmaaqVzeoHQ@public.gmane.org>
Subject: Re: [Bug #11204] Commit 76a2a6ee8a0660a29127f05989ac59ae1ce865fa breaks PXA270 (at least)?
Date: Sun, 10 Aug 2008 09:30:53 +0100
Message-ID: <20080810083052.GB6607@flint.arm.linux.org.uk>
References: <VYYCiQF4qDI.A.BPH.KCjnIB@albercik> <cX_-nNkxKaF.A.z-C.cEjnIB@albercik>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=arm.linux.org.uk; s=caramon; h=Date:From:To:Cc:Subject:
	Message-ID:References:Mime-Version:Content-Type:In-Reply-To:
	Sender; bh=AJRMDPRicLDJlpemGOcRG2cR/7Qd4DlG1mC0t7OFRoA=; b=LANYh
	zuroreJhFqmfa4fwxrQceeNdypKCegJXS28DRTKqJRGTI2EiiF4rfp7FqLr71U80
	/EqO9/9PQel70TJ94ATGYdnVwqrT9cPocHoAe4NbmV9WA+NNF1fP6jCjguhSWCEx
	OfD/Pn1JiIjo9Zv0PxDYVkJ6vOQK3Jf+DwfieY=
Content-Disposition: inline
In-Reply-To: <cX_-nNkxKaF.A.z-C.cEjnIB@albercik>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Bill Gatliff <bgat-uPd5UNENI//N9NzbbXoYwQ@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>

On Sun, Aug 10, 2008 at 12:43:50AM +0200, Rafael J. Wysocki wrote:
> The following bug entry is on the current list of known regressions
> from 2.6.26.  Please verify if it still should be listed and let me know
> (either way).

Well, in theory we're waiting for Bill Gatliff to do some testing
last Monday/Tuesday of the proposed fix.

> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11204
> Subject		: Commit 76a2a6ee8a0660a29127f05989ac59ae1ce865fa breaks PXA270 (at least)?
> Submitter	: Russell King - ARM Linux <linux-lFZ/pmaqli7XmaaqVzeoHQ@public.gmane.org>
> Date		: 2008-07-29 22:31 (12 days old)
> References	: http://marc.info/?l=linux-kernel&m=121737075314966&w=4
> Handled-By	: Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>
> Patch		: http://marc.info/?l=linux-kernel&m=121754090926333&w=4
