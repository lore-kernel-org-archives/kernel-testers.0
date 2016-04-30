From: Sudip Mukherjee <sudipm.mukherjee-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH] watchdog: dw_wdt: dont build for avr32
Date: Sat, 30 Apr 2016 19:38:28 +0100
Message-ID: <20160430183828.GC25043@sudip-laptop>
References: <1460440303-20640-1-git-send-email-sudipm.mukherjee@gmail.com>
 <570CF2CB.2050200@roeck-us.net>
 <570CFA90.4060100@gmail.com>
 <CAHp75VcrmiP0GWR-zCBmqc7zA6uiC4dD8-HDikmWZxyEwXkRLw@mail.gmail.com>
 <20160412180128.GA6965@roeck-us.net>
Mime-Version: 1.0
Return-path: <linux-watchdog-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=ECH0kPusUJlhleqfnE75eTEX/1ZusI9oVVodtOWS4gg=;
        b=Lv0+VR8A/jymdof9qGx6QU9/ercauSQ3UJ7OOa06fHFgSpAztDC5YMQLuntC45NGzC
         uCaD6PkQ8aptjeIs6tkrMna6rmS/uOdVVncX6j/B2HmgS33DkESnKJcFOUWmAm+MNH4j
         3h6UZpKUtlD0tkXclZtIt+vi1K99WxUw5CKRSfkAhA8JUW0K0iXtVHUeolsBjBK3iQ5X
         LcvE34T1mjgQFiafCWMbxuoh1HHNoYizZWec/5skx5HcgSKxGI0K5uWaaBAp1nKiB9wC
         dBeBQqh3JoXFJvBrfOsfitVkU+2ohnSPOSJczlbfuznuBhchlyMsYMYGCzw50xdLjQ3Z
         tjtw==
Content-Disposition: inline
In-Reply-To: <20160412180128.GA6965-0h96xk9xTtrk1uMJSBkQmQ@public.gmane.org>
Sender: linux-watchdog-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Guenter Roeck <linux-0h96xk9xTtrk1uMJSBkQmQ@public.gmane.org>
Cc: Andy Shevchenko <andy.shevchenko-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Wim Van Sebroeck <wim-IQzOog9fTRqzQB+pC5nmwQ@public.gmane.org>, Haavard Skinnemoen <hskinnemoen-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Hans-Christian Egtvedt <egtvedt-BrfabpQBY5qlHtIdYg32fQ@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-watchdog-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Chris Mason <clm-b10kYP2dOMg@public.gmane.org>

On Tue, Apr 12, 2016 at 11:01:28AM -0700, Guenter Roeck wrote:
> On Tue, Apr 12, 2016 at 05:58:20PM +0300, Andy Shevchenko wrote:
> > On Tue, Apr 12, 2016 at 4:39 PM, Sudip Mukherjee
> > <sudipm.mukherjee-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
> > > On Tuesday 12 April 2016 06:36 PM, Guenter Roeck wrote:
> > >>
> > >> On 04/11/2016 10:51 PM, Sudip Mukherjee wrote:
> > >>>
> > >>> The build of avr32 allmodconfig fails with the error:
> > >>> ERROR: "__avr32_udiv64" [drivers/watchdog/kempld_wdt.ko] undefined!
> > >>>
> > >> This means there is a direct 64 bit divide operation in the driver,
> > >> which we should identify and fix.
> > 
> > This driver will quite likely never be used on AVR32. Do we need to
> > fix this due to some other architectures?
> > 
> > > yes, there is.
> > >
> > > in function: kempld_wdt_set_stage_timeout()
> > > remainder = do_div(stage_timeout64, prescaler);
> > 
> > > Any idea how to fix it?
> > 
> > Not easy, however, prescaler value is ((1 << 21) - 1) which someone
> > might consider as (1 << 21) with lost in precision.
> > 
> > Thus, shift on 20 bits right, add last bit to the value and shift on 1
> > bit right more.
> > 
> Sorry, I am missing something. do_div() should work fine with any 32 bit value
> as divisor, no matter what that value is. Why does it fail here ? And why does
> it work if I pass 0x1fffff as second parameter to do_div() directly ?

Please let me know what i can do here to help solve the problem.
linux-next continues to fail for avr32, and to make matters worse we
also have the similar problem in btrfs.

ERROR: "__avr32_udiv64" [fs/btrfs/btrfs.ko] undefined!
ERROR: "__avr32_udiv64" [drivers/watchdog/kempld_wdt.ko] undefined!

Adding Chris to CC if he has some idea how to solve this error for btrfs.
Build log for next-20160429 is at:
https://travis-ci.org/sudipm-mukherjee/parport/jobs/126581065

regards
sudip
--
To unsubscribe from this list: send the line "unsubscribe linux-watchdog" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
