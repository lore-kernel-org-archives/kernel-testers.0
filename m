From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: Re: [Bug #14266] regression in page writeback
Date: Mon, 12 Oct 2009 23:34:37 +0200
Message-ID: <200910122334.37092.rjw@sisk.pl>
References: <56acieJJ2fF.A.nEB.Hzl0KB@chimera> <L6tb-VyKHZK.A.riC.kzl0KB@chimera> <20091012010235.GA30378@sli10-desk.sh.intel.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S933223AbZJLVde@vger.kernel.org>
In-Reply-To: <20091012010235.GA30378@sli10-desk.sh.intel.com>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Shaohua Li <shaohua.li@intel.com>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Chris Mason <chris.mason@oracle.com>, Christoph Hellwig <hch@infradead.org>, Dave Chinner <david@fromorbit.com>, Linus Torvalds <torvalds@linux-foundation.org>, Peter Zijlstra <a.p.zijlstra@chello.nl>, Richard Kennedy <richard@rsk.demon.co.uk>, Theodore Tso <tytso@mit.edu>, "Wu, Fengguang" <fengguang.wu@intel.com>

On Monday 12 October 2009, Shaohua Li wrote:
> On Mon, Oct 12, 2009 at 07:01:09AM +0800, Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a report
> > of regressions introduced between 2.6.30 and 2.6.31.
> > 
> > The following bug entry is on the current list of known regressions
> > introduced between 2.6.30 and 2.6.31.  Please verify if it still should
> > be listed and let me know (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14266
> > Subject		: regression in page writeback
> > Submitter	: Shaohua Li <shaohua.li@intel.com>
> > Date		: 2009-09-22 5:49 (20 days old)
> > First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=d7831a0bdf06b9f722b947bb0c205ff7d77cebd8
> > References	: http://marc.info/?l=linux-kernel&m=125359858117176&w=4
> > Handled-By	: Wu Fengguang <fengguang.wu@intel.com>
> The regression is disappeared in latest git tree

Thanks, closing.

Rafael
