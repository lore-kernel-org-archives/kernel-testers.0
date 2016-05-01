From: Guenter Roeck <linux-0h96xk9xTtrk1uMJSBkQmQ@public.gmane.org>
Subject: Re: [PATCH] watchdog: dw_wdt: dont build for avr32
Date: Sat, 30 Apr 2016 17:04:40 -0700
Message-ID: <57254818.5020008@roeck-us.net>
References: <1460440303-20640-1-git-send-email-sudipm.mukherjee@gmail.com>
 <570CF2CB.2050200@roeck-us.net> <570CFA90.4060100@gmail.com>
 <CAHp75VcrmiP0GWR-zCBmqc7zA6uiC4dD8-HDikmWZxyEwXkRLw@mail.gmail.com>
 <20160412180128.GA6965@roeck-us.net> <20160430183828.GC25043@sudip-laptop>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=roeck-us.net; s=default; h=Content-Transfer-Encoding:Content-Type:
	In-Reply-To:MIME-Version:Date:Message-ID:From:Cc:References:To:Subject;
	bh=whKpViQFJ5HYnwzyD1afD/mW9ldR3wBqa+0akXqSuaQ=; b=Q6g7J3BsC8214loys/h6JHNoQq
	88vcLezkqrzAIqEYo5KY+BFHOp/Y7hn2BooTj/7+v9z/w9ucJP+JalTHE60PF/6mPbO80mrsYkkoe
	oooKUK4731Pl4Sg5yDZUf064Pelkw/iTrDAtRRCbuywfwkycF7g2HdUF6FfdrXZtSxW2RC9Pr2JxB
	EDKJtrG5NDLnFvNH6E0qSzmI6ounOssQxoAB5OIaooZHEFs5fZA2YUTnxTFnfLGAYOS/dsRnPt1/y
	qTIchAW6wVaOVEhpG1tB8ZqvWF30ndrg+tQxBMO8JXa5t2dA9/UixAxaQeJwwwBrK4h1IsP5dtKEC
	scoVO5Hw==;
In-Reply-To: <20160430183828.GC25043@sudip-laptop>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Sudip Mukherjee <sudipm.mukherjee-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Andy Shevchenko <andy.shevchenko-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Wim Van Sebroeck <wim-IQzOog9fTRqzQB+pC5nmwQ@public.gmane.org>, Haavard Skinnemoen <hskinnemoen-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Hans-Christian Egtvedt <egtvedt-BrfabpQBY5qlHtIdYg32fQ@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-watchdog-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Chris Mason <clm-b10kYP2dOMg@public.gmane.org>

On 04/30/2016 11:38 AM, Sudip Mukherjee wrote:
> On Tue, Apr 12, 2016 at 11:01:28AM -0700, Guenter Roeck wrote:
>> On Tue, Apr 12, 2016 at 05:58:20PM +0300, Andy Shevchenko wrote:
>>> On Tue, Apr 12, 2016 at 4:39 PM, Sudip Mukherjee
>>> <sudipm.mukherjee-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
>>>> On Tuesday 12 April 2016 06:36 PM, Guenter Roeck wrote:
>>>>>
>>>>> On 04/11/2016 10:51 PM, Sudip Mukherjee wrote:
>>>>>>
>>>>>> The build of avr32 allmodconfig fails with the error:
>>>>>> ERROR: "__avr32_udiv64" [drivers/watchdog/kempld_wdt.ko] undefined!
>>>>>>
>>>>> This means there is a direct 64 bit divide operation in the driver,
>>>>> which we should identify and fix.
>>>
>>> This driver will quite likely never be used on AVR32. Do we need to
>>> fix this due to some other architectures?
>>>
>>>> yes, there is.
>>>>
>>>> in function: kempld_wdt_set_stage_timeout()
>>>> remainder = do_div(stage_timeout64, prescaler);
>>>
>>>> Any idea how to fix it?
>>>
>>> Not easy, however, prescaler value is ((1 << 21) - 1) which someone
>>> might consider as (1 << 21) with lost in precision.
>>>
>>> Thus, shift on 20 bits right, add last bit to the value and shift on 1
>>> bit right more.
>>>
>> Sorry, I am missing something. do_div() should work fine with any 32 bit value
>> as divisor, no matter what that value is. Why does it fail here ? And why does
>> it work if I pass 0x1fffff as second parameter to do_div() directly ?
>
> Please let me know what i can do here to help solve the problem.
> linux-next continues to fail for avr32, and to make matters worse we
> also have the similar problem in btrfs.
>
> ERROR: "__avr32_udiv64" [fs/btrfs/btrfs.ko] undefined!
> ERROR: "__avr32_udiv64" [drivers/watchdog/kempld_wdt.ko] undefined!
>

Pretty much what I suspected would happen. Oddly enough, the symbol was defined
in early avr32 patch sets [1], but dropped in the final commit after some
discussion [2]. Makes me wonder if the problem was always known.

Guenter

> Adding Chris to CC if he has some idea how to solve this error for btrfs.
> Build log for next-20160429 is at:
> https://travis-ci.org/sudipm-mukherjee/parport/jobs/126581065
>
> regards
> sudip
>
---
[1] https://kldp.org/files/linux-2.6.16.11-avr32-20060626.patch_.txt
[2] http://fa.linux.kernel.narkive.com/4UhaxiM4/avr32-architecture-patch-against-linux-2-6-18-rc1-available
