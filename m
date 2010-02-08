From: Stefan Bader <stefan.bader-Z7WLFzj8eWMS+FvcfC7Uqw@public.gmane.org>
Subject: Re: [Bug #15096] Resume lock up -- bisected, commit 	3a1151e3f124fd1a2c54b8153f510f1a7c715369
Date: Mon, 08 Feb 2010 20:55:33 +0100
Message-ID: <4B706C35.2040100@canonical.com>
References: <2uzMDuY-7_O.A.M1G.7X1bLB@chimera> <4B7004F4.3030804@canonical.com>	 <b170af451002080438i18a1e541x8dc038f4b5f129f4@mail.gmail.com>	 <201002082022.43515.rjw@sisk.pl> <4B7066BA.7040806@canonical.com> <b170af451002081134g5620e463t663266ce706911ed@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <b170af451002081134g5620e463t663266ce706911ed-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Len Brown <len.brown-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Zhang Rui <rui.zhang-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

Rafa=C5=82 Mi=C5=82ecki wrote:
> 2010/2/8 Stefan Bader <stefan.bader-Z7WLFzj8eWMS+FvcfC7Uqw@public.gmane.org>:
>> Rafael J. Wysocki wrote:
>>> On Monday 08 February 2010, Rafa=C5=82 Mi=C5=82ecki wrote:
>>>> 2010/2/8 Stefan Bader <stefan.bader-Z7WLFzj8eWMS+FvcfC7Uqw@public.gmane.org>:
>>>>> Rafael J. Wysocki wrote:
>>>>>> On Monday 08 February 2010, Rafa=C5=82 Mi=C5=82ecki wrote:
>>>>>>> 2010/2/8 Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>:
>>>>>>>> This message has been generated automatically as a part of a r=
eport
>>>>>>>> of regressions introduced between 2.6.31 and 2.6.32.
>>>>>>>>
>>>>>>>> The following bug entry is on the current list of known regres=
sions
>>>>>>>> introduced between 2.6.31 and 2.6.32.  Please verify if it sti=
ll should
>>>>>>>> be listed and let the tracking team know (either way).
>>>>>>>>
>>>>>>>>
>>>>>>>> Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
15096
>>>>>>>> Subject         : Resume lock up -- bisected, commit 3a1151e3f=
124fd1a2c54b8153f510f1a7c715369
>>>>>>>> Submitter       : Rafa=C5=82 Mi=C5=82ecki <zajec5-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
>>>>>>>> Date            : 2010-01-20 23:15 (19 days old)
>>>>>>>> First-Bad-Commit: http://git.kernel.org/git/linus/3a1151e3f124=
fd1a2c54b8153f510f1a7c715369
>>>>>> It looks like we should revert this commit, seems broken.
>>>>> Hm, otoh we had definitely people with some Asus laptops who wher=
e only be able
>>>>> to use backlight control with it. So I would rather prefer some w=
ork around to
>>>>> the suspend/resume problem (_DOS if I understood correctly).
>>>> It's same case with my Sony VAIO. Without this I can not control
>>>> backlight. Eventually I can hack on GPU registers directly, but I
>>>> don't think it can be called solution.
>>> Well, do I understand correctly that without commit
>>> 3a1151e3f124fd1a2c54b8153f510f1a7c715369 you can't control the back=
light,
>>> but with the commit applied there's a resume problem on your box?
>>>
>>> Rafael
>> Rafa=C5=82 can correct me. I would phrase it that way that without t=
he bisected
>> patch, there is no backlight control. And because there is with it, =
we hit the
>> next BIOS bug because the backlight driver now tries to correctly br=
ing it back
>> on resume.
>=20
> Do you suspect some conflict between video module and BIOS? Any more =
ideas?
>=20
That would be my guess based on the (admitted not to be very deep readi=
ng across
some of your and Rui's comments. He probably has a better Idea on that.=
 But what
the patch in question does is to allow video devices that have not all =
the
methods defined (before _DOD *and* _DOS, after _DOD *or* _DOS) to be ha=
ndled by
the generic acpi video driver. And this gets you backlight control (by =
some
additional methods). But now, as the driver is in use, it is in the
suspend/resume path and this causes problems.
=46rom cross reading bugmail I had the feeling Rui was on a track while=
 I did not
follow close enough to take in any details.
I would suspect that code assumes details from those two (_DOD and _DOS=
 which is
not there if the BIOS provides them both and is not handled as the driv=
er used
to be only used in that case). I probably should get back and read the =
bug
report with all the info in detail somewhen tomorrow.

Stefan
