From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
Subject: Re: [PATCH v2] net: phy: spi_ks8995: add dependency on GPIO
Date: Fri, 19 Feb 2016 13:59:09 +0530
Message-ID: <20160219082909.GA6312@sudip-pc>
References: <1455372195-10825-1-git-send-email-sudipm.mukherjee@gmail.com>
 <20160216.203606.1431228679408727525.davem@davemloft.net>
Mime-Version: 1.0
Return-path: <linux-kernel-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=95YD4JjdlHYbzD4QT6xMJHM1TGRu3l38lUXymEEd72s=;
        b=tL5bsY1ggsmoRoCvZq459DLI253/Q8IeflFFqcjWGiyiOFRZIBFxYQedOLjc/xJot+
         +MC7H098I4XoLIY74MdTLayBX+IRNy7VJkBlKU+ewyKle7dDo3wzTlPE7XWy48lXBcx8
         Kjk/5+faCxYnqHXPpUNrqQvOZCXtWDnx1yLlNdvFUgWYwfsOws0Uc3rySKUTozkn0Qfe
         apLosA9zL+MLYsWA4yfx8B3t4V+QDOpC5Y/sgKQqKvusGa+qps2eqXgtQE9DRElz35aX
         1ZFu8uA9tqMg1dby+NeWsWc8dKlVdYQBXTafmKgkl8DO+g55dPRnvyZF1o4tjX2dFhl8
         bcSw==
Content-Disposition: inline
In-Reply-To: <20160216.203606.1431228679408727525.davem@davemloft.net>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: David Miller <davem@davemloft.net>
Cc: f.fainelli@gmail.com, linux-kernel@vger.kernel.org, kernel-testers@vger.kernel.org, netdev@vger.kernel.org, geert@linux-m68k.org, helmut.buchsbaum@gmail.com

On Tue, Feb 16, 2016 at 08:36:06PM -0500, David Miller wrote:
> From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
> Date: Sat, 13 Feb 2016 19:33:15 +0530
> 
> > The builds of allmodconfig of s390, m68k, tilegx, tilepro is failing
> > with the error:
> >  drivers/net/phy/spi_ks8995.c:477:3: error: implicit declaration of function 'gpiod_set_value'
> >  drivers/net/phy/spi_ks8995.c:477:19: error: implicit declaration of function 'gpio_to_desc'
> > 
> > GPIO is now used to reset the switch so we should have a dependency on
> > GPIOLIB. While adding the dependency also add COMPILE_TEST so that we
> > can build test it.
> > 
> > Fixes: cd6f288cbaab ("net: phy: spi_ks8995: add support for resetting switch using GPIO")
> > Cc: Helmut Buchsbaum <helmut.buchsbaum@gmail.com>
> > Signed-off-by: Sudip Mukherjee <sudip@vectorindia.org>
> > ---
> > 
> > v2: added COMPILE_TEST and gpio/consumer.h
> 
> I'm going to apply Arnd's patch because it properly removes the
> unnecessary linux/gpio.h include.

I think Arnd's patch is still not applied as we are still having build
failures for the implicit declarations. Or you want me to send v3 after
removing unnecessary linux/gpio.h include?

regards
suduo
