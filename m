From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #13941] x86 Geode issue
Date: Thu, 13 Aug 2009 16:54:45 +0200
Message-ID: <200908131654.45227.rjw@sisk.pl>
References: <AuPdDySr74O.A.5LC.Pj1fKB@chimera> <11fae7c70908130244k3f20954ewa23c5a57fbd60410@mail.gmail.com> <11fae7c70908130340w37782c04m861d2f429d639a9e@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <11fae7c70908130340w37782c04m861d2f429d639a9e-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="utf-8"
To: q-funk-X3B1VOXEql0@public.gmane.org
Cc: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Alexander Viro <viro-rfM+Q5joDG/XmaaqVzeoHQ@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Thursday 13 August 2009, Martin-=C3=89ric Racine wrote:
> 2009/8/13 Martin-=C3=89ric Racine <q-funk-X3B1VOXEql0@public.gmane.org>:
> > On Thu, Aug 13, 2009 at 12:07 PM, Ingo Molnar<mingo-X9Un+BFzKDI@public.gmane.org> wrote:
> >> * Martin-=C3=89ric Racine <q-funk-X3B1VOXEql0@public.gmane.org> wrote:
> >>> Yes, this bug is still valid.
> >>>
> >>> Ubuntu kernel team member Leann Ogasawara and I are slowly
> >>> bisecting our way through the changes that took place since 2.6.3=
0
> >>> to find the commit that introduced this regression. Please stay
> >>> tuned.
> >>
> >> hm, the only outright Geode related commit was:
> >>
> >>  d6c585a: x86: geode: Mark mfgpt irq IRQF_TIMER to prevent resume =
failure
> >>
> >> the jpg at:
> >>
> >>  http://launchpadlibrarian.net/28892781/00002.jpg
> >>
> >> is very out of focus - but what i could decypher suggests a
> >> pagefault crash in the VFS code, in generic_delete_inode().
>=20
> This one might be a bit better:
>=20
> http://launchpadlibrarian.net/30267494/2.6.31-5.24.jpg
>=20
> >> Which could be a VFS bug, or a filesystem bug, or some unrelated
> >> memory corruption hitting the inode data structure.
> >
> > It could indeed be many things.
> >
> > I've been trying to boot this into a larger framebuffer to be able =
to
> > fit more data into my snapshots, but it appears that vga=3D795 does=
n't
> > work anymore. Have we reverted to Hex values again or is this just =
an
> > issue of some kernel module missing from initrd?
>=20
> Never mind. Seems that vesafb was blacklisted. Works now. See the
> image above. :)

OK, so I guess the bug should be closed?

Rafael
