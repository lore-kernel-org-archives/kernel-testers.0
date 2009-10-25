From: Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>
Subject: Re: [Bug #14141] order 2 page allocation failures in iwlagn
Date: Sun, 25 Oct 2009 19:54:06 +0100
Message-ID: <200910251954.11716.elendil@planet.nl>
References: <3onW63eFtRF.A.xXH.oMTxKB@chimera> <20091019140151.GC9036@csn.ul.ie> <20091019161815.GA11487@think>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20091019161815.GA11487@think>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Chris Mason <chris.mason-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
Cc: Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>, David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>, KOSAKI Motohiro <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>, Reinette Chatre <reinette.chatre-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Bartlomiej Zolnierkiewicz <bzolnier-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Karol Lewandowski <karol.k.lewandowski-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Mohamed Abbas <mohamed.abbas-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Jens Axboe <jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>, "John W. Linville" <linville-2XuSBdqkA4R54TAoqtyWWQ@public.gmane.org>, linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org

Sorry for the delayed reply.

On Monday 19 October 2009, Chris Mason wrote:
> On Mon, Oct 19, 2009 at 03:01:52PM +0100, Mel Gorman wrote:
> > > During the 2nd phase I see the first SKB allocation errors with a
> > > music skip between reading commits 95.000 and 110.000.
> > > About commit 115.000 there is a very long pause during which the
> > > counter does not increase, music stops and the desktop freezes
> > > completely. The first 30 seconds of that freeze there is only ver=
y
> > > low disk activity (which seems strange);
> >
> > I'm just going to have to depend on Jens here. Jens, the
> > congestion_wait() is on BLK_RW_ASYNC after the commit. Reclaim usua=
lly
> > writes pages asynchronously but lumpy reclaim actually waits of pag=
es
> > to write out synchronously so it's not always async.
>
> Waiting doesn't make it synchronous from the elevator point of view ;=
)
> If you're using WB_SYNC_NONE, it's a async write. =A0WB_SYNC_ALL make=
s it
> a sync write. =A0I only see WB_SYNC_NONE in vmscan.c, so we should be
> using the async congestion wait. =A0(the exception is xfs which alway=
s
> does async writes).
>
> But I'm honestly not 100% sure. =A0Looking back through the emails, t=
he
> test case is doing IO on top of a whole lot of things on top of
> dm-crypt? =A0I just tried to figure out if dm-crypt is turning the as=
ync
> IO into sync IOs, but didn't quite make sense of it.
>
> Could you also please include which filesystems were being abused dur=
ing
> the test and how? =A0Reading through the emails, I think you've got:
>
> gitk being run 3 times on some FS (NFS?)

gitk is run on an ext3 logical volume in a volume group that's on a LUK=
S=20
encrypted partition of the local hard disk.

So it's: SATA harddisk -> dm-crypt (dmsetup) -> LVM (lvm2) -> ext3

> streaming reads on NFS

Correct. My music share is a remote (nfs4) read-only mounted ext3=20
partition.

> swap on dm-crypt

Correct. Swap is another logical volume in the same volume group as=20
mentioned above.

So kcrypt gets to (de)encrypt both the gitk data *and* any swapping cau=
sed=20
by that [1].

> If other filesystems are being used, please correct me. =A0Also pleas=
e
> include if they are on crypto or straight block device.

All my file systems are ext3. Nothing newfangled or exotic ;-)
There are some bind mounts involved, but I expect that's transparent.

Cheers,
=46JP

[1] I've plans to move some of my data outside the encrypted volume, bu=
t=20
currently everything except /boot is in the encrypted VG.
