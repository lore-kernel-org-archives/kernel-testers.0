From: Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>
Subject: Re: [Bug #13667] drm: display arifacts when X.Org is stopped
Date: Wed, 8 Jul 2009 07:00:32 +0200
Message-ID: <200907080700.33120.elendil@planet.nl>
References: <35kKlbXMqWN.A.RXD.D0oUKB@chimera> <200907080232.04551.elendil@planet.nl> <21d7e9970907071950n27979df6j44444edd8528a598@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <21d7e9970907071950n27979df6j44444edd8528a598-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Dave Airlie <airlied-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Wednesday 08 July 2009, Dave Airlie wrote:
> On Wed, Jul 8, 2009 at 10:32 AM, Frans Pop<elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org> wrote:
> > On Tuesday 07 July 2009, Rafael J. Wysocki wrote:
> >> The following bug entry is on the current list of known regression=
s
> >> from 2.6.30. =A0Please verify if it still should be listed and let=
 me
> >> know (either way).
> >>
> >> Bug-Entry =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D1=
3667
> >> Subject =A0 =A0 =A0 : drm: display arifacts when X.Org is stopped
> >> Submitter =A0 =A0 : Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>
> >> Date =A0 =A0 =A0 =A0 =A0: 2009-06-27 18:52 (10 days old)
> >> References =A0 =A0: http://lkml.org/lkml/2009/6/27/105
> >
> > Problem is still there with -rc2. Dave said he'd try to reproduce,
> > but I've not heard back from him yet.
>
> Don't suppose you have a 32-bit install you could also test with?

You're in luck...
I also get artifacts, though less severe, with .31-rc2 on my Toshiba=20
Satellite A40 (32-bit kernel) during logout from X.Org. The switch is=20
clean with .30.

> Hopefully I can reproduce it on my box locally, otherwise its really
> messy dealing with 2 drivers smashing on the same hw.

Not sure why you're saying that. I would think VESA fb + X.Org is quite=
=20
common and also a very valid use case [1]. How else would you get the=20
pretty kernel boot logo? ;-)

> btw you get any wierd text mode issues without vesafb?

If I boot .31-rc2 without vga=3D791 I don't get the artifacts. The arti=
facts=20
also do not appear if I boot with 'nopat'. Checked on both systems.

Note that I reported a similar issue once before, also reproducible on=20
both systems. In that case it was a bug in PAT which was eventually fix=
ed.=20
See: http://bugzilla.kernel.org/show_bug.cgi?id=3D10843.

Given that 'nopat' helps, you may want to check with Suresh on this one=
=2E

Cheers,
=46JP

[1] I'd even go so far as to feel it should be a standard test case for=
=20
video driver developers, given that this is the third time it's shown=20
regressions :-) For the third case the bug was in the X.Org i830 driver=
:=20
http://bugs.freedesktop.org/show_bug.cgi?id=3D14481.
