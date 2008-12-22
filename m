From: =?UTF-8?B?RnJhbsOnb2lzIFZhbGVuZHVj?= 
	<francois.valenduc-bmtTS95sd5BUM80lpFwj4w@public.gmane.org>
Subject: Re: [Bug #12216] Error when drm is loaded
Date: Mon, 22 Dec 2008 22:26:32 +0100
Message-ID: <49500608.7030509@tvcablenet.be>
References: <vYigq6XkyUN.A.E1H.7ZYTJB@chimera> <vy-yJy0f3YP.A.Jo.QaYTJB@chimera> <494DFF88.9090807@tvcablenet.be> <200812212054.49511.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200812212054.49511.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Dave Airlie <airlied-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Keith Packard <keithp-aN4HjG94KOLQT0dZR+AlfA@public.gmane.org>

Rafael J. Wysocki a =C3=A9crit :
> On Sunday, 21 of December 2008, Fran=C3=A7ois Valenduc wrote:
>  =20
>> Rafael J. Wysocki a =C3=A9crit :
>>    =20
>>> This message has been generated automatically as a part of a report
>>> of recent regressions.
>>>
>>> The following bug entry is on the current list of known regressions
>>> from 2.6.27.  Please verify if it still should be listed and let me=
 know
>>> (either way).
>>>
>>>
>>> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D12216
>>> Subject		: Error when drm is loaded
>>> Submitter	: Fran=C3=A7ois Valenduc <francois.valenduc-bmtTS95sd5BUM80lpFwj4w@public.gmane.org=
>
>>> Date		: 2008-12-13 09:59 (8 days old)
>>> First-Bad-Commit: http://git.kernel.org/?p=3Dlinux/kernel/git/torva=
lds/linux-2.6.git;a=3Dcommit;h=3D52440211dcdc52c0b757f8b34d122e11b12cdd=
50
>>>
>>>
>>>
>>>  =20
>>>      =20
>> This bug still occurs. So, it still needs to be on the regression li=
st.
>> I have not yet seen any replies to my bug report.
>>    =20
>
> Thanks for the update.
>
> Rafael
>
>  =20
I got a reply to my bug report and I tested the patch provided by Dave
Airlie. It seems to solve the problem. The error doesn't occur anymore
when it's applied.

=46ran=C3=A7ois
