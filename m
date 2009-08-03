From: Johannes Weiner <hannes-druUgvl0LCNAfugRpC6u6w@public.gmane.org>
Subject: Re: [Bug #13813] Hangups in n_tty_read()
Date: Mon, 3 Aug 2009 11:20:29 +0200
Message-ID: <20090803092029.GA2163@cmpxchg.org>
References: <Su1q3S6JjyO.A.jeB.hcgdKB@chimera> <iZB3Pj-uj3M.A.xaD.RdgdKB@chimera> <c62985530908021815s547ac3aavb0d7a70c683ae79b@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <c62985530908021815s547ac3aavb0d7a70c683ae79b-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: =?utf-8?B?RnLDqWTDqXJpYw==?= Weisbecker <fweisbec-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alan Cox <alan-qBU/x9rampVanCEyBjwyrvXRex20P6io@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>

On Mon, Aug 03, 2009 at 03:15:10AM +0200, Fr=C3=A9d=C3=A9ric Weisbecker=
 wrote:
> 2009/8/2 Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>:
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> >
> > The following bug entry is on the current list of known regressions
> > from 2.6.30. =C2=A0Please verify if it still should be listed and l=
et me know
> > (either way).
> >
> >
> > Bug-Entry =C2=A0 =C2=A0 =C2=A0 : http://bugzilla.kernel.org/show_bu=
g.cgi?id=3D13813
> > Subject =C2=A0 =C2=A0 =C2=A0 =C2=A0 : Hangups in n_tty_read()
> > Submitter =C2=A0 =C2=A0 =C2=A0 : Johannes Weiner <hannes-druUgvl0LCPF2uMehF1BdA@public.gmane.org=
g>
> > Date =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0: 2009-07-16 18:48 (1=
8 days old)
> > References =C2=A0 =C2=A0 =C2=A0: http://marc.info/?l=3Dlinux-kernel=
&m=3D124777019920579&w=3D4
>=20
>=20
> Johannes,
>=20
> Does it still happen with latest mainline?
> Also, could you send us your .config ?

I wanted to wait until confirming this as this bug could take a while
to trigger.

But v2.6.31-rc4-405-gb592972 seems to be okay, I have it running
stable for several days now.

Thanks,
	Hannes
