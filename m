From: Wu Fengguang <fengguang.wu@intel.com>
Subject: Re: [Bug #13726] fio sync read 4k block size 35% regression
Date: Mon, 13 Jul 2009 15:27:01 +0800
Message-ID: <20090713072701.GA11630@localhost>
References: <35kKlbXMqWN.A.RXD.D0oUKB@chimera> <dWkuWjWDsSB.A.lME.S0oUKB@chimera> <1246946802.2560.532.camel@ymzhang> <20090710063730.GA23814@localhost> <1247211714.2560.546.camel@ymzhang> <20090710081736.GA27471@localhost> <1247453490.2560.574.camel@ymzhang>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1754184AbZGMH1u@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <1247453490.2560.574.camel@ymzhang>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: "Zhang, Yanmin" <yanmin_zhang@linux.intel.com>
Cc: "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>

On Mon, Jul 13, 2009 at 10:51:30AM +0800, Zhang, Yanmin wrote:
> On Fri, 2009-07-10 at 16:17 +0800, Wu Fengguang wrote:
> > On Fri, Jul 10, 2009 at 03:41:54PM +0800, Zhang, Yanmin wrote:
> > > On Fri, 2009-07-10 at 14:37 +0800, Wu Fengguang wrote:
> > > > On Tue, Jul 07, 2009 at 02:06:42PM +0800, Zhang, Yanmin wrote:
> > > > > On Tue, 2009-07-07 at 02:01 +0200, Rafael J. Wysocki wrote:
> > > > > > This message has been generated automatically as a part of =
a report
> > > > > > of recent regressions.
> > > > > >=20
> > > > > > The following bug entry is on the current list of known reg=
ressions
> > > > > > from 2.6.30.  Please verify if it still should be listed an=
d let me know
> > > > > > (either way).
> > > > > >=20
> > > > > >=20
> > > > > > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D13=
726
> > > > > > Subject		: fio sync read 4k block size 35% regression
> > > > > > Submitter	: Zhang, Yanmin <yanmin_zhang@linux.intel.com>
> > > > > > Date		: 2009-07-01 11:25 (6 days old)
> > > > > > First-Bad-Commit: http://git.kernel.org/?p=3Dlinux/kernel/g=
it/torvalds/linux-2.6.git;a=3Dcommit;h=3D51daa88ebd8e0d437289f589af29d4=
b39379ea76
> > > > > > References	: http://lkml.org/lkml/2009/6/30/679
> > > > > > Handled-By	: Wu Fengguang <fengguang.wu@intel.com>
> > > > > Fengguang,
> > > > >=20
> > > > > I'm still working on it now. The new testing against 2.6.31-r=
c2 is ongoing.
> > > > > fio sync/mmap read has new behavior. I did collect some data.=
 But suddenly
> > > > > with new created data, the fio_sync_read_4k regression disapp=
eared, while
> > > >=20
> > > > Do you mean the fio_sync_read_4k regression disappeared because=
 we are
> > > > collecting data with lots of printks?
> > > No. I recreated the data and the regression disappeared.
> >=20
> > OK. It's because you recreated the files, instead of upgrading to -=
rc2?
> Yes.
>=20
> >=20
> > > >=20
> > > > > fio_mmap_read is still there. Originally, the testing and bis=
ect were stable.
> > > > > Let me check what happens firstly.
> > > >=20
> > > > Thanks! What's your fio_mmap_read job file and the readahead tr=
aces?
> > > I dumped trace data of fio and found the sync read isn't really s=
equential. I
> > > create many processes and every process could read a group of fil=
es. The trace
> > > shows fio reads a record of a file, then switch to another file t=
o read. My
> > > original assumption is a process reads the complete file sequenti=
ally and then
> > > read the 2nd file. Now I upgrade fio the latest version and add p=
arameter
> > > file_service_type=3Drandom:4000000 to rerun all testing.
> >=20
> > However you organize the workload, it is a regression. If you mean
> > "this workload is expected to create regressions", then let's impro=
ve
> > the algorithm to cover that workload?
> Thanks Fengguang. You work carefully and be ready to resolve any regr=
ession.
>=20
> When creating the workloads, I try to simulate _RealUsageModels_. For=
 example,
> fio_mmap_sync_read and fio_sync_read are to simulate ftp/web server a=
nd media
> player to =EF=BB=BFdownload big files. Such workloads mostly read fil=
es sequentially, not
> interspersally among many files. I also have other workloads, such li=
ke

Yes, file servers mostly read files sequentially.  But they do not
necessarily spawn one thread/process for each client (eg. lighttpd).
So you are testing some real workloads :)

> fio_mmap_rand_read/write simulating small/medium databases, which nee=
d IO
> interspersally among a coulpe of files.

Hmm, it seems that both regressions have something to do with
"one process accessing several files".

> As for this report, my original testing reads files =EF=BB=BFinterspe=
rsally. It's hard to
> find the usage models. In other hand, sometimes a method to improve o=
ne workload
> might hurt other workloads. So let's focus on good workloads.
>=20
> With the latest version of fio and new parameters, I found some other=
 regressions.
> I will check them and report if necessary.
>=20
> >=20
> > In your previous workload, what's the exact read pattern for any
> > single file over time?
> Sequential read, but read a block (4k64k/128k), then switch to next f=
ile to read
> another block. As for single file, read sequentially.
> If there are 3 files:
> 1) read 1st block of f1; then read 1st block of f2; then f3;
> 2) read 2nd block of f1;=EF=BB=BF then read 2nd block of f2; then f3;
> 3) ...

In this case,
- one process process may issue IO for several files
  aka. random seeking
- several processes may issue IO for the same file
  aka. cooperative processes
The above IO patterns may well confuse the underlying CFQ io scheduler.

Would you please try rerun the test with

for param in /sys/block/sd?/queue/iosched/slice_idle
do
        echo 0 > $param
done

> Such read scenario isn't good. I created it incorrectly because I mis=
understood
> some parameters of fio.
>=20
> Pls. close the report.

No, you created a very good test scheme!  Let's fix this regression :)

Thanks,
=46engguang
