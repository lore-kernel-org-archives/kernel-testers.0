From: "Romano Giannetti (lists)" <romanol-vhWWKbMuD/XAemY8wzKmUg@public.gmane.org>
Subject: Re: [Bug #11947] 2.6.28-rc VC switching with Intel graphics broken
Date: Mon, 17 Nov 2008 17:40:47 +0100
Message-ID: <49219E8F.70207@upcomillas.es>
References: <VwdsQNEjR_C.A.CiD.9_FIJB@chimera> <Q7OAnAv0V3D.A.8gF.CBGIJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <Q7OAnAv0V3D.A.8gF.CBGIJB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Bernhard Schmidt <berni-wpePDvIxQxvMZTq/7ZfH4Q@public.gmane.org>, Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>, Johan Bilien <jobi-HxYGxUgKSKlGWvitb5QawA@public.gmane.org>, Romano Giannetti <romano.giannetti-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>


Rafael J. Wysocki wrote:

> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11947
> Subject		: 2.6.28-rc VC switching with Intel graphics broken

Continue to malfunction. More details on the bugzilla entry. But basica=
lly, I had:

- one complete lock on VC switching (not switching back, just pressing =
ctrl-alt-f1).
- 3 two-plus minutes delay on VC switching
- a complete freeze on resuming from ram (not even SysRq-b working).

OTOH, it seems that VC malfunctioning happens only with "visual effect"=
 aka=20
compiz on.

Back to 2.6.27.5. This is quite worrying now... should I try to start a
bisection? Although I know from experience that bisecting over a -rc1 i=
s quite
painful.

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
