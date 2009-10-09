From: Michael Tokarev <mjt-XAri/EZa3C4vJsYlp49lxw@public.gmane.org>
Subject: Re: wrong final bzImage build (regading #14270)
Date: Sat, 10 Oct 2009 01:27:19 +0400
Message-ID: <4ACFAAB7.4000308@msgid.tls.msk.ru>
References: <4ACF460E.7000901@msgid.tls.msk.ru> <20091009145825.GE5311@lenovo> <4ACF9184.9040104@msgid.tls.msk.ru> <200910092202.51208.a.miskiewicz@gmail.com> <4ACFA36F.6000105@zytor.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <4ACFA36F.6000105-YMNOUZJC4hwAvxtiuMwx3w@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "H. Peter Anvin" <hpa-YMNOUZJC4hwAvxtiuMwx3w@public.gmane.org>
Cc: Arkadiusz Miskiewicz <a.miskiewicz-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Cyrill Gorcunov <gorcunov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Sam Ravnborg <sam-uyr5N9Q2VtJg9hUCZPvPmw@public.gmane.org>

H. Peter Anvin wrote:
> On 10/09/2009 01:02 PM, Arkadiusz Miskiewicz wrote:
>> I had exactly this problem few weeks ago with pdksh as /bin/sh (and 
>> bugreported to author of that change). As I workaround I used /bin/echo but 
>> using printf is more sane/portable.
>>
> 
> Yes, using printf is the right thing to do.
> 
> A patch would be appreciated.

Come on, it's just a one-word change (s/echo/printf/ in
scripts/Makefile.lib).

But it should go to Sam's tree first I guess, which already
has s|echo|/bin/echo| so it'll conflict.
It's easier to change it in whatever tree it will be changed
without complete patches.

/mjt
