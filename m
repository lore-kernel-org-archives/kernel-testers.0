From: "Zhang, Yanmin" <yanmin_zhang-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>
Subject: Re: [Bug #13726] fio sync read 4k block size 35% regression
Date: Mon, 13 Jul 2009 10:51:30 +0800
Message-ID: <1247453490.2560.574.camel@ymzhang>
References: <35kKlbXMqWN.A.RXD.D0oUKB@chimera>
	 <dWkuWjWDsSB.A.lME.S0oUKB@chimera> <1246946802.2560.532.camel@ymzhang>
	 <20090710063730.GA23814@localhost> <1247211714.2560.546.camel@ymzhang>
	 <20090710081736.GA27471@localhost>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090710081736.GA27471@localhost>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: Wu Fengguang <fengguang.wu-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Fri, 2009-07-10 at 16:17 +0800, Wu Fengguang wrote:
> On Fri, Jul 10, 2009 at 03:41:54PM +0800, Zhang, Yanmin wrote:
> > On Fri, 2009-07-10 at 14:37 +0800, Wu Fengguang wrote:
> > > On Tue, Jul 07, 2009 at 02:06:42PM +0800, Zhang, Yanmin wrote:
> > > > On Tue, 2009-07-07 at 02:01 +0200, Rafael J. Wysocki wrote:
> > > > > This message has been generated automatically as a part of a =
report
> > > > > of recent regressions.
> > > > >=20
> > > > > The following bug entry is on the current list of known regre=
ssions
> > > > > from 2.6.30.  Please verify if it still should be listed and =
let me know
> > > > > (either way).
> > > > >=20
> > > > >=20
> > > > > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D1372=
6
> > > > > Subject		: fio sync read 4k block size 35% regression
> > > > > Submitter	: Zhang, Yanmin <yanmin_zhang-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>
> > > > > Date		: 2009-07-01 11:25 (6 days old)
> > > > > First-Bad-Commit: http://git.kernel.org/?p=3Dlinux/kernel/git=
/torvalds/linux-2.6.git;a=3Dcommit;h=3D51daa88ebd8e0d437289f589af29d4b3=
9379ea76
> > > > > References	: http://lkml.org/lkml/2009/6/30/679
> > > > > Handled-By	: Wu Fengguang <fengguang.wu-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
> > > > Fengguang,
> > > >=20
> > > > I'm still working on it now. The new testing against 2.6.31-rc2=
 is ongoing.
> > > > fio sync/mmap read has new behavior. I did collect some data. B=
ut suddenly
> > > > with new created data, the fio_sync_read_4k regression disappea=
red, while
> > >=20
> > > Do you mean the fio_sync_read_4k regression disappeared because w=
e are
> > > collecting data with lots of printks?
> > No. I recreated the data and the regression disappeared.
>=20
> OK. It's because you recreated the files, instead of upgrading to -rc=
2?
Yes.

>=20
> > >=20
> > > > fio_mmap_read is still there. Originally, the testing and bisec=
t were stable.
> > > > Let me check what happens firstly.
> > >=20
> > > Thanks! What's your fio_mmap_read job file and the readahead trac=
es?
> > I dumped trace data of fio and found the sync read isn't really seq=
uential. I
> > create many processes and every process could read a group of files=
=2E The trace
> > shows fio reads a record of a file, then switch to another file to =
read. My
> > original assumption is a process reads the complete file sequential=
ly and then
> > read the 2nd file. Now I upgrade fio the latest version and add par=
ameter
> > file_service_type=3Drandom:4000000 to rerun all testing.
>=20
> However you organize the workload, it is a regression. If you mean
> "this workload is expected to create regressions", then let's improve
> the algorithm to cover that workload?
Thanks Fengguang. You work carefully and be ready to resolve any regres=
sion.

When creating the workloads, I try to simulate _RealUsageModels_. For e=
xample,
fio_mmap_sync_read and fio_sync_read are to simulate ftp/web server and=
 media
player to =EF=BB=BFdownload big files. Such workloads mostly read files=
 sequentially, not
interspersally among many files. I also have other workloads, such like
fio_mmap_rand_read/write simulating small/medium databases, which need =
IO
interspersally among a coulpe of files.

As for this report, my original testing reads files =EF=BB=BFinterspers=
ally. It's hard to
find the usage models. In other hand, sometimes a method to improve one=
 workload
might hurt other workloads. So let's focus on good workloads.

With the latest version of fio and new parameters, I found some other r=
egressions.
I will check them and report if necessary.

>=20
> In your previous workload, what's the exact read pattern for any
> single file over time?
Sequential read, but read a block (4k64k/128k), then switch to next fil=
e to read
another block. As for single file, read sequentially.
If there are 3 files:
1) read 1st block of f1; then read 1st block of f2; then f3;
2) read 2nd block of f1;=EF=BB=BF then read 2nd block of f2; then f3;
3) ...

Such read scenario isn't good. I created it incorrectly because I misun=
derstood
some parameters of fio.

Pls. close the report.

yanmin

