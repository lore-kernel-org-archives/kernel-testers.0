From: Bartlomiej Zolnierkiewicz <bzolnier-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #13663] suspend to ram regression (IDE related)
Date: Mon, 29 Jun 2009 19:45:36 +0200
Message-ID: <200906291945.38821.bzolnier@gmail.com>
References: <etTXaRqGgAC.A.SaE.6iASKB@chimera> <20090629.033730.193709457.davem@davemloft.net> <4A48E307.2010208@numericable.fr>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:from:to:subject:date
         :user-agent:cc:references:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:message-id;
        bh=VsfuZcRDINSYaZdabcEahvorzZg6ajFZ501DtByjoGo=;
        b=oHLHJFv/dvmu/GS+jhtMxe/SPLO2nIU5fr8iPEQCHiWgbTD510LZCPzob4mHsf21mj
         a4NklsGL8HaXLcnndkahJuAwZa8Cvow6yAgO6Qj59c+X62KncsuN4mrQMpH6ls/GMtTd
         S47aPf6/oDY5J2CkPN/9oM1FjEV4hSTqkND3o=
In-Reply-To: <4A48E307.2010208-Bf/eaXMDFuuXqB7oj33eUg@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Etienne Basset <etienne.basset-Bf/eaXMDFuuXqB7oj33eUg@public.gmane.org>
Cc: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, jeff.chua.linux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org

On Monday 29 June 2009 17:51:35 Etienne Basset wrote:
> David Miller wrote:
> > From: Etienne Basset <etienne.basset-Bf/eaXMDFuuXqB7oj33eUg@public.gmane.org>
> > Date: Mon, 29 Jun 2009 12:29:09 +0200
> > 
> >> yes, patch is not yet upstream;
> > 
> > I'll take care of pushing this around today.
> > 
> Hi,
> 
> thank you ; 
> i ran a new bisection to identify the commit that cause pain after -rc1
> 
> etienne@etienne-desktop:~/linux-2.6$ git bisect good        
> a1317f714af7aed60ddc182d0122477cbe36ee9b is first bad commit

Thanks for finding it.

Dave, please just revert this patch (it wasn't meant for Linus' tree anyway).

> commit a1317f714af7aed60ddc182d0122477cbe36ee9b             
> Author: Bartlomiej Zolnierkiewicz <bzolnier-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>      
> Date:   Tue Jun 23 23:52:17 2009 -0700                      
> 
>     ide: improve handling of Power Management requests
>                                                       
>     Make hwif->rq point to PM request during PM sequence and do not allow
>     any other types of requests to slip in (the old comment was never correct
>     as there should be no such requests generated during PM sequence).       
>                                                                              
>     Signed-off-by: Bartlomiej Zolnierkiewicz <bzolnier-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>            
>     Signed-off-by: David S. Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>   
> 
> To have STR/resume work with current git, I have to :
> 1) apply Bart's patch
> 2) revert this commit : a1317f714af7aed60ddc182d0122477cbe36ee9b
> 
> thanks
> Etienne           
> 
> 
