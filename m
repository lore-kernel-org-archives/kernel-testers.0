From: "H. Peter Anvin" <hpa-YMNOUZJC4hwAvxtiuMwx3w@public.gmane.org>
Subject: Re: wrong final bzImage build (regading #14270)
Date: Fri, 09 Oct 2009 10:03:52 -0700
Message-ID: <4ACF6CF8.4060204@zytor.com>
References: <4ACF460E.7000901@msgid.tls.msk.ru> <20091009145825.GE5311@lenovo>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20091009145825.GE5311@lenovo>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Cyrill Gorcunov <gorcunov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Michael Tokarev <mjt-XAri/EZa3C4vJsYlp49lxw@public.gmane.org>, Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Sam Ravnborg <sam-uyr5N9Q2VtJg9hUCZPvPmw@public.gmane.org>

On 10/09/2009 07:58 AM, Cyrill Gorcunov wrote:
> Peter and Sam CC'ed
> 
> [Michael Tokarev - Fri, Oct 09, 2009 at 06:17:50PM +0400]
>> Ok, finally the mystery solved.  After a week of
>> digging.
>>
>> The original problem was titled "Cannot boot on
>> a PIII Celeron", and Rafael filed a bug #14270
>> for this.
>>
>> In short, what I observed was that a new kernel
>> (2.6.31) fails to boot on a PIII Celeron machine.
>> But changing just the CPU to plain PIII and voila,
>> it now works.  I don't know why it behaved this
>> way, but I found where was the problem, finally.
>>

We should switch to printf here.  Hexadecimal constants in echo aren't
guaranteed by POSIX.

	-hpa

-- 
H. Peter Anvin, Intel Open Source Technology Center
I work for Intel.  I don't speak on their behalf.
