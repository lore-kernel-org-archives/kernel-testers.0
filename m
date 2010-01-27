From: David John <davidjon-XRr60H37pjdAfugRpC6u6w@public.gmane.org>
Subject: Re: [Bug #14897] i915: Commit 0e442c60 causes flickering
Date: Wed, 27 Jan 2010 18:23:14 +0530
Message-ID: <4B60373A.6010902@xenontk.org>
References: <pYFNu11z2aM.A.pJH.CZMXLB@chimera>	 <q60Z28d_9yH.A.7k.sZMXLB@chimera> <84144f021001270444o1a2eba51t7917fb447cdc247d@mail.gmail.com>
Reply-To: davidjon-XRr60H37pjdAfugRpC6u6w@public.gmane.org
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <84144f021001270444o1a2eba51t7917fb447cdc247d-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Eric Anholt <eric-WhKQ6XTQaPysTnJN9+BGXg@public.gmane.org>, Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>

On 01/27/2010 06:14 PM, Pekka Enberg wrote:
> On Mon, Jan 25, 2010 at 12:23 AM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wro=
te:
>> This message has been generated automatically as a part of a report
>> of regressions introduced between 2.6.31 and 2.6.32.
>>
>> The following bug entry is on the current list of known regressions
>> introduced between 2.6.31 and 2.6.32. =EF=BF=BDPlease verify if it s=
till should
>> be listed and let me know (either way).
>>
>>
>> Bug-Entry =EF=BF=BD =EF=BF=BD =EF=BF=BD : http://bugzilla.kernel.org=
/show_bug.cgi?id=3D14897
>> Subject =EF=BF=BD =EF=BF=BD =EF=BF=BD =EF=BF=BD : i915: Commit 0e442=
c60 causes flickering
>> Submitter =EF=BF=BD =EF=BF=BD =EF=BF=BD : David John <davidjon@xenon=
tk.org>
>> Date =EF=BF=BD =EF=BF=BD =EF=BF=BD =EF=BF=BD =EF=BF=BD =EF=BF=BD: 20=
09-12-09 17:26 (47 days old)
>> First-Bad-Commit: http://git.kernel.org/?p=3Dlinux/kernel/git/torval=
ds/linux-2.6.git;a=3Dcommit;h=3D0e442c60dd39ac6924b11a20497734bd2303744=
c
>> References =EF=BF=BD =EF=BF=BD =EF=BF=BD: http://marc.info/?l=3Dlinu=
x-kernel&m=3D126037889600769&w=3D4
>=20
> David, bunch of i915 flickering fixes have gone into 2.6.33-rc5. Is
> this still a problem?
>=20

Yes, this is a separate issue the cause of which I've informed Jesse
about today. I've sent a patch but it needs reviewing. So the entry
should still be open.

Regards,
David.
