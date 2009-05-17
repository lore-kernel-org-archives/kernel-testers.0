From: Alex Bennee <kernel-hacker-jriKODhXDevQT0dZR+AlfA@public.gmane.org>
Subject: Re: 2.6.30-rc6: Reported regressions from 2.6.29
Date: Sun, 17 May 2009 18:55:15 +0100
Message-ID: <b2cdc9f30905171055yaede81bp5443e8aae8b0e74a@mail.gmail.com>
References: <_AjETDMbIoL.A.DcH.RYzDKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <_AjETDMbIoL.A.DcH.RYzDKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, DRI <dri-devel-5NWGOfrQmneRv+LV9MX5uipxlwaOVQ5f@public.gmane.org>, Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>, Eric Anholt <eric-WhKQ6XTQaPysTnJN9+BGXg@public.gmane.org>

2009/5/16 Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>:
> This message contains a list of some regressions from 2.6.29, for whi=
ch there
> are no fixes in the mainline I know of. =A0If any of them have been f=
ixed already,
> please let me know.
>
> If you know of any other unresolved regressions from 2.6.29, please l=
et me know
> either and I'll add them to the list. =A0Also, please let me know if =
any of the
> entries below are invalid.
>
> Each entry from the list will be sent additionally in an automatic re=
ply to
> this message with CCs to the people involved in reporting and handlin=
g the
> issue.

> Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
13171
> Subject =A0 =A0 =A0 =A0 : 2.6.30-rc2 + xorg-intel-2.7.0 + DRM_I915_KM=
S =3D corruption
> Submitter =A0 =A0 =A0 : Alex Bennee <kernel-hacker-jriKODhXDevQT0dZR+AlfA@public.gmane.org>
> Date =A0 =A0 =A0 =A0 =A0 =A0: 2009-04-19 6:27 (28 days old)
> References =A0 =A0 =A0: http://marc.info/?l=3Dlinux-kernel&m=3D124022=
460014812&w=3D4

All the main details on this are on the freedesktop bugzilla[1]. I can
confirm it's still a problem and I've been tracking the intel-next
tree for testing.

=46undamentally the problem is that X can't allocate any memory when KM=
S
is enabled on my chipset. Without knowing how memory should be
allocated from the kernel by the X driver I haven't been able to look
into it deeper. I've had some feedback from the intel guys but nothing
recently.

As always I stand ready to run tests and/or provide additional
diagnostics if required.


[1] https://bugs.freedesktop.org/show_bug.cgi?id=3D21480

--=20
Alex, homepage: http://www.bennee.com/~alex/
CV: http://www.bennee.com/~alex/cv.php
