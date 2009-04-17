From: Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Subject: Re: [Bug #13058] First hibernation attempt fails
Date: Fri, 17 Apr 2009 18:46:18 +0100
Message-ID: <49E8C06A.5080605@tuffmail.co.uk>
References: <EJaiQ4Wfaz.A.3YG.4v85JB@chimera> <nY3-4PrO6XH.A.xtB.yw85JB@chimera> <20090417063007.GB4593@kernel.dk> <49E83DC4.8040207@tuffmail.co.uk> <20090417091321.GP4593@kernel.dk> <20090417093359.GQ4593@kernel.dk> <49E84DF8.7030802@tuffmail.co.uk> <20090417094558.GR4593@kernel.dk> <49E85DFD.9030306@tuffmail.co.uk> <alpine.LFD.2.00.0904170856460.4042@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=gamma;
        h=domainkey-signature:received:received:sender:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=qZ6WmDbx9zfWFLA6lfxECd1FbjZabR0T66hiJnbSdHE=;
        b=J2GeB/Fu2jBqvNgh+Cy10mcV47O0Aonhv2FgkBHWdZXmcRbctm/a555MISB1buYZkN
         kkkj9tlty8ltUOmS8+OvvYLtTEAB+GftA4HfAbJxEHh1UFuGnAkViZ8toXHvH46YyV4l
         PPgBLyPo36bIeTtM3eXDP4PpIOcOtsRKNLhrU=
In-Reply-To: <alpine.LFD.2.00.0904170856460.4042-bi+AKbBUZKY6gyzm1THtWbp2dZbC/Bob@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: Jens Axboe <jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

Linus Torvalds wrote:
> On Fri, 17 Apr 2009, Alan Jenkins wrote:
>   
>> As another datapoint:  I tried blindly applying the commit to 2.6.29. 
>> The resulting kernel was able to hibernate fine the first time.
>>     
>
> Yeah, so it's not that commit per se that causes it. I bet it needs all 
> the IO scheduler changes too - and even when it does that, the end result 
> probably is really just a timing change.
>
>   
>> I'm going to be annoying and try something slightly different.  In
>> theory, I should be able to find the "first bad commit" where
>> cherry-picking 1faa16d22 causes a problem.
>>     
>
> Just for fun, try this one first and see if it makes any difference.
>
> Maybe the whole "swappiness=0" part was intentional. And maybe it wasn't. 
> This is one trivial patch. Maybe it makes your machine blow up. Who knows?
>
> There are other differences in the shrink_all_memory() path wrt the normal 
> memory freeing paths, but they are way more subtle. So I'm suggesting 
> tryign this not becasue I think it's "The Bug(tm)", but because it's an 
> easy test to make, and maybe it makes a difference.
>
> 		Linus
> ---
>  mm/vmscan.c |    2 ++
>  1 files changed, 2 insertions(+), 0 deletions(-)
>
> diff --git a/mm/vmscan.c b/mm/vmscan.c
> index 39fdfb1..d3595ed 100644
> --- a/mm/vmscan.c
> +++ b/mm/vmscan.c
> @@ -2113,6 +2113,8 @@ unsigned long shrink_all_memory(unsigned long nr_pages)
>  	struct scan_control sc = {
>  		.gfp_mask = GFP_KERNEL,
>  		.may_unmap = 0,
> +		.swap_cluster_max = SWAP_CLUSTER_MAX,
> +		.swappiness = vm_swappiness,
>  		.may_writepage = 1,
>  		.isolate_pages = isolate_pages_global,
>  	};
>   


No, that doesn't seem to affect it.

Thanks
Alan
