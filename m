From: OGAWA Hirofumi <hirofumi-UIVanBePwB70ZhReMnHkpc8NsWr+9BEh@public.gmane.org>
Subject: Re: [Bug #14889] System wakeup by time not working anymore
Date: Wed, 30 Dec 2009 07:14:13 +0900
Message-ID: <87zl51sa16.fsf@devron.myhome.or.jp>
References: <oBElxfTZdhL.A.bx.-vhOLB@chimera>
	<srmJ8vMxKPH.A.BaC.ZwhOLB@chimera>
	<87k4w5u1fr.fsf@devron.myhome.or.jp> <200912292235.50104.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200912292235.50104.rjw-KKrjLPT3xs0@public.gmane.org> (Rafael J. Wysocki's message of
	"Tue, 29 Dec 2009 22:35:50 +0100")
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Bjorn Helgaas <bjorn.helgaas-VXdhtT5mjnY@public.gmane.org>, David =?iso-8859-1?Q?H=E4rdeman?= <david-0WFrdVpeebksCylrc8G9yg@public.gmane.org>, Len Brown <lenb-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Malte =?iso-8859-1?Q?Schr=F6der?= <maltesch-Mmb7MZpHnFY@public.gmane.org>

"Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> writes:

> On Tuesday 29 December 2009, OGAWA Hirofumi wrote:
>> "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> writes:
>>=20
>> > This message has been generated automatically as a part of a repor=
t
>> > of regressions introduced between 2.6.31 and 2.6.32.
>> >
>> > The following bug entry is on the current list of known regression=
s
>> > introduced between 2.6.31 and 2.6.32.  Please verify if it still s=
hould
>> > be listed and let me know (either way).
>> >
>> >
>> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D14889
>> > Subject		: System wakeup by time not working anymore
>> > Submitter	: Malte Schr=F6der <maltesch-Mmb7MZpHnFY@public.gmane.org>
>> > Date		: 2009-12-03 18:06 (27 days old)
>> > First-Bad-Commit: http://git.kernel.org/?p=3Dlinux/kernel/git/torv=
alds/linux-2.6.git;a=3Dcommit;h=3Dabd6633c67925f90775bb74755f9c547e30f1=
f20
>> > References	: http://marc.info/?l=3Dlinux-kernel&m=3D12598636263190=
0&w=3D4
>>=20
>> Specified commit would break the pnp driver which is using
>> driver->shutdown.
>>=20
>> Could you test this (untested) patch?
>
> Could you please also attach the patch to the Bugzilla entry?

Ok, I've attached the same patch to bugzilla.

Thanks.
--=20
OGAWA Hirofumi <hirofumi-UIVanBePwB70ZhReMnHkpc8NsWr+9BEh@public.gmane.org>
