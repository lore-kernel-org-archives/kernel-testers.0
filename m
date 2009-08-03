From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #13813] Hangups in n_tty_read()
Date: Mon, 3 Aug 2009 17:20:59 +0200
Message-ID: <200908031721.00102.rjw@sisk.pl>
References: <Su1q3S6JjyO.A.jeB.hcgdKB@chimera> <c62985530908021815s547ac3aavb0d7a70c683ae79b@mail.gmail.com> <20090803092029.GA2163@cmpxchg.org>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090803092029.GA2163-druUgvl0LCNAfugRpC6u6w@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="utf-8"
To: Johannes Weiner <hannes-druUgvl0LCNAfugRpC6u6w@public.gmane.org>
Cc: =?utf-8?q?Fr=C3=A9d=C3=A9ric_Weisbecker?= <fweisbec-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alan Cox <alan-qBU/x9rampVanCEyBjwyrvXRex20P6io@public.gmane.org>

On Monday 03 August 2009, Johannes Weiner wrote:
> On Mon, Aug 03, 2009 at 03:15:10AM +0200, Fr=C3=A9d=C3=A9ric Weisbeck=
er wrote:
> > 2009/8/2 Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>:
> > > This message has been generated automatically as a part of a repo=
rt
> > > of recent regressions.
> > >
> > > The following bug entry is on the current list of known regressio=
ns
> > > from 2.6.30.  Please verify if it still should be listed and let =
me know
> > > (either way).
> > >
> > >
> > > Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=3D13=
813
> > > Subject         : Hangups in n_tty_read()
> > > Submitter       : Johannes Weiner <hannes-druUgvl0LCNAfugRpC6u6w@public.gmane.org>
> > > Date            : 2009-07-16 18:48 (18 days old)
> > > References      : http://marc.info/?l=3Dlinux-kernel&m=3D12477701=
9920579&w=3D4
> >=20
> >=20
> > Johannes,
> >=20
> > Does it still happen with latest mainline?
> > Also, could you send us your .config ?
>=20
> I wanted to wait until confirming this as this bug could take a while
> to trigger.
>=20
> But v2.6.31-rc4-405-gb592972 seems to be okay, I have it running
> stable for several days now.

Thanks, closed.

Rafael
