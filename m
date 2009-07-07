From: list@phuk.ath.cx
Subject: Re: [Bug #13624] usb: wrong autosuspend initialization
Date: Tue, 07 Jul 2009 02:22:04 +0200
Message-ID: <4A52952C.1060006@phuk.ath.cx>
References: <tSdKBEwEOhE.A.2wF.s_oUKB@chimera> <bXZeuxPQAWE.A.NAH.HApUKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1760805AbZGGAbq@vger.kernel.org>
In-Reply-To: <bXZeuxPQAWE.A.NAH.HApUKB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Alan Stern <stern@rowland.harvard.edu>

I think this should be considered a regression, at least until 
laptop_mode has been fixed to deal with it. I've reported it to their 
mailing list, but it seems somebody has to come up with a patch (I won't 
be able to look into it before mid-August).

Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.29 and 2.6.30.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.29 and 2.6.30.  Please verify if it still should
> be listed and let me know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13624
> Subject		: usb: wrong autosuspend initialization
> Submitter	:  <list@phuk.ath.cx>
> Date		: 2009-06-25 18:18 (12 days old)
> 
> 
