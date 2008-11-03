From: Christoph Hellwig <hch-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>
Subject: Re: [Bug #11805] mounting XFS produces a segfault
Date: Mon, 3 Nov 2008 04:32:28 -0500
Message-ID: <20081103093228.GA3485@infradead.org>
References: <Sl8SUNhCbfL.A.O5H.yueDJB@chimera> <4xS1r6m15_B.A.m8.KveDJB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <4xS1r6m15_B.A.m8.KveDJB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Dave Chinner <dgc-sJ/iWh9BUns@public.gmane.org>, Tiago Maluta <maluta_tiago-/E1597aS9LRfJ/NunPodnw@public.gmane.org>

On Sun, Nov 02, 2008 at 05:49:36PM +0100, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.26 and 2.6.27.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.26 and 2.6.27.  Please verify if it still should
> be listed and let me know (either way).

The patch is in the XFS development tree.  Given that the maintainers
didn't manage to get it into the merge window it might make sense to
submit this fix individually.  Dave, what do you think about sending
this patch out directly to Linus?
