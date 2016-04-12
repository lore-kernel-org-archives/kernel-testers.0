From: Andy Shevchenko <andy.shevchenko-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH] watchdog: dw_wdt: dont build for avr32
Date: Tue, 12 Apr 2016 17:58:20 +0300
Message-ID: <CAHp75VcrmiP0GWR-zCBmqc7zA6uiC4dD8-HDikmWZxyEwXkRLw@mail.gmail.com>
References: <1460440303-20640-1-git-send-email-sudipm.mukherjee@gmail.com>
	<570CF2CB.2050200@roeck-us.net>
	<570CFA90.4060100@gmail.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc;
        bh=GC9Kgh6RA2IWzZsr8oF5U4wQGi9XrreTSwYFeA4GVls=;
        b=jJhzdxjAt1O4+Oz4Ihi5a+8GyA8WPz0lzZqF7bOgijenUy+cr4CJIyjXG6Y+mvE+yW
         xZmHaBnenCJaW9J5G5d8dmPLCwQn4XyruiMOPwezZdlPHAEu/w8uDvDKnm+G+U45bW4L
         3QakbhWjTxscamhNx5kAFkT4t0hFQThi/5I1sFbu8c5tTk1yF2kC4gbrfR0GD5qw9XbN
         05DipKI4qvq8UoMObJLPoghRzp09BWGJDy15HBVhVbXUsGTP2Sqhp2aUJeWB86zW4Fmc
         3L5gSfJqj20HFleT8C9t8DulhdJWL1za5WNrgXFWwhN5HmlanLunb/adXL6+ovw8sNh7
         BcrQ==
In-Reply-To: <570CFA90.4060100-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Sudip Mukherjee <sudipm.mukherjee-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Guenter Roeck <linux-0h96xk9xTtrk1uMJSBkQmQ@public.gmane.org>, Wim Van Sebroeck <wim-IQzOog9fTRqzQB+pC5nmwQ@public.gmane.org>, Haavard Skinnemoen <hskinnemoen-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Hans-Christian Egtvedt <egtvedt-BrfabpQBY5qlHtIdYg32fQ@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-watchdog-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On Tue, Apr 12, 2016 at 4:39 PM, Sudip Mukherjee
<sudipm.mukherjee-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
> On Tuesday 12 April 2016 06:36 PM, Guenter Roeck wrote:
>>
>> On 04/11/2016 10:51 PM, Sudip Mukherjee wrote:
>>>
>>> The build of avr32 allmodconfig fails with the error:
>>> ERROR: "__avr32_udiv64" [drivers/watchdog/kempld_wdt.ko] undefined!
>>>
>> This means there is a direct 64 bit divide operation in the driver,
>> which we should identify and fix.

This driver will quite likely never be used on AVR32. Do we need to
fix this due to some other architectures?

> yes, there is.
>
> in function: kempld_wdt_set_stage_timeout()
> remainder = do_div(stage_timeout64, prescaler);

> Any idea how to fix it?

Not easy, however, prescaler value is ((1 << 21) - 1) which someone
might consider as (1 << 21) with lost in precision.

Thus, shift on 20 bits right, add last bit to the value and shift on 1
bit right more.

-- 
With Best Regards,
Andy Shevchenko
