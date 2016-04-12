From: Guenter Roeck <linux-0h96xk9xTtrk1uMJSBkQmQ@public.gmane.org>
Subject: Re: [PATCH] watchdog: dw_wdt: dont build for avr32
Date: Tue, 12 Apr 2016 06:06:19 -0700
Message-ID: <570CF2CB.2050200@roeck-us.net>
References: <1460440303-20640-1-git-send-email-sudipm.mukherjee@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=roeck-us.net; s=default; h=Content-Transfer-Encoding:Content-Type:
	In-Reply-To:MIME-Version:Date:Message-ID:From:Cc:References:To:Subject;
	bh=0Z72bS8NuB84O1LPbjqkfSM3qHxd9F5fWeEXjIn65Lo=; b=j58wEznkkzijnJVi1kU+t+u53h
	Lv8TOrNPC8VAbZfzKjVyOgQoSXG4VtfvPSOYYGfVxSF+/BUXMrT3omCjUAcvGzQqGKkh8P5lw8NPI
	6YeXJvEuNIq/a3+abkRoB/HMzpWXARdnANkmnP0btHyaNBeaf4t4arDiccvg+5hopkSYNtBohxhul
	UtHZuGpXukAGVKjmb0gne4gRoGKII9B3MSwhuMBoSVcSgY5zkkPxg73xSZVBXSG6VBuIN7VUqXr0A
	0tc/HtbNfJhZ1qRPT2G+FCwUcZLIR/sVuM3dUHEkK4iHjqBVPdFd93hXMXBdFhwNCvS33ns2Hz69W
	2hEqwbAQ==;
In-Reply-To: <1460440303-20640-1-git-send-email-sudipm.mukherjee-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Sudip Mukherjee <sudipm.mukherjee-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Wim Van Sebroeck <wim-IQzOog9fTRqzQB+pC5nmwQ@public.gmane.org>, Haavard Skinnemoen <hskinnemoen-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Hans-Christian Egtvedt <egtvedt-BrfabpQBY5qlHtIdYg32fQ@public.gmane.org>
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-watchdog-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On 04/11/2016 10:51 PM, Sudip Mukherjee wrote:
> The build of avr32 allmodconfig fails with the error:
> ERROR: "__avr32_udiv64" [drivers/watchdog/kempld_wdt.ko] undefined!
>
This means there is a direct 64 bit divide operation in the driver,
which we should identify and fix.

Guenter

> Exclude this driver from the build of avr32.
>
> Signed-off-by: Sudip Mukherjee <sudip.mukherjee-4yDnlxn2s6sWdaTGBSpHTA@public.gmane.org>
> ---
>
> avr32 build log is at:
> https://travis-ci.org/sudipm-mukherjee/parport/jobs/122158665
>
>   drivers/watchdog/Kconfig | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
> index fb94765..61041ba 100644
> --- a/drivers/watchdog/Kconfig
> +++ b/drivers/watchdog/Kconfig
> @@ -981,7 +981,7 @@ config HP_WATCHDOG
>
>   config KEMPLD_WDT
>   	tristate "Kontron COM Watchdog Timer"
> -	depends on MFD_KEMPLD
> +	depends on MFD_KEMPLD && !AVR32
>   	select WATCHDOG_CORE
>   	help
>   	  Support for the PLD watchdog on some Kontron ETX and COMexpress
>
