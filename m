From: Arnd Hannemann <hannemann-JasiFyN5vQG662+jY7v6MhvVK+yQ3ZXh@public.gmane.org>
Subject: Re: x86 Geode issues in kernel >= 2.6.23 and >= 2.6.31-rc4
Date: Wed, 19 Aug 2009 09:49:31 +0200
Message-ID: <4A8BAE8B.8080900@nets.rwth-aachen.de>
References: <11fae7c70908030558r28773beatd1dca702d490a57d@mail.gmail.com>
 <4A76E3E8.30902@nets.rwth-aachen.de>
 <11fae7c70908030624q11ffd29ened3c77ec4c4ca79a@mail.gmail.com>
 <4A76E6AA.2040608@nets.rwth-aachen.de>
 <11fae7c70908181147k4384478crc9909ec8256db868@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-reply-to: <11fae7c70908181147k4384478crc9909ec8256db868-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: "q-funk-X3B1VOXEql0@public.gmane.org" <q-funk-X3B1VOXEql0@public.gmane.org>
Cc: Arnd Hannemann <Arnd.Hannemann-JasiFyN5vQG662+jY7v6MhvVK+yQ3ZXh@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

Martin-=C3=89ric Racine schrieb:
> On Mon, Aug 3, 2009 at 4:31 PM, Arnd
> Hannemann<hannemann-JasiFyN5vQG662+jY7v6MhvVK+yQ3ZXh@public.gmane.org> wrote:
>> Martin-=C3=89ric Racine wrote:
>>> On Mon, Aug 3, 2009 at 4:19 PM, Arnd
>>> Hannemann<hannemann-JasiFyN5vQG662+jY7v6MhvVK+yQ3ZXh@public.gmane.org> wrote:
>>>> Martin-=C3=89ric Racine wrote:
>>>>> (non-subscriber post; please keep me in CC)
>>>>>
>>>>> Greetings,
>>>>>
>>>>> Having previously reported two issues via Ubuntu's bug tracker an=
d not
>>>>> found any answer, I thought I'd approach the LKML with the issues=
 at
>>>>> stake.
>>>>>
>>>>> 1) Since kernel 2.6.23, one cannot boot hardware based on the Geo=
de
>>>>> SCx200 series. Partial answers about the most plausible cause hav=
e
>>>>> been found by the target hardware's manufacturer as explained at
>>>>> https://bugs.launchpad.net/ubuntu/+source/linux/+bug/241307
>>>>>
>>>>> 2) Since kernel 2.6.31-rc4, one cannot boot hardware based on the
>>>>> Geode LX800 as described at
>>>>> https://bugs.launchpad.net/ubuntu/+source/linux/+bug/396286
>>>>>
>>>>> In case either of these issues was already reported and there is =
a
>>>>> know fix or work-around, I'd love to hear more. Otherwise, please=
 feel
>>>>> free to contact me for additional details.
>>>>>
>>>> Just to give a data point:
>>>> 2.6.31-rc1,2,3,4,5 were/are running all fine on my Geode LX800
>>>> (http://www.pcengines.ch/alix2d2.htm) so it seems something
>>>> board or .config specific.
>>> Thank you for your answer, Arnd.
>>>
>>> Could you please send me a copy of your .config so that I can compa=
re
>>> it with the one used on Ubuntu kernels?
>> Sure. Config for 2.6.31-rc5 is attached.
>=20
> Could you try enabling CONFIG_FS_POSIX_ACL in your config and buildin=
g
> a new kernel? Does it still boot?

Yes, still works.
However, I'm booting over PXE/NFS so it may not be used during boot.
I mounted an ext3 loop image when the machine was up, and that works.

Best regards,
Arnd
