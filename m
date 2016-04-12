From: Andy Shevchenko <andy.shevchenko-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH] watchdog: dw_wdt: dont build for avr32
Date: Tue, 12 Apr 2016 21:17:43 +0300
Message-ID: <CAHp75Vd28EChCHs0YTKrF_31OsEzJcgX8XFRwMmy9WGOeukTMg@mail.gmail.com>
References: <1460440303-20640-1-git-send-email-sudipm.mukherjee@gmail.com>
	<570CF2CB.2050200@roeck-us.net>
	<570CFA90.4060100@gmail.com>
	<CAHp75VcrmiP0GWR-zCBmqc7zA6uiC4dD8-HDikmWZxyEwXkRLw@mail.gmail.com>
	<20160412180128.GA6965@roeck-us.net>
Mime-Version: 1.0
Return-path: <linux-watchdog-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc;
        bh=m35gSDKM2PvV9tL3720bdz9dtlAWaJpw9/XmJQ4bB7s=;
        b=sDoZWfmjw4UJeS6gXCIhYKVDtHOxCw5gcefHuxqGft3FTX3kIIbogmTZdcWCAkgYiG
         /98ELbdfxPTui4etA0kNhWlO3u6nZBS6RXjosK/bI9+Iv9wu301jeh6Q5c+E06lyKCcb
         c8AeranZH5TYPcXbGjsYhrqX8qh6r9AtTz5/X+hfja0PK5kbPS8joda+XYZCv3++89Px
         MgFNKg0W2jPfWwW9MwyEk706gItJcdy9TzH4ym8Pt5rmKnWWAqRFuKlF2k/IUKx2w0Gj
         W+RDsmNJlKQ8k3U/7rtIlnUUyWG/au2flS31wjDYmO9qnZVmF1edeQ8v9Skcfk3UlWUV
         +ObQ==
In-Reply-To: <20160412180128.GA6965-0h96xk9xTtrk1uMJSBkQmQ@public.gmane.org>
Sender: linux-watchdog-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Guenter Roeck <linux-0h96xk9xTtrk1uMJSBkQmQ@public.gmane.org>
Cc: Sudip Mukherjee <sudipm.mukherjee-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Wim Van Sebroeck <wim-IQzOog9fTRqzQB+pC5nmwQ@public.gmane.org>, Haavard Skinnemoen <hskinnemoen-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Hans-Christian Egtvedt <egtvedt-BrfabpQBY5qlHtIdYg32fQ@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-watchdog-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On Tue, Apr 12, 2016 at 9:01 PM, Guenter Roeck <linux-0h96xk9xTtrk1uMJSBkQmQ@public.gmane.org> wrote:
> On Tue, Apr 12, 2016 at 05:58:20PM +0300, Andy Shevchenko wrote:
>> On Tue, Apr 12, 2016 at 4:39 PM, Sudip Mukherjee
>> <sudipm.mukherjee-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
>> > On Tuesday 12 April 2016 06:36 PM, Guenter Roeck wrote:
>> >>

> Sorry, I am missing something. do_div() should work fine with any 32 bit value
> as divisor, no matter what that value is. Why does it fail here ? And why does
> it work if I pass 0x1fffff as second parameter to do_div() directly ?

Perhaps compare assembly code in both cases?



-- 
With Best Regards,
Andy Shevchenko
--
To unsubscribe from this list: send the line "unsubscribe linux-watchdog" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
