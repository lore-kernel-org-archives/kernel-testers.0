From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #14378] Problems with net/core/skbuff.c
Date: Mon, 26 Oct 2009 21:57:37 +0100
Message-ID: <200910262157.37392.rjw@sisk.pl>
References: <Sj-rRjx6TwF.A.djE.vqe5KB@chimera> <6dRYo8ss7vL.A.B9G.nre5KB@chimera> <4AE5FD84.8070906@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <4AE5FD84.8070906-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="iso-8859-1"
To: Eric Dumazet <eric.dumazet-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Massimo Cetra <mcetra-BBpJ+9iBSNKonA0d6jMUrA@public.gmane.org>

On Monday 26 October 2009, Eric Dumazet wrote:
> Rafael J. Wysocki a =C3=A9crit :
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> >=20
> > The following bug entry is on the current list of known regressions
> > from 2.6.31.  Please verify if it still should be listed and let me=
 know
> > (either way).
> >=20
> >=20
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D14378
> > Subject		: Problems with net/core/skbuff.c
> > Submitter	: Massimo Cetra <mcetra-BBpJ+9iBSNKonA0d6jMUrA@public.gmane.org>
> > Date		: 2009-10-08 14:51 (19 days old)
> > References	: http://marc.info/?l=3Dlinux-kernel&m=3D125501488220358=
&w=3D4
> >=20
> >=20
>=20
> This was corrected by commit ed79bab847d8e5a2986d8ff43c49c6fb8ee3265f
>=20
> virtio_net: use dev_kfree_skb_any() in free_old_xmit_skbs()

Thanks, closing.

Rafael
