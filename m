From: Etienne Basset <etienne.basset-Bf/eaXMDFuuXqB7oj33eUg@public.gmane.org>
Subject: Re: [Bug #13663] suspend to ram regression (IDE related)
Date: Mon, 29 Jun 2009 17:51:35 +0200
Message-ID: <4A48E307.2010208@numericable.fr>
References: <etTXaRqGgAC.A.SaE.6iASKB@chimera>	<5Hhc7UkUKEO.A.RvE.BjASKB@chimera>	<4A489775.6020102@numericable.fr> <20090629.033730.193709457.davem@davemloft.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090629.033730.193709457.davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Cc: rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, bzolnier-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, jeff.chua.linux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org

David Miller wrote:
> From: Etienne Basset <etienne.basset-Bf/eaXMDFuuXqB7oj33eUg@public.gmane.org>
> Date: Mon, 29 Jun 2009 12:29:09 +0200
> 
>> yes, patch is not yet upstream;
> 
> I'll take care of pushing this around today.
> 
Hi,

thank you ; 
i ran a new bisection to identify the commit that cause pain after -rc1

etienne@etienne-desktop:~/linux-2.6$ git bisect good        
a1317f714af7aed60ddc182d0122477cbe36ee9b is first bad commit
commit a1317f714af7aed60ddc182d0122477cbe36ee9b             
Author: Bartlomiej Zolnierkiewicz <bzolnier-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>      
Date:   Tue Jun 23 23:52:17 2009 -0700                      

    ide: improve handling of Power Management requests
                                                      
    Make hwif->rq point to PM request during PM sequence and do not allow
    any other types of requests to slip in (the old comment was never correct
    as there should be no such requests generated during PM sequence).       
                                                                             
    Signed-off-by: Bartlomiej Zolnierkiewicz <bzolnier-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>            
    Signed-off-by: David S. Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>   

To have STR/resume work with current git, I have to :
1) apply Bart's patch
2) revert this commit : a1317f714af7aed60ddc182d0122477cbe36ee9b

thanks
Etienne           
