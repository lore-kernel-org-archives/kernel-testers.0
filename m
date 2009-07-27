From: Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>
Subject: Re: [Bug #13319] Page allocation failures with b43 and p54usb
Date: Sun, 26 Jul 2009 19:17:36 -0500
Message-ID: <4A6CF220.7080605@lwfinger.net>
References: <DizPU9GBfHF.A.kgF.iWObKB@chimera> <H5-1lZIIeYK.A.Pi.BZObKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; q=dns/txt; d=att.net; s=dkim01;
      i=larry.finger-fOdFMYwuEsI@public.gmane.org; a=rsa-sha256; c=relaxed/relaxed;
      t=1248653832; h=Content-Transfer-Encoding:Content-Type:
     In-Reply-To:References:Subject:CC:To:MIME-Version:From:Date:
     Message-ID; bh=Cu0vfwJhfkHFHx68/7cGbhS505aXDbuizOyxu8Agz6Q=; b=qvP
     qf+h99uP+4YBH/sqzaAhw+ZZAM0B4QYH6OceDN48Z7Xfqac79oMPDhTa9sQMecI8Npk
     BdCrXOmvqHufW4Rw==
In-Reply-To: <H5-1lZIIeYK.A.Pi.BZObKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>

Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.29 and 2.6.30.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.29 and 2.6.30.  Please verify if it still should
> be listed and let me know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13319
> Subject		: Page allocation failures with b43 and p54usb
> Submitter	: Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>
> Date		: 2009-04-29 21:01 (89 days old)
> References	: http://marc.info/?l=linux-kernel&m=124103897101088&w=4
> 		  http://lkml.org/lkml/2009/6/7/136
> Handled-By	: Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>

This bug was fixed by commit 781b2ba6eb5f22440afac9c79a89ebd6e3674a60
entitled "SLUB: Out-of-memory diagnostics" by Pekka Enberg
<penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org> and dated Wed Jun 10 18:50:32 2009 +0300.

The fault occurred because when CONFIG_SLUB_DEBUG was set, many of the
memory allocations for wireless buffers were increased from O(0) to
O(1) causing memory fragmentation, and eventually there were no
remaining O(1) fragments. This problem is unlikely to affect most
users as none of the distos turn on the above debug option.

This bug should be marked "closed with patch".

Larry
