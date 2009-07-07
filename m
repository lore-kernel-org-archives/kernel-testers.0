From: Rob Landley <rob@landley.net>
Subject: Re: [Bug #13668] Can't boot 2.6.30 powerpc kernel under qemu.
Date: Mon, 6 Jul 2009 21:49:34 -0500
Message-ID: <200907062149.35062.rob@landley.net>
References: <tSdKBEwEOhE.A.2wF.s_oUKB@chimera> <bXZeuxPQAWE.A.RDG.3_oUKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1756199AbZGGCtp@vger.kernel.org>
In-Reply-To: <bXZeuxPQAWE.A.RDG.3_oUKB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Benjamin Herrenschmidt <benh@kernel.crashing.org>, Jeremy Kerr <jk@ozlabs.org>

On Monday 06 July 2009 19:01:05 Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.29 and 2.6.30.
>
> The following bug entry is on the current list of known regressions
> introduced between 2.6.29 and 2.6.30.  Please verify if it still should
> be listed and let me know (either way).
>
>
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13668
> Subject		: Can't boot 2.6.30 powerpc kernel under qemu.
> Submitter	: Rob Landley <rob@landley.net>
> Date		: 2009-06-27 18:08 (10 days old)
> References	: http://lkml.org/lkml/2009/6/27/159

Resolved, it just required a configuration change.

Rob
-- 
Latency is more important than throughput. It's that simple. - Linus Torvalds
