From: Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>
Subject: Re: [Bug #15100] X11 is black after resume from s2ram if my T400
 was previous in docking station before
Date: Fri, 5 Feb 2010 11:05:39 -0800
Message-ID: <20100205110539.4df65968@jbarnes-piketon>
References: <UgwvXSBS_tM.A.alD.1EiZLB@chimera>
	<de962C6zBxL.A.BVE.KFiZLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <de962C6zBxL.A.BVE.KFiZLB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Eric Anholt <eric-WhKQ6XTQaPysTnJN9+BGXg@public.gmane.org>, Matthew Garrett <mjg-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Toralf =?UTF-8?B?RsO2cnN0ZXI=?= <toralf.foerster-Mmb7MZpHnFY@public.gmane.org>

On Mon,  1 Feb 2010 01:43:20 +0100 (CET)
"Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.31 and 2.6.32.
>=20
> The following bug entry is on the current list of known regressions
> introduced between 2.6.31 and 2.6.32.  Please verify if it still
> should be listed and let me know (either way).
>=20
>=20
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D15100
> Subject		: X11 is black after resume from s2ram if my
> T400 was previous in docking station before Submitter	: Toralf
> F=C3=B6rster <toralf.foerster-Mmb7MZpHnFY@public.gmane.org> Date		: 2010-01-21
> 08:56 (11 days old) First-Bad-Commit:
> http://git.kernel.org/?p=3Dlinux/kernel/git/torvalds/linux-2.6.git;a=3D=
commit;h=3Dc1c7af60892070e4b82ad63bbfb95ae745056de0

Just updated the bug, looks like another LID status related bug.

--=20
Jesse Barnes, Intel Open Source Technology Center
