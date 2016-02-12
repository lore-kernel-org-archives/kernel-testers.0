From: Helmut Buchsbaum <helmut.buchsbaum-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH] net: phy: spi_ks8995: add dependency on GPIO
Date: Fri, 12 Feb 2016 13:33:58 +0100
Message-ID: <56BDD136.50208@gmail.com>
References: <1455272306-30251-1-git-send-email-sudipm.mukherjee@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=subject:to:references:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-type:content-transfer-encoding;
        bh=GbZ5BM2o0OO9iC7DiXO7MmTS1J2KAblQ7CbwG/uT91I=;
        b=RMoTZ85YoYQ03LFcHIyI5azOFh+4X6IirtOL+0t/bxGdTfy3MTzRnVQ154gDSSEWlh
         an/WdmdRT/5h+wTP2Hht+QnJr5Wj4RVWnZ5Mu2haxBEjf78AhYVRMZLHLzkDO6Hw34Ma
         RbE2A+8FZDS7HAHkqMHiE+5/3n5/8awryvK0MSs8Jt/fmpJqkMkzdB0oY4pZBubiCl0v
         gNPx3jBoPz75MV1n4FVjNxFmE4hbQdB9GuEjDpLd7hDwTQdl0dhSitX7ksHTpDZ/KQ37
         pezoRDtJ87l7x4yNs8lSLlOEx00jCStYK6vHyYvTE56pIQN9TxQD+jGXhEECGnTFQOO/
         eG1w==
In-Reply-To: <1455272306-30251-1-git-send-email-sudipm.mukherjee-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Sudip Mukherjee <sudipm.mukherjee-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Fainelli <f.fainelli-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, netdev-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, "David S. Miller" <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>

On 02/12/2016 11:18 AM, Sudip Mukherjee wrote:
> The builds of allmodconfig of s390, m68k, tilegx, tilepro is failing
> with the error:
>   drivers/net/phy/spi_ks8995.c:477:3: error: implicit declaration of function 'gpiod_set_value'
>   drivers/net/phy/spi_ks8995.c:477:19: error: implicit declaration of function 'gpio_to_desc'
>
> GPIO is now used to reset the switch so we should have a dependency on
> GPIOLIB.
>
> Fixes: cd6f288cbaab ("net: phy: spi_ks8995: add support for resetting switch using GPIO")
> Cc: Helmut Buchsbaum <helmut.buchsbaum-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Signed-off-by: Sudip Mukherjee <sudip-ofJRbWXBVFamYgehrs7/Lw@public.gmane.org>
> ---
>   drivers/net/phy/Kconfig | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/net/phy/Kconfig b/drivers/net/phy/Kconfig
> index f0a7702..c6a4fe1 100644
> --- a/drivers/net/phy/Kconfig
> +++ b/drivers/net/phy/Kconfig
> @@ -261,4 +261,4 @@ endif # PHYLIB
>
>   config MICREL_KS8995MA
>   	tristate "Micrel KS8995MA 5-ports 10/100 managed Ethernet switch"
> -	depends on SPI
> +	depends on SPI && GPIOLIB
>
You're definitely right! This somehow slipped through, sorry for that!
