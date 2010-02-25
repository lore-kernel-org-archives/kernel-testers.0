From: ebiederm-aS9lmoZGLiVWk0Htik3J/w@public.gmane.org (Eric W. Biederman)
Subject: Re: [Bug #15202] lockdep warning during elevator_switch
Date: Wed, 24 Feb 2010 17:35:26 -0800
Message-ID: <m1d3zu5c81.fsf@fess.ebiederm.org>
References: <b_eAfX__uZL.A.lvE.HcagLB@chimera>
	<ClJsQB_ZlxO.A.YyG.4dagLB@chimera>
	<2375c9f91002211730l6835cae1x1693da3d94fccc0c@mail.gmail.com>
	<alpine.LSU.2.00.1002250051380.4394@sister.anvils>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.LSU.2.00.1002250051380.4394-T/S/X05ZC3jbmfIwyoSfiQ@public.gmane.org> (Hugh Dickins's message of "Thu\, 25 Feb 2010 01\:03\:14 +0000 \(GMT\)")
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: Hugh Dickins <hugh.dickins-IWqWACnzNjwqdlJmJB21zg@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Americo Wang <xiyou.wangcong-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Jens Axboe <jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>

Hugh Dickins <hugh.dickins-IWqWACnzNjwqdlJmJB21zg@public.gmane.org> writes:

> On Mon, 22 Feb 2010, Am=C3=A9rico Wang wrote:
>> On Mon, Feb 22, 2010 at 5:30 AM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wro=
te:
>> > This message has been generated automatically as a part of a summa=
ry report
>> > of recent regressions.
>> >
>> > The following bug entry is on the current list of known regression=
s
>> > from 2.6.32. =C2=A0Please verify if it still should be listed and =
let the tracking team
>> > know (either way).
>> >
>> >
>> > Bug-Entry =C2=A0 =C2=A0 =C2=A0 : http://bugzilla.kernel.org/show_b=
ug.cgi?id=3D15202
>> > Subject =C2=A0 =C2=A0 =C2=A0 =C2=A0 : lockdep warning during eleva=
tor_switch
>> > Submitter =C2=A0 =C2=A0 =C2=A0 : Hugh Dickins <hugh.dickins@tiscal=
i.co.uk>
>> > Date =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0: 2010-01-31 23:55 (=
22 days old)
>> > References =C2=A0 =C2=A0 =C2=A0: http://marc.info/?l=3Dlinux-kerne=
l&m=3D126498212613051&w=3D4
>> >
>>=20
>> This should be fixed by:
>> http://lkml.org/lkml/2010/2/11/329
>
> This regression does still need to be listed for 2.6.33-rc8-git.
>
> Americo is right that the warning goes away if I apply those patches =
from Eric,
> but they look like more than we'd be adding into 2.6.33 at this stage=
 ...
> and bootup of latest git plus those patches gave me 71 messages of th=
e form
> BUG: key fxxxxxxx not in .data!

Which probably means one or two more spots that need annotation.

2.6.33 is out so these are targeted for 2.6.34...

Eric
