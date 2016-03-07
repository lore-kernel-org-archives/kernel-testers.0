From: Sudip Mukherjee <sudipm.mukherjee-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH] iio: adc: imx25-gcq: fix do_div
Date: Mon, 7 Mar 2016 16:36:32 +0530
Message-ID: <20160307110632.GA10337@sudip-pc>
References: <1457009513-7069-1-git-send-email-sudipm.mukherjee@gmail.com>
 <56DB28BF.9070508@kernel.org>
 <8010548.jDMIC4yOG6@adelgunde>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=3aMxFtJCYYPESwXA8N62MiBg5WdlgIv25fv1o8do7Ho=;
        b=bYGGhsAcoVVNPhQKS0W8PbN9Cgg1hhm2E1Zzqn0jhqYcwZLrPFtA13d+hhmILPUVH7
         I8bkOobm8w8kDEf1wfk5pyZnzIK0GG1glxatNwVy0SrGmObT0W/qM3v67res/W0/WJ4m
         w2j84XawGiW+5bnyFLjbKKxzs/z0xypQaN2cmfWKehyu46YAXuC+rH8aUswzjRlFL5xO
         gxNwT2TA+TnViI0fWLSwTWk7Xp8ZB5uLcL4P8tHus72KRG/oDAExo3ztzn2NgSm2uiki
         1fik8zYqUgz+W9B7W6rS5yENF/DAcaMP8dbH2ny0XsLjHVLd5YEr9g6JPkW852oYQAH5
         cKaQ==
Content-Disposition: inline
In-Reply-To: <8010548.jDMIC4yOG6@adelgunde>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Markus Pargmann <mpa-bIcnvbaLZ9MEGnE8C9+IrQ@public.gmane.org>
Cc: Jonathan Cameron <jic23-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Hartmut Knaack <knaack.h-Mmb7MZpHnFY@public.gmane.org>, Lars-Peter Clausen <lars-Qo5EllUWu/uELgA04lAiVw@public.gmane.org>, Peter Meerwald <pmeerw-jW+XmwGofnusTnJN9+BGXg@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-iio-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On Mon, Mar 07, 2016 at 10:01:34AM +0100, Markus Pargmann wrote:
> Hi,
> 
> On Saturday 05 March 2016 18:43:11 Jonathan Cameron wrote:
> > On 03/03/16 12:51, Sudip Mukherjee wrote:
> > > We are getting build failure with tilepro allmodconfig with the error:
> > > 
> > > drivers/iio/adc/fsl-imx25-gcq.c:236:4: note: in expansion of macro 'do_div'
> > > do_div(priv->channel_vref_mv[reg], 1000);
> > >     ^
> > > 
> > > include/asm-generic/div64.h:198:17: note: expected 'uint64_t *
> > > 	{aka long long unsigned int *}' but argument is of type 'u32 *
> > > 	{aka unsigned int *}'
> > > 
> > > Create a temporary variable of type u64 and use that in do_div.
> > > 
> > > Signed-off-by: Sudip Mukherjee <sudip.mukherjee-4yDnlxn2s6sWdaTGBSpHTA@public.gmane.org>
> > Markus, can you take a quick look at this. 
> 
> Thanks. I think this was already fixed by Arnd.
> 	"iio: adc/imx25-gcq: move incorrect do_div"

It should. But I still have the same build failure with next-20160307
and not only tilepro, even m32r is also having the same build failure.

regards
sudip
