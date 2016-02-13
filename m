From: Geert Uytterhoeven <geert-Td1EMuHUCqxL1ZNQvxDV9g@public.gmane.org>
Subject: Re: [PATCH] net: phy: spi_ks8995: add dependency on GPIO
Date: Sat, 13 Feb 2016 11:12:45 +0100
Message-ID: <CAMuHMdXRD-XJODqd1M+MWkseyJgU52GRniP_Ld_EOMSyWg+MVg@mail.gmail.com>
References: <1455272306-30251-1-git-send-email-sudipm.mukherjee@gmail.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:sender:in-reply-to:references:date:message-id:subject
         :from:to:cc:content-type;
        bh=RlkvwTpxvJviMsQl9ap/VBrEn8UvL2ViyCEi5q8iIN4=;
        b=AgeN2vYhdeg31c11Uy+l1JH310NUUr3NSAF7q5j30O4AGaMZXmxYYspWULAobKHGv/
         P7apcYdr7bETXFRBVG7kp5r1z9W/0fhRZdQteoAO9rPreJglPy3ctLwcEiGk027quCqE
         suMoVIe+LvDdj4XqY2fBLmlSUqUcNhzk19uQRh2XxtpdJw4a3v8QilUcCY8SsNR/wE8a
         d0aCnGBa9Q28+a+vswX+9wKfLZGJs+KvH5tsgXDjcvLFZCciT7HV421BesQ8bbxFOO+9
         lw03MzL0OxYdZvgRmoFAI/Npvm2BgE4tTaC5WnlrxHYwJnOc9KJ78Q/5uy0jY0skx1TG
         N0+A==
In-Reply-To: <1455272306-30251-1-git-send-email-sudipm.mukherjee-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Sudip Mukherjee <sudipm.mukherjee-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Florian Fainelli <f.fainelli-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, "netdev-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <netdev-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "David S. Miller" <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, Helmut Buchsbaum <helmut.buchsbaum-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Fri, Feb 12, 2016 at 11:18 AM, Sudip Mukherjee
<sudipm.mukherjee-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
> The builds of allmodconfig of s390, m68k, tilegx, tilepro is failing
> with the error:
>  drivers/net/phy/spi_ks8995.c:477:3: error: implicit declaration of function 'gpiod_set_value'
>  drivers/net/phy/spi_ks8995.c:477:19: error: implicit declaration of function 'gpio_to_desc'

Does that file include include/linux/gpio/consumer.h?
The GPIO subsystem provides dummies of these functions when CONFIG_GPIOLIB=n.

> GPIO is now used to reset the switch so we should have a dependency on
> GPIOLIB.
>
> Fixes: cd6f288cbaab ("net: phy: spi_ks8995: add support for resetting switch using GPIO")
> Cc: Helmut Buchsbaum <helmut.buchsbaum-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Signed-off-by: Sudip Mukherjee <sudip-ofJRbWXBVFamYgehrs7/Lw@public.gmane.org>
> ---
>  drivers/net/phy/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/net/phy/Kconfig b/drivers/net/phy/Kconfig
> index f0a7702..c6a4fe1 100644
> --- a/drivers/net/phy/Kconfig
> +++ b/drivers/net/phy/Kconfig
> @@ -261,4 +261,4 @@ endif # PHYLIB
>
>  config MICREL_KS8995MA
>         tristate "Micrel KS8995MA 5-ports 10/100 managed Ethernet switch"
> -       depends on SPI
> +       depends on SPI && GPIOLIB

I think that can become

    depends on SPI
    depends on GPIOLIB || COMPILE_TEST

after you've added the missing include.

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert-Td1EMuHUCqxL1ZNQvxDV9g@public.gmane.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
