From: NeilBrown <neilb-l3A5Bk7waGM@public.gmane.org>
Subject: Re: [Bug #32982] Kernel locks up a few minutes after boot
Date: Mon, 18 Apr 2011 07:07:11 +1000
Message-ID: <20110418070711.12dd5cc1@notabene.brown>
References: <OlQwC5HnRsN.A.ULB.OGuqNB@chimera>
	<_H4l51C1wXN.A.yDC.yGuqNB@chimera>
	<BANLkTimeaHwBiZoz=isCM=qtBxoxaBqDUw@mail.gmail.com>
	<BANLkTi=1jO73DXDTD50bVpU82qphVKmRCw@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <BANLkTi=1jO73DXDTD50bVpU82qphVKmRCw-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Bart Van Assche <bvanassche-HInyCGIudOg@public.gmane.org>
Cc: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Jens Axboe <jaxboe-5c4llco8/ftWk0Htik3J/w@public.gmane.org>

On Sun, 17 Apr 2011 20:37:39 +0200 Bart Van Assche <bvanassche-HInyCGIudOg@public.gmane.org>=
 wrote:

> On Sun, Apr 17, 2011 at 7:03 PM, Linus Torvalds
> <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org> wrote:
> > On Sun, Apr 17, 2011 at 5:57 AM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wr=
ote:
> > > This message has been generated automatically as a part of a summ=
ary report
> > > of recent regressions.
> > >
> > > The following bug entry is on the current list of known regressio=
ns
> > > from 2.6.38. =A0Please verify if it still should be listed and le=
t the tracking team
> > > know (either way).
> > >
> > >
> > > Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?i=
d=3D32982
> > > Subject =A0 =A0 =A0 =A0 : Kernel locks up a few minutes after boo=
t
> > > Submitter =A0 =A0 =A0 : Bart Van Assche <bart.vanassche-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org=
>
> > > Date =A0 =A0 =A0 =A0 =A0 =A0: 2011-04-10 19:55 (8 days old)
> >
> > Is this machine running a RAID5 setup or something like that?
> >
> > There is a known interaction with the new block layer plugging code
> > and MD. The "hung task" report in that bugzilla looks very much lik=
e
> > that issue. And you do have "root=3D/dev/md0", so clearly there's s=
ome
> > md thing going on.
> >
> > And bisecting might not work all that well for it, because I suspec=
t
> > it ends up being very much a matter of IO patterns how it triggers.
> >
> > Neil supposedly has a patch for it, but I haven't seen it yet. Neil=
, Jens?
>=20
> (converted top-posting into bottom-posting)
>=20
> Hello Linus,
>=20
> On the system on which bug #32982 has been triggered md0, md1 and md2
> have been configured as two-disk RAID1 (mirroring).

If any of those have write-intent bitmaps then I definitely know what t=
he
problem is and I'll be posting patches later today (probably not much l=
ater).

If not .. then I'm less sure but it would certainly be worth testing af=
ter
applying the promised fixes.

NeilBrown


>=20
> I've done my best to trigger enough I/O in order to obtain reliable
> bisect results. A difficulty I encountered during bisecting though wa=
s
> that I encountered unbootable kernels (all skipped revisions).
>=20
> Bart.
