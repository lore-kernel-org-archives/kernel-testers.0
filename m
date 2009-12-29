From: Mike Galbraith <efault-Mmb7MZpHnFY@public.gmane.org>
Subject: Re: [Bug #14794] IP address assigned by DHCP is dropped after ~40
 seconds
Date: Tue, 29 Dec 2009 16:44:23 +0100
Message-ID: <1262101463.17659.1.camel@marge.simson.net>
References: <oBElxfTZdhL.A.bx.-vhOLB@chimera>
	 <srmJ8vMxKPH.A.MyC.uwhOLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <srmJ8vMxKPH.A.MyC.uwhOLB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, =?ISO-8859-1?Q?M=E1rton_N=E9meth?= <nm127-Y8qEzhMunLyT9ig0jae3mg@public.gmane.org>, Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>

On Tue, 2009-12-29 at 16:28 +0100, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.31 and 2.6.32.
>=20
> The following bug entry is on the current list of known regressions
> introduced between 2.6.31 and 2.6.32.  Please verify if it still shou=
ld
> be listed and let me know (either way).
>=20
>=20
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D14794
> Subject		: IP address assigned by DHCP is dropped after ~40 seconds
> Submitter	: M=C3=A1rton N=C3=A9meth <nm127-Y8qEzhMunLyT9ig0jae3mg@public.gmane.org>
> Date		: 2009-12-13 08:59 (17 days old)

This one was a userspace bug it seems.

<quote>
Comment #21 From Jarek Poplawski 2009-12-19 13:48:21 -------=20
On Sat, Dec 19, 2009 at 11:26:30AM +0100, N=C3=A9meth M=C3=A1rton wrote=
:
> I upgraded the Debian package "network-manager" from 0.6.6-3 to 0.7.2=
-2.
> The problem seems to be solved: the IP address is not dropped in 2.6.=
32
> and in 2.6.31. The conclusion is for me that a user-space program cau=
sed
> the problem, thanks for the hint.

Yes, Debian often fixes our bugs on time! ;-)

Thanks,
Jarek P.
</quote>
