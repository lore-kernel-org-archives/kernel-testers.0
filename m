From: Michael Tokarev <mjt-XAri/EZa3C4vJsYlp49lxw@public.gmane.org>
Subject: Re: wrong final bzImage build (regading #14270)
Date: Fri, 09 Oct 2009 21:14:08 +0400
Message-ID: <4ACF6F60.6040606@msgid.tls.msk.ru>
References: <4ACF460E.7000901@msgid.tls.msk.ru> <20091009145825.GE5311@lenovo> <4ACF6CF8.4060204@zytor.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <4ACF6CF8.4060204-YMNOUZJC4hwAvxtiuMwx3w@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
To: "H. Peter Anvin" <hpa-YMNOUZJC4hwAvxtiuMwx3w@public.gmane.org>
Cc: Cyrill Gorcunov <gorcunov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Sam Ravnborg <sam-uyr5N9Q2VtJg9hUCZPvPmw@public.gmane.org>

H. Peter Anvin =D0=BF=D0=B8=D1=88=D0=B5=D1=82:
> On 10/09/2009 07:58 AM, Cyrill Gorcunov wrote:
>> Peter and Sam CC'ed
>>
>> [Michael Tokarev - Fri, Oct 09, 2009 at 06:17:50PM +0400]
>>> Ok, finally the mystery solved.  After a week of
>>> digging.
>>>
>>> The original problem was titled "Cannot boot on
>>> a PIII Celeron", and Rafael filed a bug #14270
>>> for this.
>>>
>>> In short, what I observed was that a new kernel
>>> (2.6.31) fails to boot on a PIII Celeron machine.
>>> But changing just the CPU to plain PIII and voila,
>>> it now works.  I don't know why it behaved this
>>> way, but I found where was the problem, finally.
>=20
> We should switch to printf here.  Hexadecimal constants in echo aren'=
t
> guaranteed by POSIX.

That's what I initially proposed.  However, as Scott Olson pointed
out, there's already a fix for this:

http://lkml.org/lkml/2009/8/19/84
http://patchwork.kernel.org/patch/42564/

which uses still-non-portable /bin/echo.

(I wish I knew about it a week before now - it wasn't a pleasant week f=
or me).

Still an interesting result.  I can understand if it failed
for systems with smaller amounts of memory, -- nope, it fails
with Celeron on a 64Mb system, but works on the same system
if I replace the CPU to a real PIII...  Fun.

/mjt
