From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Subject: Re: [Bug #13941] x86 Geode issue
Date: Sun, 16 Aug 2009 23:01:34 +0200
Message-ID: <20090816210134.GA14972@elte.hu>
References: <AuPdDySr74O.A.5LC.Pj1fKB@chimera> <200908131654.45227.rjw@sisk.pl> <11fae7c70908130800q7b4a5293t5c373613d736d74@mail.gmail.com> <200908132034.34951.rjw@sisk.pl> <11fae7c70908161217p33830075p783880315a31b2e5@mail.gmail.com> <20090816205706.GB3463@elte.hu>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20090816205706.GB3463-X9Un+BFzKDI@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: =?iso-8859-1?Q?Martin-=C9ric?= Racine <q-funk-X3B1VOXEql0@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Alexander Viro <viro-rfM+Q5joDG/XmaaqVzeoHQ@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>


* Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org> wrote:

>=20
> * Martin-=C9ric Racine <q-funk-X3B1VOXEql0@public.gmane.org> wrote:
>=20
> > On Thu, Aug 13, 2009 at 9:34 PM, Rafael J. Wysocki<rjw-KKrjLPT3xs0@public.gmane.org> wro=
te:
> > > On Thursday 13 August 2009, Martin-=C9ric Racine wrote:
> > >> On Thu, Aug 13, 2009 at 5:54 PM, Rafael J. Wysocki<rjw-KKrjLPT3xs0@public.gmane.org> =
wrote:
> > >> > On Thursday 13 August 2009, Martin-=C9ric Racine wrote:
> > >> >> 2009/8/13 Martin-=C9ric Racine <q-funk-X3B1VOXEql0@public.gmane.org>:
> > >> >> > On Thu, Aug 13, 2009 at 12:07 PM, Ingo Molnar<mingo-X9Un+BFzKDI@public.gmane.org=
> wrote:
> > >> >> >> * Martin-=C9ric Racine <q-funk-X3B1VOXEql0@public.gmane.org> wrote:
> > >> >> >>> Yes, this bug is still valid.
> > >> >> >>>
> > >> >> >>> Ubuntu kernel team member Leann Ogasawara and I are slowl=
y
> > >> >> >>> bisecting our way through the changes that took place sin=
ce 2.6.30
> > >> >> >>> to find the commit that introduced this regression. Pleas=
e stay
> > >> >> >>> tuned.
> > >> >> >>
> > >> >> >> hm, the only outright Geode related commit was:
> > >> >> >>
> > >> >> >> =A0d6c585a: x86: geode: Mark mfgpt irq IRQF_TIMER to preve=
nt resume failure
> > >> >> >>
> > >> >> >> the jpg at:
> > >> >> >>
> > >> >> >> =A0http://launchpadlibrarian.net/28892781/00002.jpg
> > >> >> >>
> > >> >> >> is very out of focus - but what i could decypher suggests =
a
> > >> >> >> pagefault crash in the VFS code, in generic_delete_inode()=
=2E
> > >> >>
> > >> >> This one might be a bit better:
> > >> >>
> > >> >> http://launchpadlibrarian.net/30267494/2.6.31-5.24.jpg
> > >
> > > Hmm. =A0This looks like a sysfs oops to my untrained eye.
> >=20
> > The bisect I did with Leann Ogasawara has narrowed the kernel panic
> > down to the following:
> >=20
> > commit f19d4a8fa6f9b6ccf54df0971c97ffcaa390b7b0
> > Author: Al Viro <viro-RmSDqhL/yNMiFSDQTTA3OLVCufUGDwFn@public.gmane.org>
> > Date: Mon Jun 8 19:50:45 2009 -0400
> >=20
> >     add caching of ACLs in struct inode
> >=20
> >     No helpers, no conversions yet.
> >=20
> >     Signed-off-by: Al Viro <viro-RmSDqhL/yNMiFSDQTTA3OLVCufUGDwFn@public.gmane.org>
>=20
> Weird. If the functions do what their name suggests, i.e. if=20
> inode_init_always() is an always called constructor and if=20
> destroy_inode() is an unconditional destructor then this patch=20
> should have no functional effect on the VFS side.
>=20
> It increases the size of struct inode, so if you have some old=20
> module (built to an older version of fs.h) still around it might=20
> corrupt your inode data structure.
>=20
> Or the size change might trigger some dormant bug. It might move a=20
> critical inode right into the path of a pre-existing (but not=20
> visibly crash-triggering) data corruption.
>=20
> The possibilities on the 'weird bug' front are endless - the=20
> crash/oops itself should be turned into text, posted here and=20
> analyzed.

Btw., before you invest any time into the 'weird crash' theory, i'd=20
suggest to double check the bisection result:

  f19d4a8fa6f9b6ccf54df0971c97ffcaa390b7b0    crashes
  f19d4a8fa6f9b6ccf54df0971c97ffcaa390b7b0~1  boots fine

You can save yourself from a lot of head scratching that way - the=20
bisection result looks weird. (albeit plausible - a VFS crash points=20
to a VFS commit.)

_Maybe_ the bisection is just off a little bit (there was a=20
bisection mistake in the last few steps), and the real buggy commit=20
is one of the nearby ones:

1cbd20d: switch xfs to generic acl caching helpers
073aaa1: helpers for acl caching + switch to those
06b16e9: switch shmem to inode->i_acl
281eede: switch reiserfs to inode->i_acl
7a77b15: switch reiserfs to usual conventions for caching ACLs
e68888b: reiserfs: minimal fix for ACL caching
d441b1c: switch nilfs2 to inode->i_acl
5affd88: switch btrfs to inode->i_acl
290c263: switch jffs2 to inode->i_acl
05fc079: switch jfs to inode->i_acl
d4bfe2f: switch ext4 to inode->i_acl
6582a0e: switch ext3 to inode->i_acl
5e78b43: switch ext2 to inode->i_acl
f19d4a8: add caching of ACLs in struct inode
3e63cbb: fs: Add new pre-allocation ioctls to vfs for compatibility wit=
h legacy xfs ioctls
01c0319: cleanup __writeback_single_inode
f21f622: ... and the same for vfsmount id/mount group id
c63e09e: Make allocation of anon devices cheaper
7e325d3: update Documentation/filesystems/Locking
f6cc746: devpts: remove module-related code
3b22edc: VFS: Switch init_mount_tree() to use the new create_mnt_ns() h=
elper
654f562: vfs: fix nd->root leak in do_filp_open()
b5450d9: reiserfs: remove stray unlock_super in reiserfs_resize
c912e7a: ALSA: hda - Fix support for Samsung P50 with AD1986A codec

	Ingo
