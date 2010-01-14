From: Matt Mackall <mpm-VDJrAJ4Gl5ZBDgjK7y7TUQ@public.gmane.org>
Subject: Re: [Bug #15041] Pagemap endless read loop with LTP
Date: Wed, 13 Jan 2010 18:15:36 -0600
Message-ID: <1263428136.29868.5058.camel@calx>
References: <wnS54-l8PVO.A.TlF.oMlSLB@chimera>
	 <omZ8aBZReyD.A.tvF.tMlSLB@chimera>
	 <2375c9f91001121904h2857760akbf2dd2c9f7441fc5@mail.gmail.com>
	 <201001132257.34123.rjw@sisk.pl>  <20100113235010.GF24818@basil.fritz.box>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20100113235010.GF24818-u0/ZJuX+froe6aEkudXLsA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Andi Kleen <andi-Vw/NltI1exuRpAAqCnN02g@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, =?ISO-8859-1?Q?Am=E9rico?= Wang <xiyou.wangcong-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Thu, 2010-01-14 at 00:50 +0100, Andi Kleen wrote:
> On Wed, Jan 13, 2010 at 10:57:34PM +0100, Rafael J. Wysocki wrote:
> > On Wednesday 13 January 2010, Am=C3=A9rico Wang wrote:
> > > On Mon, Jan 11, 2010 at 6:32 AM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> =
wrote:
> > > > This message has been generated automatically as a part of a re=
port
> > > > of recent regressions.
> > > >
> > > > The following bug entry is on the current list of known regress=
ions
> > > > from 2.6.32.  Please verify if it still should be listed and le=
t me know
> > > > (either way).
> > > >
> > > >
> > > > Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
15041
> > > > Subject         : Pagemap endless read loop with LTP
> > > > Submitter       : Andi Kleen <andi-Vw/NltI1exuRpAAqCnN02g@public.gmane.org>
> > > > Date            : 2010-01-10 2:09 (1 days old)
> > > > References      : http://marc.info/?l=3Dlinux-kernel&m=3D126308=
941423848&w=3D4
> > > >
> > >=20
> > > According to Andi's later reply, it shoud not be an endless loop,
> > > it just takes a rather long time.
> >=20
> > Andi?
>=20
> It'll try to read 47 bits worth of 0s on 64bit x86-64.=20
>=20
> I haven't tried to wait until that finishes, but I estimate a few mon=
ths of=20
> CPU time at least.
>=20
> The interface is just misdesigned, but I guess we cannot do
> anything about that for now.

It's perfectly sensible. What's not sensible is reading the entirety of
everything you find in /proc, something that just about every Linux
admin figures out moments after running their first recursive grep.

>  LTP will just need to do a workaround.

Or they could actually, you know, add a test of pagemap. Not much chanc=
e
of that, though - CVS reports it took them until 2005 to figure out tha=
t
skipping /proc/kcore was a good idea.

--=20
http://selenic.com : development and support for Mercurial and Linux

