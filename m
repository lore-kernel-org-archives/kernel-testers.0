From: Lachlan McIlroy <lmcilroy-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Subject: Re: 2.6.30-rc6: BUG at fs/xfs/support/debug.c:109!
Date: Wed, 1 Jul 2009 21:52:36 -0400 (EDT)
Message-ID: <584076313.830951246499556455.JavaMail.root@zmail05.collab.prod.int.phx2.redhat.com>
References: <824092896.830901246499419777.JavaMail.root@zmail05.collab.prod.int.phx2.redhat.com>
Reply-To: Lachlan McIlroy <lmcilroy-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <824092896.830901246499419777.JavaMail.root-rwXUz/BPrj9+R5eDjrG6zsCp5Q1pQRjfhaY/URYTgi6ny3qCrzbmXA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, xfs-VZNHf3L845pBDgjK7y7TUQ@public.gmane.org, Dave Chinner <david-FqsqvQoI3Ljby3iVrkZq2A@public.gmane.org>

Alexander,

Are you running with this fix?

http://git.kernel.org/?p=3Dlinux/kernel/git/stable/linux-2.6.29.y.git;a=
=3Dcommitdiff;h=3Dd415867e0abc35e3b2f0d4196e98c339d6fe29a2

I've seen this assertion before and the above patch fixed it
for me.  Hmmm, looks like you're running a recent kernel so
you should have this fix - maybe the fix wasn't quite right.

Lachlan


----- "Alexander Beregalov" <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:

> 2009/6/5 Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>:
> > 2009/6/4 Dave Chinner <david-FqsqvQoI3Ljby3iVrkZq2A@public.gmane.org>:
> >> On Mon, Jun 01, 2009 at 07:22:56PM +0400, Alexander Beregalov
> wrote:
> >>> Hi
> >>>
> >>> Assertion failed: *nmap >=3D 1, file: fs/xfs/xfs_bmap.c, line: 48=
46
> >> .....
> >>> Call Trace:
> >>> =C2=A0[<ffffffff803d6bad>] xfs_bmapi+0xad/0x1ad0
> >>> =C2=A0[<ffffffff803ee5c0>] xfs_dir2_leaf_getdents+0x640/0x7b0
> >>> =C2=A0[<ffffffff803e975c>] xfs_readdir+0x12c/0x140
> >>> =C2=A0[<ffffffff80430b57>] xfs_file_readdir+0x47/0x70
> >>> =C2=A0[<ffffffff802ec500>] vfs_readdir+0xd0/0xf0
> >>> =C2=A0[<ffffffff802ec6b6>] sys_getdents+0x96/0x110
> >>> =C2=A0[<ffffffff8020ba6b>] system_call_fastpath+0x16/0x1b
> >>
> >> I'd say this indicates a corrupted directory. =C2=A0Can you run
> >> 'xfs_repair -n' over the filesystem and see if it finds a bad
> >> directory?
>=20
> Still cannot fix the filesystem. After repairing all corruptions from
> LiveCD it still fails on the same workload.
>=20
> Do you need metadump or anything else?
>=20
> _______________________________________________
> xfs mailing list
> xfs-VZNHf3L845pBDgjK7y7TUQ@public.gmane.org
> http://oss.sgi.com/mailman/listinfo/xfs
