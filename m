From: Jonathan Cameron <jic23-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: [PATCH] iio: adc: imx25-gcq: fix do_div
Date: Sat, 5 Mar 2016 18:43:11 +0000
Message-ID: <56DB28BF.9070508@kernel.org>
References: <1457009513-7069-1-git-send-email-sudipm.mukherjee@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-iio-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1457009513-7069-1-git-send-email-sudipm.mukherjee-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: linux-iio-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Sudip Mukherjee <sudipm.mukherjee-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Hartmut Knaack <knaack.h-Mmb7MZpHnFY@public.gmane.org>, Lars-Peter Clausen <lars-Qo5EllUWu/uELgA04lAiVw@public.gmane.org>, Peter Meerwald <pmeerw-jW+XmwGofnusTnJN9+BGXg@public.gmane.org>
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-iio-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Markus Pargmann <mpa-bIcnvbaLZ9MEGnE8C9+IrQ@public.gmane.org>

On 03/03/16 12:51, Sudip Mukherjee wrote:
> We are getting build failure with tilepro allmodconfig with the error:
> 
> drivers/iio/adc/fsl-imx25-gcq.c:236:4: note: in expansion of macro 'do_div'
> do_div(priv->channel_vref_mv[reg], 1000);
>     ^
> 
> include/asm-generic/div64.h:198:17: note: expected 'uint64_t *
> 	{aka long long unsigned int *}' but argument is of type 'u32 *
> 	{aka unsigned int *}'
> 
> Create a temporary variable of type u64 and use that in do_div.
> 
> Signed-off-by: Sudip Mukherjee <sudip.mukherjee-4yDnlxn2s6sWdaTGBSpHTA@public.gmane.org>
Markus, can you take a quick look at this. 

> ---
> 
> tilepro allmodconfig build log is at:
> https://travis-ci.org/sudipm-mukherjee/parport/jobs/113325889
> 
>  drivers/iio/adc/fsl-imx25-gcq.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/iio/adc/fsl-imx25-gcq.c b/drivers/iio/adc/fsl-imx25-gcq.c
> index 2fd1927..e0636d4 100644
> --- a/drivers/iio/adc/fsl-imx25-gcq.c
> +++ b/drivers/iio/adc/fsl-imx25-gcq.c
> @@ -174,6 +174,7 @@ static int mx25_gcq_setup_cfgs(struct platform_device *pdev,
>  	struct device *dev = &pdev->dev;
>  	unsigned int refp_used[4] = {};
>  	int ret, i;
> +	u64 temp;
>  
>  	/*
>  	 * Setup all configurations registers with a default conversion
> @@ -233,7 +234,9 @@ static int mx25_gcq_setup_cfgs(struct platform_device *pdev,
>  			priv->channel_vref_mv[reg] =
>  				regulator_get_voltage(priv->vref[refp]);
>  			/* Conversion from uV to mV */
> -			do_div(priv->channel_vref_mv[reg], 1000);
> +			temp = priv->channel_vref_mv[reg];
> +			do_div(temp, 1000);
> +			priv->channel_vref_mv[reg] = temp;
>  			break;
>  		case MX25_ADC_REFP_INT:
>  			priv->channel_vref_mv[reg] = 2500;
> 
