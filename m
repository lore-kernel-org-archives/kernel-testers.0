From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Subject: Re: [Bug #13941] x86 Geode issue
Date: Sun, 16 Aug 2009 22:57:06 +0200
Message-ID: <20090816205706.GB3463@elte.hu>
References: <AuPdDySr74O.A.5LC.Pj1fKB@chimera> <200908131654.45227.rjw@sisk.pl> <11fae7c70908130800q7b4a5293t5c373613d736d74@mail.gmail.com> <200908132034.34951.rjw@sisk.pl> <11fae7c70908161217p33830075p783880315a31b2e5@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <11fae7c70908161217p33830075p783880315a31b2e5-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: =?iso-8859-1?Q?Martin-=C9ric?= Racine <q-funk-X3B1VOXEql0@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Alexander Viro <viro-rfM+Q5joDG/XmaaqVzeoHQ@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>


* Martin-=C9ric Racine <q-funk-X3B1VOXEql0@public.gmane.org> wrote:

> On Thu, Aug 13, 2009 at 9:34 PM, Rafael J. Wysocki<rjw-KKrjLPT3xs0@public.gmane.org> wrote=
:
> > On Thursday 13 August 2009, Martin-=C9ric Racine wrote:
> >> On Thu, Aug 13, 2009 at 5:54 PM, Rafael J. Wysocki<rjw-KKrjLPT3xs0@public.gmane.org> wr=
ote:
> >> > On Thursday 13 August 2009, Martin-=C9ric Racine wrote:
> >> >> 2009/8/13 Martin-=C9ric Racine <q-funk-X3B1VOXEql0@public.gmane.org>:
> >> >> > On Thu, Aug 13, 2009 at 12:07 PM, Ingo Molnar<mingo-X9Un+BFzKDI@public.gmane.org> =
wrote:
> >> >> >> * Martin-=C9ric Racine <q-funk-X3B1VOXEql0@public.gmane.org> wrote:
> >> >> >>> Yes, this bug is still valid.
> >> >> >>>
> >> >> >>> Ubuntu kernel team member Leann Ogasawara and I are slowly
> >> >> >>> bisecting our way through the changes that took place since=
 2.6.30
> >> >> >>> to find the commit that introduced this regression. Please =
stay
> >> >> >>> tuned.
> >> >> >>
> >> >> >> hm, the only outright Geode related commit was:
> >> >> >>
> >> >> >> =A0d6c585a: x86: geode: Mark mfgpt irq IRQF_TIMER to prevent=
 resume failure
> >> >> >>
> >> >> >> the jpg at:
> >> >> >>
> >> >> >> =A0http://launchpadlibrarian.net/28892781/00002.jpg
> >> >> >>
> >> >> >> is very out of focus - but what i could decypher suggests a
> >> >> >> pagefault crash in the VFS code, in generic_delete_inode().
> >> >>
> >> >> This one might be a bit better:
> >> >>
> >> >> http://launchpadlibrarian.net/30267494/2.6.31-5.24.jpg
> >
> > Hmm. =A0This looks like a sysfs oops to my untrained eye.
>=20
> The bisect I did with Leann Ogasawara has narrowed the kernel panic
> down to the following:
>=20
> commit f19d4a8fa6f9b6ccf54df0971c97ffcaa390b7b0
> Author: Al Viro <viro-RmSDqhL/yNMiFSDQTTA3OLVCufUGDwFn@public.gmane.org>
> Date: Mon Jun 8 19:50:45 2009 -0400
>=20
>     add caching of ACLs in struct inode
>=20
>     No helpers, no conversions yet.
>=20
>     Signed-off-by: Al Viro <viro-RmSDqhL/yNMiFSDQTTA3OLVCufUGDwFn@public.gmane.org>

Weird. If the functions do what their name suggests, i.e. if=20
inode_init_always() is an always called constructor and if=20
destroy_inode() is an unconditional destructor then this patch=20
should have no functional effect on the VFS side.

It increases the size of struct inode, so if you have some old=20
module (built to an older version of fs.h) still around it might=20
corrupt your inode data structure.

Or the size change might trigger some dormant bug. It might move a=20
critical inode right into the path of a pre-existing (but not=20
visibly crash-triggering) data corruption.

The possibilities on the 'weird bug' front are endless - the=20
crash/oops itself should be turned into text, posted here and=20
analyzed.

	Ingo
