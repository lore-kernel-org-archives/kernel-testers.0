From: Ferenc Wagner <wferi-eEbw3PyuezQ@public.gmane.org>
Subject: Re: [Bug #12510] 2.6.29-rc2 dies on startup
Date: Mon, 16 Feb 2009 22:02:20 +0100
Message-ID: <87ab8mt7s3.fsf@tac.ki.iif.hu>
References: <juADNmcceYF.A.mdD.Mr0lJB@chimera>
	<rjPbZ5GRJPO.A.jxF.ls0lJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <rjPbZ5GRJPO.A.jxF.ls0lJB@chimera> (Rafael J. Wysocki's message
	of "Sat, 14 Feb 2009 21:38:17 +0100 (CET)")
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

"Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> writes:

> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.28.  Please verify if it still should be listed and let me k=
now
> (either way).
>
>
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D12510
> Subject		: 2.6.29-rc2 dies on startup
> Submitter	: Ferenc Wagner <wferi-eEbw3PyuezQ@public.gmane.org>
> Date		: 2009-01-19 12:53 (27 days old)
> References	: http://marc.info/?l=3Dlinux-kernel&m=3D123236969321703&w=
=3D4

This is fixed in 2.6.29-rc5 by

commit 5701c0519b7a357a602fda5c96f26197ecfc4c85
Author: Arve Hj=C3=B8nnev=C3=A5g <arve-z5hGa2qSFaRBDgjK7y7TUQ@public.gmane.org>
Date:   Fri Jan 30 20:21:09 2009 -0800

    Staging: android: ram_console: Disable ECC when early init is
    enabled and validate buffer size
--=20
Thanks,
=46eri.
