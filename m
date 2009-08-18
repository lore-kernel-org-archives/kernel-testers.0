From: =?UTF-8?Q?Martin=2D=C3=89ric_Racine?= <q-funk-X3B1VOXEql0@public.gmane.org>
Subject: Re: x86 Geode issues in kernel >= 2.6.23 and >= 2.6.31-rc4
Date: Tue, 18 Aug 2009 21:47:28 +0300
Message-ID: <11fae7c70908181147k4384478crc9909ec8256db868@mail.gmail.com>
References: <11fae7c70908030558r28773beatd1dca702d490a57d@mail.gmail.com>
	 <4A76E3E8.30902@nets.rwth-aachen.de>
	 <11fae7c70908030624q11ffd29ened3c77ec4c4ca79a@mail.gmail.com>
	 <4A76E6AA.2040608@nets.rwth-aachen.de>
Reply-To: q-funk-X3B1VOXEql0@public.gmane.org
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:sender:reply-to:received
         :in-reply-to:references:date:x-google-sender-auth:message-id:subject
         :from:to:cc:content-type:content-transfer-encoding;
        bh=jM7h9R4tY2mueHYn97X5ZywD5sKOtSkqi8hCRIt7MaE=;
        b=XaZoqIhRhELaO1QFUK2woGmnwHCPZEE91ioSFM6xVTjp8/nWoIzYJ4mOt3Y0+L0JO4
         XFjQxgf0SeTq5KG5iSTyl1u/mMwg6t0OOdQFMpnr3P/SBttqlZYy8pt0w4MOelqn/VPg
         TRundvIdsKRO3Tlpu5+RMqP8bMDFt5tZdBmMI=
In-Reply-To: <4A76E6AA.2040608-JasiFyN5vQG662+jY7v6MhvVK+yQ3ZXh@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: Arnd Hannemann <hannemann-JasiFyN5vQG662+jY7v6MhvVK+yQ3ZXh@public.gmane.org>
Cc: "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Mon, Aug 3, 2009 at 4:31 PM, Arnd
Hannemann<hannemann-JasiFyN5vQG662+jY7v6MhvVK+yQ3ZXh@public.gmane.org> wrote:
> Martin-=C3=89ric Racine wrote:
>> On Mon, Aug 3, 2009 at 4:19 PM, Arnd
>> Hannemann<hannemann-JasiFyN5vQG662+jY7v6MhvVK+yQ3ZXh@public.gmane.org> wrote:
>>> Martin-=C3=89ric Racine wrote:
>>>> (non-subscriber post; please keep me in CC)
>>>>
>>>> Greetings,
>>>>
>>>> Having previously reported two issues via Ubuntu's bug tracker and=
 not
>>>> found any answer, I thought I'd approach the LKML with the issues =
at
>>>> stake.
>>>>
>>>> 1) Since kernel 2.6.23, one cannot boot hardware based on the Geod=
e
>>>> SCx200 series. Partial answers about the most plausible cause have
>>>> been found by the target hardware's manufacturer as explained at
>>>> https://bugs.launchpad.net/ubuntu/+source/linux/+bug/241307
>>>>
>>>> 2) Since kernel 2.6.31-rc4, one cannot boot hardware based on the
>>>> Geode LX800 as described at
>>>> https://bugs.launchpad.net/ubuntu/+source/linux/+bug/396286
>>>>
>>>> In case either of these issues was already reported and there is a
>>>> know fix or work-around, I'd love to hear more. Otherwise, please =
feel
>>>> free to contact me for additional details.
>>>>
>>> Just to give a data point:
>>> 2.6.31-rc1,2,3,4,5 were/are running all fine on my Geode LX800
>>> (http://www.pcengines.ch/alix2d2.htm) so it seems something
>>> board or .config specific.
>>
>> Thank you for your answer, Arnd.
>>
>> Could you please send me a copy of your .config so that I can compar=
e
>> it with the one used on Ubuntu kernels?
>
> Sure. Config for 2.6.31-rc5 is attached.

Could you try enabling CONFIG_FS_POSIX_ACL in your config and building
a new kernel? Does it still boot?

Martin-=C3=89ric
