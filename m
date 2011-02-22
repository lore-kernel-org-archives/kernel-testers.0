From: Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>
Subject: Re: [Bug #22542] [2.6.37-rc1] drm:i195 errors
Date: Tue, 22 Feb 2011 09:56:48 +0100
Message-ID: <20110222095648.11ecbce9@schatten.dmk.lab>
References: <JwKd6rET8XO.A._ZC.gbuYNB@chimera>
	<f14qsMvj2tF.A.rQF._fuYNB@chimera>
	<20110222082438.0c0676ca@tux.DEF.witbe.net>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20110222082438.0c0676ca-Hu5lHNoInTV+MQpiyFM1nV6hYfS7NtTn@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: "Paul Rolland (=?UTF-8?Q?=E3=83=9D=E3=83=BC=E3=83=AB=E3=83=BB=E3=83=AD?=
	=?UTF-8?Q?=E3=83=A9=E3=83=B3?=)" <rol-fjEKYshTNZ1eoWH0uzbU5w@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Dave Airlie <airlied-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Keith Packard <keithp-aN4HjG94KOLQT0dZR+AlfA@public.gmane.org>

On Tue, 22 Feb 2011 08:24:38 +0100
Paul Rolland (=E3=83=9D=E3=83=BC=E3=83=AB=E3=83=BB=E3=83=AD=E3=83=A9=E3=
=83=B3) <rol-fjEKYshTNZ1eoWH0uzbU5w@public.gmane.org> wrote:

> I think you can remove this one from the regression list. I've receiv=
ed an
> update from Florian that said !
>=20
> --- Comment #27 from Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>  2011-02-2=
0 10:52:15 ---
> According to #22652 "*ERROR* Attempting to mmap a purgeable buffer" w=
arns about
> a userspace error. =20
>=20
> It links to ticket #22652 in which Chris Wilson indicates this is war=
ning
> about userspace bug, and that this issue is tracked in :
> https://bugs.freedesktop.org/show_bug.cgi?id=3D31419
>=20
> So, this definitely looks like the problem is not in the kernel (thou=
gh my
> personal view on this is that the message itself should be made much =
more
> clear and reflect that the problem is not in the kernel, but in users=
pace).
>=20
> Thanks for the tracking you've made,
> Paul
>=20

Ok, I'm closing this bug.=20

If the error messages go away if you update your userspace (maybe
someone can advise if your versions are 'old', I currently have no
overview of whats current), and you still experience problems (like
those Xserver crashes or freezes), then we should reopen the bug
though.=20

Regards,
=46lo



