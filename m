From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #20472] [2.6.35.5 -> .7] INFO: task rpcbind:14163 blocked for more than 120 seconds.
Date: Mon, 18 Oct 2010 23:36:51 +0200
Message-ID: <201010182336.51265.rjw@sisk.pl>
References: <TP5BfCZNRXD.A._8.uj1uMB@chimera> <7N-qxsaxKCN.A.TEB.0j1uMB@chimera> <201010181951.34620.pluto@agmk.net>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <201010181951.34620.pluto-PIIpFW8S9c0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="windows-1252"
To: =?utf-8?q?Pawe=C5=82_Sikora?= <pluto-PIIpFW8S9c0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Trond Myklebust <trond.myklebust-41N18TsMXrtuMpJDpNschA@public.gmane.org>

On Monday, October 18, 2010, Pawe=C5=82 Sikora wrote:
> On Sunday 17 October 2010 22:21:48 Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a summar=
y report
> > of recent regressions.
> >=20
> > The following bug entry is on the current list of known regressions
> > from 2.6.35.  Please verify if it still should be listed and let th=
e tracking team
> > know (either way).
>=20
> hi,
>=20
> hot news from the front, recent tests on the pld-linux.org vendor ker=
nel
> show that the random task blocking in 2.6.35.7 during medium/heavy lo=
ad (~4..25)
> is related to the grsecurity patch. we'll forward problem report to t=
he
> grsec maintainer asap...

So, to make things clear, this is not a mainline kernel issue, is it?

Rafael
