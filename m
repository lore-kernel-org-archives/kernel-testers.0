From: Guenter Roeck <linux-0h96xk9xTtrk1uMJSBkQmQ@public.gmane.org>
Subject: Re: [PATCH] watchdog: dw_wdt: dont build for avr32
Date: Tue, 12 Apr 2016 06:07:03 -0700
Message-ID: <570CF2F7.50206@roeck-us.net>
References: <1460440303-20640-1-git-send-email-sudipm.mukherjee@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=roeck-us.net; s=default; h=Content-Transfer-Encoding:Content-Type:
	In-Reply-To:MIME-Version:Date:Message-ID:From:Cc:References:To:Subject;
	bh=JWXFBg9LLe9D8cg6kRAGKV2F/29hVQrZrnADH5lGSbY=; b=kO4xHxcLbTUAk/PflJ/ODGCsvK
	BQHm2mRaF19SSnuUjVksbn0o6bRAW5YDdOOvKGi5WbOhbQpGv1A4hwX7p1G7HmYUd8rgXrv6frHXP
	OLVIVkZXaDBVs358FIFc0sMdMUffkrR8c4hnJP6ke/Y39CGCP8uz6z2YyZVKMYgnboEh9mmrQQ3l5
	m2T40rLtFLTYYENO4H8PUyfN+IBJVcbF2P8R2gQtfRb394K6+6tGYhM9LJBMbJUT+4lCCg5boSGIT
	+KBL9dV3R4wHFQ6GpEAO1e7VQwGd+DpvPiOqVICSOTIJMuVhc9uAV9ia+qUvmAPoPY70KvRAx1W2M
	Ol2JdbvQ==;
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
> Exclude this driver from the build of avr32.

Also, the subject line is wrong.

Guenter

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
