From: "Romano Giannetti (lists)" <romanol-vhWWKbMuD/XAemY8wzKmUg@public.gmane.org>
Subject: Re: [Bug #11947] 2.6.28-rc VC switching with Intel graphics broken
Date: Mon, 24 Nov 2008 09:47:28 +0100
Message-ID: <492A6A20.4080106@upcomillas.es>
References: <sBqd4qMeLzC.A.mgB.B7HKJB@chimera> <vyitTh0pP2N.A.IHD.O8HKJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <vyitTh0pP2N.A.IHD.O8HKJB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andreas Mohr <andi-5+Cda9B46AM@public.gmane.org>, Bernhard Schmidt <berni-wpePDvIxQxvMZTq/7ZfH4Q@public.gmane.org>, devsk <kernel-bugs.dev1world-w1QkCcy0X+BxKfgMtfWJuA@public.gmane.org>, Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>, Johan Bilien <jobi-HxYGxUgKSKlGWvitb5QawA@public.gmane.org>


Rafael J. Wysocki wrote:
>=20
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11947
> Subject		: 2.6.28-rc VC switching with Intel graphics broken
> Submitter	: Romano Giannetti <romano.giannetti-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2008-11-03 12:10 (20 days old)
> Handled-By	: Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>
>=20

Still with us on -rc6, nasty, reproducible, no clues on what can be.

VC switch locks or delay the systems minutes, resuming from suspend loc=
ks hard=20
the machine.

2.6.28-rc is unusable here.

Jesse, any hints? My suspicion that it can be the same thing happened w=
ith bug=20
10620 is wrong? (It was a very similar error about vblank...)

Romano

--=20
Sorry for the disclaimer --- =C2=A1I cannot stop it!


--
La presente comunicaci=C3=B3n tiene car=C3=A1cter confidencial y es par=
a el exclusivo uso del destinatario indicado en la misma. Si Ud. no es =
el destinatario indicado, le informamos que cualquier forma de distribu=
ci=C3=B3n, reproducci=C3=B3n o uso de esta comunicaci=C3=B3n y/o de la =
informaci=C3=B3n contenida en la misma est=C3=A1n estrictamente prohibi=
dos por la ley. Si Ud. ha recibido esta comunicaci=C3=B3n por error, po=
r favor, notif=C3=ADquelo inmediatamente al remitente contestando a est=
e mensaje y proceda a continuaci=C3=B3n a destruirlo. Gracias por su co=
laboraci=C3=B3n.

This communication contains confidential information. It is for the exc=
lusive use of the intended addressee. If you are not the intended addre=
ssee, please note that any form of distribution, copying or use of this=
 communication or the information in it is strictly prohibited by law. =
If you have received this communication in error, please immediately no=
tify the sender by reply e-mail and destroy this message. Thank you for=
 your cooperation.=20
