From: Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>
Subject: Re: [Bug #13319] Page allocation failures with b43 and p54usb
Date: Mon, 29 Jun 2009 11:51:32 -0500
Message-ID: <4A48F114.1010702@lwfinger.net>
References: <etTXaRqGgAC.A.SaE.6iASKB@chimera> <5Hhc7UkUKEO.A.fNH.4kASKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; q=dns/txt; d=att.net; s=dkim01;
      i=larry.finger-fOdFMYwuEsI@public.gmane.org; a=rsa-sha256; c=relaxed/relaxed;
      t=1246294290; h=Content-Transfer-Encoding:Content-Type:
     In-Reply-To:References:Subject:CC:To:MIME-Version:From:Date:
     Message-ID; bh=aMxNBFeKOgX22HWxTrCWszKU6oQm6MnM/6gyjPC/cBo=; b=dsh
     19C8N5yeIxE/vEOVEhsZ5dk3xoP1RGUyA5WlXyBqo/Yysiler5mLecFwRIlLFADVDoy
     LOlw9RnyqFa4jybg==
In-Reply-To: <5Hhc7UkUKEO.A.fNH.4kASKB@chimera>
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
> Date		: 2009-04-29 21:01 (61 days old)
> References	: http://marc.info/?l=linux-kernel&m=124103897101088&w=4
> 		  http://lkml.org/lkml/2009/6/7/136
> Handled-By	: Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>

The cause of these failures has been determined. The wireless
subsystem frequently requests buffers of size 4096, but when SLUB
debugging is enabled and the debug info is added, the request becomes
of order 1 and memory becomes fragmented.

A controversial "fix" in which SLUB debugging was disabled for
allocations where adding such debugging info would increase the order
was discussed and tried. With a quick look at the commit list for
Linus's tree, I don't see that such a patch is available, but I will
be corrected if I missed it.

Larry
