From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Subject: Re: [Bug #13941] x86 Geode issue
Date: Sun, 16 Aug 2009 23:34:07 +0200
Message-ID: <20090816213407.GA30245@elte.hu>
References: <AuPdDySr74O.A.5LC.Pj1fKB@chimera> <200908131654.45227.rjw@sisk.pl> <11fae7c70908130800q7b4a5293t5c373613d736d74@mail.gmail.com> <200908132034.34951.rjw@sisk.pl> <11fae7c70908161217p33830075p783880315a31b2e5@mail.gmail.com> <20090816205706.GB3463@elte.hu> <11fae7c70908161412v61fd233au5166e18f4c4d0931@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <11fae7c70908161412v61fd233au5166e18f4c4d0931-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: =?iso-8859-1?Q?Martin-=C9ric?= Racine <q-funk-X3B1VOXEql0@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Alexander Viro <viro-rfM+Q5joDG/XmaaqVzeoHQ@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>


* Martin-=C9ric Racine <q-funk-X3B1VOXEql0@public.gmane.org> wrote:

> 2009/8/16 Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>:
> >
> > * Martin-=C9ric Racine <q-funk-X3B1VOXEql0@public.gmane.org> wrote:
> >
> >> On Thu, Aug 13, 2009 at 9:34 PM, Rafael J. Wysocki<rjw-KKrjLPT3xs0@public.gmane.org> wr=
ote:
> >> > On Thursday 13 August 2009, Martin-=C9ric Racine wrote:
> >> >> On Thu, Aug 13, 2009 at 5:54 PM, Rafael J. Wysocki<rjw-KKrjLPT3xs0@public.gmane.org>=
 wrote:
> >> >> > On Thursday 13 August 2009, Martin-=C9ric Racine wrote:
> >> >> >> 2009/8/13 Martin-=C9ric Racine <q-funk-X3B1VOXEql0@public.gmane.org>:
> >> >> >> > On Thu, Aug 13, 2009 at 12:07 PM, Ingo Molnar<mingo@elte.h=
u> wrote:
> >> >> >> >> * Martin-=C9ric Racine <q-funk-X3B1VOXEql0@public.gmane.org> wrote:
> >> >> >> >>> Yes, this bug is still valid.
> >> >> >> >>>
> >> >> >> >>> Ubuntu kernel team member Leann Ogasawara and I are slow=
ly
> >> >> >> >>> bisecting our way through the changes that took place si=
nce 2.6.30
> >> >> >> >>> to find the commit that introduced this regression. Plea=
se stay
> >> >> >> >>> tuned.
> >> >> >> >>
> >> >> >> >> hm, the only outright Geode related commit was:
> >> >> >> >>
> >> >> >> >> =A0d6c585a: x86: geode: Mark mfgpt irq IRQF_TIMER to prev=
ent resume failure
> >> >> >> >>
> >> >> >> >> the jpg at:
> >> >> >> >>
> >> >> >> >> =A0http://launchpadlibrarian.net/28892781/00002.jpg
> >> >> >> >>
> >> >> >> >> is very out of focus - but what i could decypher suggests=
 a
> >> >> >> >> pagefault crash in the VFS code, in generic_delete_inode(=
).
> >> >> >>
> >> >> >> This one might be a bit better:
> >> >> >>
> >> >> >> http://launchpadlibrarian.net/30267494/2.6.31-5.24.jpg
> >> >
> >> > Hmm. =A0This looks like a sysfs oops to my untrained eye.
> >>
> >> The bisect I did with Leann Ogasawara has narrowed the kernel pani=
c
> >> down to the following:
> >>
> >> commit f19d4a8fa6f9b6ccf54df0971c97ffcaa390b7b0
> >> Author: Al Viro <viro-RmSDqhL/yNMiFSDQTTA3OLVCufUGDwFn@public.gmane.org>
> >> Date: Mon Jun 8 19:50:45 2009 -0400
> >>
> >> =A0 =A0 add caching of ACLs in struct inode
> >>
> >> =A0 =A0 No helpers, no conversions yet.
> >>
> >> =A0 =A0 Signed-off-by: Al Viro <viro-RmSDqhL/yNMiFSDQTTA3OLVCufUGDwFn@public.gmane.org>
> >
> > Weird. If the functions do what their name suggests, i.e. if
> > inode_init_always() is an always called constructor and if
> > destroy_inode() is an unconditional destructor then this patch
> > should have no functional effect on the VFS side.
> >
> > It increases the size of struct inode, so if you have some old
> > module (built to an older version of fs.h) still around it might
> > corrupt your inode data structure.
> >
> > Or the size change might trigger some dormant bug. It might move a
> > critical inode right into the path of a pre-existing (but not
> > visibly crash-triggering) data corruption.
> >
> > The possibilities on the 'weird bug' front are endless - the=20
> > crash/oops itself should be turned into text, posted here and=20
> > analyzed.
>=20
> If you mean something else than the large-size snapshot of the=20
> whole panic output that was linked earlier in this thread, I'd=20
> appreciate instructions on how to turn that crash into text.

it's still a JPG - posting the transcribed oops in email text would=20
certainly help more folks looking over it.

(painful i know ...)

	Ingo
