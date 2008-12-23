From: =?UTF-8?B?Q8OpZHJpYyBHb2Rpbg==?= <cedric-x1Cn44Nr1HaZIoH1IeqzKA@public.gmane.org>
Subject: Re: [Bug #12178] Xorg crash at first start
Date: Tue, 23 Dec 2008 12:39:13 +0100
Message-ID: <4950CDE1.5070501@belbone.be>
References: <vYigq6XkyUN.A.E1H.7ZYTJB@chimera> <vy-yJy0f3YP.A.vMB.caYTJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <vy-yJy0f3YP.A.vMB.caYTJB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Dave Airlie <airlied-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Dave Airlie <airlied-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Keith Packard <keithp-aN4HjG94KOLQT0dZR+AlfA@public.gmane.org>

Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.27.  Please verify if it still should be listed and let me k=
now
> (either way).
>
>
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D12178
> Subject		: Xorg crash at first start
> Submitter	: C=C3=A9dric Godin <cedric-x1Cn44Nr1HaZIoH1IeqzKA@public.gmane.org>
> Date		: 2008-12-04 14:26 (17 days old)
> First-Bad-Commit: http://git.kernel.org/?p=3Dlinux/kernel/git/torvald=
s/linux-2.6.git;a=3Dcommit;h=3D52440211dcdc52c0b757f8b34d122e11b12cdd50
> References	: http://marc.info/?l=3Dlinux-kernel&m=3D122840082828098&w=
=3D4
>
>
>  =20
It seems that the bug #12216 is the same bug. I tested the patch posted
in it and everything is back to normal. Many thanks.
