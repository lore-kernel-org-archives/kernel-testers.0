From: Wu Fengguang <fengguang.wu-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #13726] fio sync read 4k block size 35% regression
Date: Fri, 10 Jul 2009 16:17:36 +0800
Message-ID: <20090710081736.GA27471@localhost>
References: <35kKlbXMqWN.A.RXD.D0oUKB@chimera> <dWkuWjWDsSB.A.lME.S0oUKB@chimera> <1246946802.2560.532.camel@ymzhang> <20090710063730.GA23814@localhost> <1247211714.2560.546.camel@ymzhang>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <1247211714.2560.546.camel@ymzhang>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Zhang, Yanmin" <yanmin_zhang-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Fri, Jul 10, 2009 at 03:41:54PM +0800, Zhang, Yanmin wrote:
> On Fri, 2009-07-10 at 14:37 +0800, Wu Fengguang wrote:
> > On Tue, Jul 07, 2009 at 02:06:42PM +0800, Zhang, Yanmin wrote:
> > > On Tue, 2009-07-07 at 02:01 +0200, Rafael J. Wysocki wrote:
> > > > This message has been generated automatically as a part of a report
> > > > of recent regressions.
> > > > 
> > > > The following bug entry is on the current list of known regressions
> > > > from 2.6.30.  Please verify if it still should be listed and let me know
> > > > (either way).
> > > > 
> > > > 
> > > > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13726
> > > > Subject		: fio sync read 4k block size 35% regression
> > > > Submitter	: Zhang, Yanmin <yanmin_zhang-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>
> > > > Date		: 2009-07-01 11:25 (6 days old)
> > > > First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=51daa88ebd8e0d437289f589af29d4b39379ea76
> > > > References	: http://lkml.org/lkml/2009/6/30/679
> > > > Handled-By	: Wu Fengguang <fengguang.wu-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
> > > Fengguang,
> > > 
> > > I'm still working on it now. The new testing against 2.6.31-rc2 is ongoing.
> > > fio sync/mmap read has new behavior. I did collect some data. But suddenly
> > > with new created data, the fio_sync_read_4k regression disappeared, while
> > 
> > Do you mean the fio_sync_read_4k regression disappeared because we are
> > collecting data with lots of printks?
> No. I recreated the data and the regression disappeared.

OK. It's because you recreated the files, instead of upgrading to -rc2?

> > 
> > > fio_mmap_read is still there. Originally, the testing and bisect were stable.
> > > Let me check what happens firstly.
> > 
> > Thanks! What's your fio_mmap_read job file and the readahead traces?
> I dumped trace data of fio and found the sync read isn't really sequential. I
> create many processes and every process could read a group of files. The trace
> shows fio reads a record of a file, then switch to another file to read. My
> original assumption is a process reads the complete file sequentially and then
> read the 2nd file. Now I upgrade fio the latest version and add parameter
> file_service_type=random:4000000 to rerun all testing.

However you organize the workload, it is a regression. If you mean
"this workload is expected to create regressions", then let's improve
the algorithm to cover that workload?

In your previous workload, what's the exact read pattern for any
single file over time?

Thanks,
Fengguang
