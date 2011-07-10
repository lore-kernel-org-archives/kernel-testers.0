From: Jeff Layton <jlayton-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #36952] [2.6.39] CIFS write failures where 2.6.38 works
Date: Sun, 10 Jul 2011 14:34:58 -0400
Message-ID: <20110710143458.531f226d@tlielax.poochiereds.net>
References: <AtAvQwe5sAK.A.loH.OlYGOB@chimera>
	<gK_efVqs2fP.A.DX.PmYGOB@chimera>
	<CAOJsxLHNKTh_ATo4_mQfjUfqtddheE-+bF14SPCNYBu+fjW9Tw@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <CAOJsxLHNKTh_ATo4_mQfjUfqtddheE-+bF14SPCNYBu+fjW9Tw-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: Pekka Enberg <penberg-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Helge Hafting <helge.hafting-CND4fxrytsY@public.gmane.org>

On Sun, 10 Jul 2011 14:58:54 +0300
Pekka Enberg <penberg-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org> wrote:

> On Sun, Jul 10, 2011 at 1:58 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrot=
e:
> > This message has been generated automatically as a part of a report
> > of regressions introduced between 2.6.38 and 2.6.39.
> >
> > The following bug entry is on the current list of known regressions
> > introduced between 2.6.38 and 2.6.39. =C2=A0Please verify if it sti=
ll should
> > be listed and let the tracking team know (either way).
> >
> > Bug-Entry =C2=A0 =C2=A0 =C2=A0 : http://bugzilla.kernel.org/show_bu=
g.cgi?id=3D36952
> > Subject =C2=A0 =C2=A0 =C2=A0 =C2=A0 : [2.6.39] CIFS write failures =
where 2.6.38 works
> > Submitter =C2=A0 =C2=A0 =C2=A0 : Helge Hafting <helge.hafting@hist.=
no>
> > Date =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0: 2011-06-01 10:11 (4=
0 days old)
> > Message-ID =C2=A0 =C2=A0 =C2=A0: <4DE6103E.6010100-CND4fxrytsY@public.gmane.org>
> > References =C2=A0 =C2=A0 =C2=A0: http://marc.info/?l=3Dlinux-kernel=
&m=3D130692387613423&w=3D2
>=20
> The last comment in Bugzilla states that Jeff was working on a patch.
> Was it ever submitted to mainline and stable?
>=20
>                                 Pekka

Yes, see commit 1190f6a067b in mainline. I also backported it for
2.6.39-stable and sent it to stable-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, but I haven't heard
anything back on it yet (I'll resend if I don't hear anything in the
next day or two).

--=20
Jeff Layton <jlayton-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
