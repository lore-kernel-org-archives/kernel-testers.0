From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Subject: Re: [Bug #13941] x86 Geode issue
Date: Thu, 13 Aug 2009 11:07:43 +0200
Message-ID: <20090813090743.GA14352@elte.hu>
References: <AuPdDySr74O.A.5LC.Pj1fKB@chimera> <u1L1PAbl8zG.A.UBD.ej1fKB@chimera> <11fae7c70908130152j21f9f183m4f1c49d91fc7a7f9@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <11fae7c70908130152j21f9f183m4f1c49d91fc7a7f9-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: =?iso-8859-1?Q?Martin-=C9ric?= Racine <q-funk-X3B1VOXEql0@public.gmane.org>, Alexander Viro <viro-rfM+Q5joDG/XmaaqVzeoHQ@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>


* Martin-=C9ric Racine <q-funk-X3B1VOXEql0@public.gmane.org> wrote:

> Yes, this bug is still valid.
>=20
> Ubuntu kernel team member Leann Ogasawara and I are slowly=20
> bisecting our way through the changes that took place since 2.6.30=20
> to find the commit that introduced this regression. Please stay=20
> tuned.

hm, the only outright Geode related commit was:

 d6c585a: x86: geode: Mark mfgpt irq IRQF_TIMER to prevent resume failu=
re

the jpg at:

  http://launchpadlibrarian.net/28892781/00002.jpg

is very out of focus - but what i could decypher suggests a=20
pagefault crash in the VFS code, in generic_delete_inode().

Which could be a VFS bug, or a filesystem bug, or some unrelated=20
memory corruption hitting the inode data structure.

	Ingo
