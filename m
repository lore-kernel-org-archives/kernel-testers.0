From: Johannes Stezenbach <js@sig21.net>
Subject: Re: [Bug #13644] hibernation/swsusp lockup due to acpi-cpufreq
Date: Thu, 6 Aug 2009 16:49:38 +0200
Message-ID: <20090806144938.GA6817@sig21.net>
References: <upey9ZSfnaF.A.-oE.rpgdKB@chimera>
 <7ixSg7D88bK.A.i2F.UqgdKB@chimera>
Mime-Version: 1.0
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1755360AbZHFOtr@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <7ixSg7D88bK.A.i2F.UqgdKB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>

On Sun, Aug 02, 2009 at 09:09:32PM +0200, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.29 and 2.6.30.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.29 and 2.6.30.  Please verify if it still should
> be listed and let me know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13644
> Subject		: hibernation/swsusp lockup due to acpi-cpufreq
> Submitter	: Johannes Stezenbach <js@sig21.net>
> Date		: 2009-06-16 01:27 (48 days old)
> References	: http://lkml.org/lkml/2009/6/15/630
> 		  http://lkml.org/lkml/2009/6/29/504
> Handled-By	: Rafael J. Wysocki <rjw@sisk.pl>

This issue is fixed in linux-2.6.31-rc5-246-g90bc1a6,
I'm guessing due to

 commit 4bc5d34135039566b8d6efa2de7515b2be505da8
 Author: Dave Jones <davej@redhat.com>
 Date:   Tue Aug 4 14:03:25 2009 -0400

    [CPUFREQ] Make cpufreq suspend code conditional on powerpc.


Thanks,
Johannes
