From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: Error on Make Modules [2.6.27-rc1]
Date: Fri, 1 Aug 2008 14:13:28 +0200
Message-ID: <200808011413.29388.rjw@sisk.pl>
References: <264b990a0807312306jc064bbbp144342de555ac4f1@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <264b990a0807312306jc064bbbp144342de555ac4f1-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Yudha Harimantoro T <yudha.ht-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On Friday, 1 of August 2008, Yudha Harimantoro T wrote:
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

Hm, there are no any errors here as far as I can see.

Thanks,
Rafael
