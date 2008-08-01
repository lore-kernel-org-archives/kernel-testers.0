From: Adrian Bunk <bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: Error on Make Modules [2.6.27-rc1]
Date: Sat, 2 Aug 2008 01:41:53 +0300
Message-ID: <20080801224153.GL19682@cs181140183.pp.htv.fi>
References: <264b990a0807312306jc064bbbp144342de555ac4f1@mail.gmail.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <264b990a0807312306jc064bbbp144342de555ac4f1-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Yudha Harimantoro T <yudha.ht-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, David Woodhouse <dwmw2-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>, Sam Ravnborg <sam-uyr5N9Q2VtJg9hUCZPvPmw@public.gmane.org>
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Avuton Olrich <avuton-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Fri, Aug 01, 2008 at 01:06:33PM +0700, Yudha Harimantoro T wrote:
> Hi,
> I make with 2.6.27-rc1 with my oldconfig.
> 
> I build the kernel and there's error on modules.
> Errors :
> -----------------------------------------------------------------------
> root@system:/usr/src/linux# make
> ...................
> ...................
> CC      net/xfrm/xfrm_ipcomp.mod.ko
> LD [M] net/xfrm/xfrm_ipcomp.ko
> make[1]: Nothing to be done for `__fw_modbuild'.
> root@system:/usr/src/linux# make modules
>   CHK     include/linux/version.h
>   CHK     include/linux/utsrelease.h
>   CALL    scripts/checksyscalls.sh
>   Building modules, stage 2.
>   MODPOST 545 modules
> make[1]: Nothing to be done for `__fw_modbuild'.
> root@system:/usr/src/linux#
> -----------------------------------------------------------------------

Thanks for your report, everything is fine here.

@David, Sam:

This is the second report where a user thought this was an error 
message.

Kbuild does otherwise not show raw messages from GNU make.

Can you somehow hide this message?

> Best regards,
> Yudha_HT

cu
Adrian

-- 

       "Is there not promise of rain?" Ling Tan asked suddenly out
        of the darkness. There had been need of rain for many days.
       "Only a promise," Lao Er said.
                                       Pearl S. Buck - Dragon Seed
