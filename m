From: Andi Kleen <andi@firstfloor.org>
Subject: Re: [Bug #15041] Pagemap endless read loop with LTP
Date: Thu, 14 Jan 2010 00:50:10 +0100
Message-ID: <20100113235010.GF24818@basil.fritz.box>
References: <wnS54-l8PVO.A.TlF.oMlSLB@chimera> <omZ8aBZReyD.A.tvF.tMlSLB@chimera> <2375c9f91001121904h2857760akbf2dd2c9f7441fc5@mail.gmail.com> <201001132257.34123.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1756682Ab0AMXuS@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <201001132257.34123.rjw@sisk.pl>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: =?iso-8859-1?Q?Am=E9rico?= Wang <xiyou.wangcong@gmail.com>, Andi Kleen <andi@firstfloor.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>

On Wed, Jan 13, 2010 at 10:57:34PM +0100, Rafael J. Wysocki wrote:
> On Wednesday 13 January 2010, Am=E9rico Wang wrote:
> > On Mon, Jan 11, 2010 at 6:32 AM, Rafael J. Wysocki <rjw@sisk.pl> wr=
ote:
> > > This message has been generated automatically as a part of a repo=
rt
> > > of recent regressions.
> > >
> > > The following bug entry is on the current list of known regressio=
ns
> > > from 2.6.32.  Please verify if it still should be listed and let =
me know
> > > (either way).
> > >
> > >
> > > Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=3D15=
041
> > > Subject         : Pagemap endless read loop with LTP
> > > Submitter       : Andi Kleen <andi@firstfloor.org>
> > > Date            : 2010-01-10 2:09 (1 days old)
> > > References      : http://marc.info/?l=3Dlinux-kernel&m=3D12630894=
1423848&w=3D4
> > >
> >=20
> > According to Andi's later reply, it shoud not be an endless loop,
> > it just takes a rather long time.
>=20
> Andi?

It'll try to read 47 bits worth of 0s on 64bit x86-64.=20

I haven't tried to wait until that finishes, but I estimate a few month=
s of=20
CPU time at least.

The interface is just misdesigned, but I guess we cannot do
anything about that for now. LTP will just need to do a workaround.

This unfortunately breaks older LTP versions.

-Andi
--=20
ak@linux.intel.com -- Speaking for myself only.
