From: =?UTF-8?B?RnJhbsOnb2lzIFZhbGVuZHVj?= 
	<francois.valenduc-bmtTS95sd5BUM80lpFwj4w@public.gmane.org>
Subject: Re: [Bug #12216] Error when drm is loaded
Date: Sun, 11 Jan 2009 15:50:37 +0100
Message-ID: <496A073D.4070804@tvcablenet.be>
References: <nn3SOLVZ28H.A.bY.CafaJB@chimera> <nHCfeC0YLrE.A.35C.HbfaJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <nHCfeC0YLrE.A.35C.HbfaJB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Dave Airlie <airlied-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Keith Packard <keithp-aN4HjG94KOLQT0dZR+AlfA@public.gmane.org>

Rafael J. Wysocki a =C3=A9crit :
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.27 and 2.6.28.
>
> The following bug entry is on the current list of known regressions
> introduced between 2.6.27 and 2.6.28.  Please verify if it still shou=
ld
> be listed and let me know (either way).
>
>
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D12216
> Subject		: Error when drm is loaded
> Submitter	: Fran=C3=A7ois Valenduc <francois.valenduc-bmtTS95sd5BUM80lpFwj4w@public.gmane.org>
> Date		: 2008-12-13 09:59 (30 days old)
> First-Bad-Commit: http://git.kernel.org/?p=3Dlinux/kernel/git/torvald=
s/linux-2.6.git;a=3Dcommit;h=3D52440211dcdc52c0b757f8b34d122e11b12cdd50
>
>
>
>  =20
This problem has been solved by the following patch:

commit 077ebed54fe66612f58b076628a72eca2be8df90
Author: Dave Airlie <airlied-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Date:   Mon Dec 22 17:11:02 2008 +1000

    drm/radeon: fix correctness of irq_enabled check for radeon.


This fix is in kernel 2.6.28, so this bug can be removed from the
regression list.

=46ran=C3=A7ois Valenduc
