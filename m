From: Guenter Roeck <linux-0h96xk9xTtrk1uMJSBkQmQ@public.gmane.org>
Subject: Re: [PATCH] watchdog: dw_wdt: dont build for avr32
Date: Sat, 30 Apr 2016 17:36:51 -0700
Message-ID: <20160501003651.GA28804@roeck-us.net>
References: <1460440303-20640-1-git-send-email-sudipm.mukherjee@gmail.com>
 <570CF2CB.2050200@roeck-us.net>
 <570CFA90.4060100@gmail.com>
 <CAHp75VcrmiP0GWR-zCBmqc7zA6uiC4dD8-HDikmWZxyEwXkRLw@mail.gmail.com>
 <20160412180128.GA6965@roeck-us.net>
 <20160430183828.GC25043@sudip-laptop>
Mime-Version: 1.0
Return-path: <linux-watchdog-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=roeck-us.net; s=default; h=In-Reply-To:Content-Type:MIME-Version:References
	:Message-ID:Subject:Cc:To:From:Date;
	bh=36tNUhS3+lFg3yZsW2xf494HVaiovSKHDaroH43ScQo=; b=1VDFFyumITPj8MZM83JFzw9lbB
	ZKSyH/tdhbQXM0ay+WCVBZui2vVwuBzVKSQI8gf7c94CHZodTmHW3Vwr9I/31oYeYrbeLHp+qCb9J
	GUEbyybdT6PA+rQofV/EOkVJKIoIp2B1goFMYM6OHuXxEujxnCxAm0X05eLwiiaQx1oXWjqhLTE6O
	w7LEoURZIJAY9gJwp04PvAb5ngaMYLqujG+U18wZ53F+nUe3uwqiG2bHhuDy3YJgpBCm8QQPjMEpj
	/7H0NuoQXQlbWCyvu7gZv/bCYf/f6Q3d7uUexZG6vi03Wp4AKlEdHLq62GoJAK0dTejF6ZZVaJUjO
	En6nTyzA==;
Content-Disposition: inline
In-Reply-To: <20160430183828.GC25043@sudip-laptop>
Sender: linux-watchdog-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Sudip Mukherjee <sudipm.mukherjee-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Andy Shevchenko <andy.shevchenko-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Wim Van Sebroeck <wim-IQzOog9fTRqzQB+pC5nmwQ@public.gmane.org>, Haavard Skinnemoen <hskinnemoen-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Hans-Christian Egtvedt <egtvedt-BrfabpQBY5qlHtIdYg32fQ@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-watchdog-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Chris Mason <clm-b10kYP2dOMg@public.gmane.org>

On Sat, Apr 30, 2016 at 07:38:28PM +0100, Sudip Mukherjee wrote:
> On Tue, Apr 12, 2016 at 11:01:28AM -0700, Guenter Roeck wrote:
> > On Tue, Apr 12, 2016 at 05:58:20PM +0300, Andy Shevchenko wrote:
> > > On Tue, Apr 12, 2016 at 4:39 PM, Sudip Mukherjee
> > > <sudipm.mukherjee-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
> > > > On Tuesday 12 April 2016 06:36 PM, Guenter Roeck wrote:
> > > >>
> > > >> On 04/11/2016 10:51 PM, Sudip Mukherjee wrote:
> > > >>>
> > > >>> The build of avr32 allmodconfig fails with the error:
> > > >>> ERROR: "__avr32_udiv64" [drivers/watchdog/kempld_wdt.ko] undefined!
> > > >>>
> > > >> This means there is a direct 64 bit divide operation in the driver,
> > > >> which we should identify and fix.
> > > 
> > > This driver will quite likely never be used on AVR32. Do we need to
> > > fix this due to some other architectures?
> > > 
> > > > yes, there is.
> > > >
> > > > in function: kempld_wdt_set_stage_timeout()
> > > > remainder = do_div(stage_timeout64, prescaler);
> > > 
> > > > Any idea how to fix it?
> > > 
> > > Not easy, however, prescaler value is ((1 << 21) - 1) which someone
> > > might consider as (1 << 21) with lost in precision.
> > > 
> > > Thus, shift on 20 bits right, add last bit to the value and shift on 1
> > > bit right more.
> > > 
> > Sorry, I am missing something. do_div() should work fine with any 32 bit value
> > as divisor, no matter what that value is. Why does it fail here ? And why does
> > it work if I pass 0x1fffff as second parameter to do_div() directly ?
> 
> Please let me know what i can do here to help solve the problem.
> linux-next continues to fail for avr32, and to make matters worse we
> also have the similar problem in btrfs.
> 
> ERROR: "__avr32_udiv64" [fs/btrfs/btrfs.ko] undefined!
> ERROR: "__avr32_udiv64" [drivers/watchdog/kempld_wdt.ko] undefined!
> 
> Adding Chris to CC if he has some idea how to solve this error for btrfs.
> Build log for next-20160429 is at:
> https://travis-ci.org/sudipm-mukherjee/parport/jobs/126581065
> 

Try the patch below.

Guenter

---
From d2f541c46ae2bf599d9aa3be0682cfac76742ebf Mon Sep 17 00:00:00 2001
From: Guenter Roeck <linux-0h96xk9xTtrk1uMJSBkQmQ@public.gmane.org>
Date: Sat, 30 Apr 2016 17:29:14 -0700
Subject: [PATCH] avr32: __div64_const32 is not ok

Building avr32 images may fail with errors such as

ERROR: "__avr32_udiv64" [fs/btrfs/btrfs.ko] undefined!
ERROR: "__avr32_udiv64" [drivers/watchdog/kempld_wdt.ko] undefined!

gcc for avr32 generates those symbols for certain constants used
as divisor in do_div(). The problem can be avoided by setting
__div64_const32_is_OK to false for the architecture.

Cc: Sudip Mukherjee <sudipm.mukherjee-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Signed-off-by: Guenter Roeck <linux-0h96xk9xTtrk1uMJSBkQmQ@public.gmane.org>
---
 arch/avr32/include/asm/div64.h | 3 +++
 1 file changed, 3 insertions(+)
 create mode 100644 arch/avr32/include/asm/div64.h

diff --git a/arch/avr32/include/asm/div64.h b/arch/avr32/include/asm/div64.h
new file mode 100644
index 000000000000..1f3328e178df
--- /dev/null
+++ b/arch/avr32/include/asm/div64.h
@@ -0,0 +1,3 @@
+#define __div64_const32_is_OK	false
+
+#include <asm-generic/div64.h>
-- 
2.5.0

--
To unsubscribe from this list: send the line "unsubscribe linux-watchdog" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
