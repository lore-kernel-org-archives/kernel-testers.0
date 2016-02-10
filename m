From: Sudip Mukherjee <sudipm.mukherjee-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH] Input: colibri-vf50-ts: fix implicit declaration
Date: Wed, 10 Feb 2016 15:34:16 +0530
Message-ID: <20160210100416.GA8872@sudip-pc>
References: <1455097547-31053-1-git-send-email-sudipm.mukherjee@gmail.com>
 <CAMuHMdVViFX+0Wi_LBFsjFStEZnX1XNG-n8tj6qug3mSioySag@mail.gmail.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=xUrnfbXSI68QZbK2rhlCcKfPqfMMQvrkGTjHetN+ZQc=;
        b=AlFx6K0epdC3vPaBi696zBn4ykGJ/g5OiwYU3V2RuJa32gcf7fAP1MY1xrNs5k5fMe
         NfkH8incfPYcd2ArXDWAN5t960QGIFcWHOvSxnkSrhTAB2pdSryzu3ovhSxDBe9a3s3+
         dVpOU5R7RUkLoYbAVEDzZn7y6tZ++l1BJsljm17RfyiVYLQ2xgeyRJ+whT9e/PBrLX2D
         G8ke8R0VS7pWpRUCYAiU6G3YcUmxr4tEGUdgc6UnNFJZ3WA53V4ITdLVJBfrOHmZ3ai5
         qYCVchMyHOmb4GusmfZm1J/8nNp/lVrixWqSrukwPdU/3OqiHIvS7tsSYj7sv1FDGidp
         IA7A==
Content-Disposition: inline
In-Reply-To: <CAMuHMdVViFX+0Wi_LBFsjFStEZnX1XNG-n8tj6qug3mSioySag-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Geert Uytterhoeven <geert-Td1EMuHUCqxL1ZNQvxDV9g@public.gmane.org>
Cc: Dmitry Torokhov <dmitry.torokhov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Sanchayan Maity <maitysanchayan-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, "linux-input-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-input-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Wed, Feb 10, 2016 at 10:54:45AM +0100, Geert Uytterhoeven wrote:
> On Wed, Feb 10, 2016 at 10:45 AM, Sudip Mukherjee
> <sudipm.mukherjee-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
> > The build of m32r allmodconfig fails with the error:
> > drivers/input/touchscreen/colibri-vf50-ts.c:302:10: error: implicit
> >         declaration of function 'of_property_read_u32'
> >
> > of_property_read_u32() is defined in linux/of.h which was not included.
> >
> > Fixes: 1261d013daea ("Input: Allow compile test of Goodix and Colibri VF50 if !GPIOLIB")
> 
> Actually I had sent the exact same patch to add this missing include,
> to apply before 1261d013daea, but it seems Dmitry only applied the
> second one.
> 
> http://permalink.gmane.org/gmane.linux.kernel.gpio/14086

apart from m32r it also affects tilegx, s390, m68k allmodconfig.
I hope Dmitry applies any one from your or mine patch today.

regards
sudip
