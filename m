From: Adrian Bunk <bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: Error on Make Modules [2.6.27-rc1]
Date: Sat, 2 Aug 2008 02:09:14 +0300
Message-ID: <20080801230914.GN19682@cs181140183.pp.htv.fi>
References: <264b990a0807312306jc064bbbp144342de555ac4f1@mail.gmail.com> <20080801224153.GL19682@cs181140183.pp.htv.fi> <1217631100.3719.44.camel@shinybook.infradead.org>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <1217631100.3719.44.camel-Fexsq3y4057IgHVZqg5X0TlWvGAXklZc@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: David Woodhouse <dwmw2-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>
Cc: Yudha Harimantoro T <yudha.ht-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Sam Ravnborg <sam-uyr5N9Q2VtJg9hUCZPvPmw@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Avuton Olrich <avuton-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Fri, Aug 01, 2008 at 11:51:40PM +0100, David Woodhouse wrote:
> On Sat, 2008-08-02 at 01:41 +0300, Adrian Bunk wrote:
> > Can you somehow hide this message?
> 
> I'll leave the __fw_install one alone, so that if there's nothing to do
> for 'make firmware_install' it says so rather than just doing nothing.
> The other two can shut up, as requested.
> 
> Signed-off-by: David Woodhouse <David.Woodhouse-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
> 
> diff --git a/scripts/Makefile.fwinst b/scripts/Makefile.fwinst
> index f63a663..6bf8e87 100644
> --- a/scripts/Makefile.fwinst
> +++ b/scripts/Makefile.fwinst
> @@ -50,8 +50,12 @@ PHONY +=  __fw_install __fw_modinst FORCE
>  .PHONY: $(PHONY)
>  
>  __fw_install: $(installed-fw)
> +
>  __fw_modinst: $(installed-mod-fw)
> +	@:
> +
>  __fw_modbuild: $(addprefix $(obj)/,$(mod-fw))
> +	@:
>  
>  FORCE:


Thanks.  :-)


cu
Adrian

-- 

       "Is there not promise of rain?" Ling Tan asked suddenly out
        of the darkness. There had been need of rain for many days.
       "Only a promise," Lao Er said.
                                       Pearl S. Buck - Dragon Seed
