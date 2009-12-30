From: Ruud Linders <kernelml@xs4all.nl>
Subject: Re: [Bug #14910] Stable version 2.6.32.2 broke my KMS Radeon setup
Date: Wed, 30 Dec 2009 11:28:13 +0100
Message-ID: <4B3B2B3D.40204@xs4all.nl>
References: <LptzGUUXbTK.A.MSF.ymhOLB@chimera> <NJVdobuNFNK.A.oNH.TnhOLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1752559AbZL3K2Q@vger.kernel.org>
In-Reply-To: <NJVdobuNFNK.A.oNH.TnhOLB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>

On 12/29/2009 04:09 PM, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.32.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14910
> Subject		: Stable version 2.6.32.2 broke my KMS Radeon setup
> Submitter	: Ruud Linders <kernelml@xs4all.nl>
> Date		: 2009-12-20 12:02 (10 days old)
> References	: http://marc.info/?l=linux-kernel&m=126131105608871&w=4
> 
> 
> --
> To unsubscribe from this list: send the line "unsubscribe linux-kernel" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at  http://www.tux.org/lkml/

This one can be closed as it's not an 2.6.33 issue  (I'm running
2.6.33-rc1 with KMS just fine)

See also  http://patchwork.kernel.org/patch/69076/ for stable patch to
fix it in 2.6.32.3.


