From: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH] iio: adc: imx25-gcq: fix do_div
Date: Wed, 16 Mar 2016 08:39:50 +0000
Message-ID: <20160316083950.GU13692@x1>
References: <1457009513-7069-1-git-send-email-sudipm.mukherjee@gmail.com>
 <56DB28BF.9070508@kernel.org>
 <8010548.jDMIC4yOG6@adelgunde>
 <20160307110632.GA10337@sudip-pc>
 <56E3F8D3.3020707@kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=7uW70/wb4x5qz3nUOZ6Bfm+4TEkUxhQxWyNQbcEzzUc=;
        b=drvJwje9T8ePv1lDi0ZtCNL4AqRyd41wREtPt3N79f8xW1YpacPXA9vm6vyPWGHLxs
         pS2tNFnyOxWqTXajI9JDLJrF8L4kMMJujhsAqWTFLzPxFIw+IS56uQ+Km1s91i+qps0k
         36jNdAlNlF4egv1x/LCYmjRS9ikpfhvLsZ07c=
Content-Disposition: inline
In-Reply-To: <56E3F8D3.3020707@kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="windows-1252"
To: Jonathan Cameron <jic23@kernel.org>
Cc: Sudip Mukherjee <sudipm.mukherjee@gmail.com>, Markus Pargmann <mpa@pengutronix.de>, Hartmut Knaack <knaack.h@gmx.de>, Lars-Peter Clausen <lars@metafoo.de>, Peter Meerwald <pmeerw@pmeerw.net>, linux-kernel@vger.kernel.org, kernel-testers@vger.kernel.org, linux-iio@vger.kernel.org

On Sat, 12 Mar 2016, Jonathan Cameron wrote:

> On 07/03/16 11:06, Sudip Mukherjee wrote:
> > On Mon, Mar 07, 2016 at 10:01:34AM +0100, Markus Pargmann wrote:
> >> Hi,
> >>
> >> On Saturday 05 March 2016 18:43:11 Jonathan Cameron wrote:
> >>> On 03/03/16 12:51, Sudip Mukherjee wrote:
> >>>> We are getting build failure with tilepro allmodconfig with the =
error:
> >>>>
> >>>> drivers/iio/adc/fsl-imx25-gcq.c:236:4: note: in expansion of mac=
ro 'do_div'
> >>>> do_div(priv->channel_vref_mv[reg], 1000);
> >>>>     ^
> >>>>
> >>>> include/asm-generic/div64.h:198:17: note: expected 'uint64_t *
> >>>> 	{aka long long unsigned int *}' but argument is of type 'u32 *
> >>>> 	{aka unsigned int *}'
> >>>>
> >>>> Create a temporary variable of type u64 and use that in do_div.
> >>>>
> >>>> Signed-off-by: Sudip Mukherjee <sudip.mukherjee@codethink.co.uk>
> >>> Markus, can you take a quick look at this.=20
> >>
> >> Thanks. I think this was already fixed by Arnd.
> >> 	"iio: adc/imx25-gcq: move incorrect do_div"
> >=20
> > It should. But I still have the same build failure with next-201603=
07
> > and not only tilepro, even m32r is also having the same build failu=
re.
> >=20
> Lee, did you pick the original fix from Arnd up?
>=20
> I can take this after the merge window if not.

Yes, it's in my tree.

--=20
Lee Jones
Linaro STMicroelectronics Landing Team Lead
Linaro.org =E2=94=82 Open source software for ARM SoCs
=46ollow Linaro: Facebook | Twitter | Blog
