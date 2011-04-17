From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: [Bug #32982] Kernel locks up a few minutes after boot
Date: Sun, 17 Apr 2011 10:03:27 -0700
Message-ID: <BANLkTimeaHwBiZoz=isCM=qtBxoxaBqDUw@mail.gmail.com>
References: <OlQwC5HnRsN.A.ULB.OGuqNB@chimera> <_H4l51C1wXN.A.yDC.yGuqNB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <_H4l51C1wXN.A.yDC.yGuqNB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Bart Van Assche <bart.vanassche-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Neil Brown <neilb-l3A5Bk7waGM@public.gmane.org>, Jens Axboe <jaxboe-5c4llco8/ftWk0Htik3J/w@public.gmane.org>

Is this machine running a RAID5 setup or something like that?

There is a known interaction with the new block layer plugging code
and MD. The "hung task" report in that bugzilla looks very much like
that issue. And you do have "root=3D/dev/md0", so clearly there's some
md thing going on.

And bisecting might not work all that well for it, because I suspect
it ends up being very much a matter of IO patterns how it triggers.

Neil supposedly has a patch for it, but I haven't seen it yet. Neil, Je=
ns?

                                   Linus

On Sun, Apr 17, 2011 at 5:57 AM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> This message has been generated automatically as a part of a summary =
report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.38. =A0Please verify if it still should be listed and let th=
e tracking team
> know (either way).
>
>
> Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
32982
> Subject =A0 =A0 =A0 =A0 : Kernel locks up a few minutes after boot
> Submitter =A0 =A0 =A0 : Bart Van Assche <bart.vanassche-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date =A0 =A0 =A0 =A0 =A0 =A0: 2011-04-10 19:55 (8 days old)
>
>
>
