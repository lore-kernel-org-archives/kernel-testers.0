From: Dave Chinner <david@fromorbit.com>
Subject: Re: [Bug #16348] kswapd continuously active when doing IO
Date: Fri, 23 Jul 2010 23:45:25 +1000
Message-ID: <20100723134525.GC7362@dastard>
References: <wQMMFC59mnE.A.v-E.iUYSMB@chimera>
 <PRbv8sgxY6G.A.NWF.-UYSMB@chimera>
Mime-Version: 1.0
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <PRbv8sgxY6G.A.NWF.-UYSMB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Marius Tolzmann <tolzmann@molgen.mpg.de>

On Fri, Jul 23, 2010 at 02:15:54PM +0200, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.33 and 2.6.34.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.33 and 2.6.34.  Please verify if it still should
> be listed and let the tracking team know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=16348
> Subject		: kswapd continuously active when doing IO
> Submitter	: Marius Tolzmann <tolzmann@molgen.mpg.de>
> Date		: 2010-07-07 10:58 (17 days old)

The fix for this is already in 2.6.36-rc6.

Cheers,

Dave.
-- 
Dave Chinner
david@fromorbit.com
