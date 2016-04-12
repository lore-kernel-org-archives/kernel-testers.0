From: Sudip Mukherjee <sudipm.mukherjee-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH] watchdog: dw_wdt: dont build for avr32
Date: Tue, 12 Apr 2016 19:09:28 +0530
Message-ID: <570CFA90.4060100@gmail.com>
References: <1460440303-20640-1-git-send-email-sudipm.mukherjee@gmail.com> <570CF2CB.2050200@roeck-us.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=message-id:date:from:user-agent:mime-version:to:cc:subject
         :references:in-reply-to:content-transfer-encoding;
        bh=N8jiIY34jacXdvwWEfdPeoF5tEfPsuxIlAq1c264f70=;
        b=STnO7HyDlSWeRtY77de8G1vJi3mcLWqGiZMQiTq9bRRuLyRTXdLk0RrtkFSYIAWFdh
         RZzWvrkiNvTaTMAaNabD9Ih1xZoj3uQtK8ZYl0XDtdtq9V7ElothXOZUGpg4y5yUsO66
         9UkwzlqCedDPvRVZbN51R2PRHzqDT9MzNMMLXe8TFLlisljIVcQb81R1q/LLc58NJ0DP
         UzBXObZe9focMQltZYysxoPMMDoWQb5JRg+laTiHHl8REilKY0ecTIhRzwP+Z/EjEgze
         6N+4dQc48MW8DPVn2pfAz0HqdWYE/IxPIw8rlvGCThiHHuOAaqB65wPRfqFYaycFTcGx
         tETg==
In-Reply-To: <570CF2CB.2050200-0h96xk9xTtrk1uMJSBkQmQ@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Guenter Roeck <linux-0h96xk9xTtrk1uMJSBkQmQ@public.gmane.org>, Wim Van Sebroeck <wim-IQzOog9fTRqzQB+pC5nmwQ@public.gmane.org>, Haavard Skinnemoen <hskinnemoen-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Hans-Christian Egtvedt <egtvedt-BrfabpQBY5qlHtIdYg32fQ@public.gmane.org>
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-watchdog-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On Tuesday 12 April 2016 06:36 PM, Guenter Roeck wrote:
> On 04/11/2016 10:51 PM, Sudip Mukherjee wrote:
>> The build of avr32 allmodconfig fails with the error:
>> ERROR: "__avr32_udiv64" [drivers/watchdog/kempld_wdt.ko] undefined!
>>
> This means there is a direct 64 bit divide operation in the driver,
> which we should identify and fix.

yes, there is.

in function: kempld_wdt_set_stage_timeout()
remainder = do_div(stage_timeout64, prescaler);

Any idea how to fix it?

regards
sudip
