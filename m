From: Henrique de Moraes Holschuh <hmh-N3TV7GIv+o9fyO9Q7EP/yw@public.gmane.org>
Subject: Re: [Bug #14942] gkrellm no longer shows all the temperatures on
 thinkpad x60
Date: Tue, 29 Dec 2009 16:13:56 -0200
Message-ID: <20091229181356.GA30466@khazad-dum.debian.net>
References: <LptzGUUXbTK.A.MSF.ymhOLB@chimera>
 <NJVdobuNFNK.A.MHG.BnhOLB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=messagingengine.com; h=date:from:to:cc:subject:message-id:references:mime-version:content-type:in-reply-to; s=smtpout; bh=blF2P/kna+hPnabLhtKzhyTnvZo=; b=grRXsipECko0GUCYd/UMEcpBNwjV5Ds4euEBPs2M8ef5sUK2lkYzSf6I/JOm2rn0piMPnYB4wy2Ym2TosqFB5KyboqDnlrn2YR+Afyq6cLDr/M5oGWcibQCvs+BnX6FOCBzh9xspqPrWigt7PO3dMx6ovdjc1cXQjiDoVfGy9hA=
Content-Disposition: inline
In-Reply-To: <NJVdobuNFNK.A.MHG.BnhOLB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Pavel Machek <pavel-+ZI9xUNit7I@public.gmane.org>

On Tue, 29 Dec 2009, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.32.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14942
> Subject		: gkrellm no longer shows all the temperatures on thinkpad x60
> Submitter	: Pavel Machek <pavel-+ZI9xUNit7I@public.gmane.org>
> Date		: 2009-12-27 21:57 (3 days old)
> References	: http://marc.info/?l=linux-kernel&m=126195107005565&w=4
> Handled-By	: Henrique de Moraes Holschuh <hmh-N3TV7GIv+o9fyO9Q7EP/yw@public.gmane.org>

Patch already in acpi-test, waiting push to mainline.

-- 
  "One disk to rule them all, One disk to find them. One disk to bring
  them all and in the darkness grind them. In the Land of Redmond
  where the shadows lie." -- The Silicon Valley Tarot
  Henrique Holschuh
