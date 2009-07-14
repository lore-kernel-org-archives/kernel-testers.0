From: Alexey Fisher <bug-track-M18mAb7Tlt0yCq4wW13eYl6hYfS7NtTn@public.gmane.org>
Subject: Re: [PATCH] x86: _edata should include all .data.* sections on X86_64
Date: Tue, 14 Jul 2009 12:13:45 +0200
Message-ID: <4A5C5A59.5080304@fisher-privat.net>
References: <4A5C20E5.6010203@fisher-privat.net>	 <84144f020907140019g511723dctb541f6333d1a082b@mail.gmail.com>	 <4A5C41C8.7040904@fisher-privat.net>	 <1247564356.28240.30.camel@pc1117.cambridge.arm.com> <1247565175.28240.37.camel@pc1117.cambridge.arm.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1247565175.28240.37.camel-hhZApKj8DF/YkXV2EHHjLW3o5bpOHsLO@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Catalin Marinas <catalin.marinas-5wv7dgnIgG8@public.gmane.org>
Cc: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Sam Ravnborg <sam-uyr5N9Q2VtJg9hUCZPvPmw@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, x86-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org

With this patch i have only 25 reports....
but i still have a lot of ext4 and some other reports.


Catalin Marinas schrieb:
> The .data.read_mostly and .data.cacheline_aligned sections aren't
> covered by the _sdata .. _edata range on X86_64. This affects the
> kmemleak reporting leading to possible false positives by not scanning
> all the whole data section.
> 
> Signed-off-by: Catalin Marinas <catalin.marinas-5wv7dgnIgG8@public.gmane.org>
> Cc: Sam Ravnborg <sam-uyr5N9Q2VtJg9hUCZPvPmw@public.gmane.org>
> Cc: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
> ---
> 
> (I re-posted this patch with comments and cc'ing the relevant people)
> 
>  arch/x86/kernel/vmlinux.lds.S |    7 -------
>  1 files changed, 0 insertions(+), 7 deletions(-)
> 
> diff --git a/arch/x86/kernel/vmlinux.lds.S b/arch/x86/kernel/vmlinux.lds.S
> index 367e878..59f31d2 100644
> --- a/arch/x86/kernel/vmlinux.lds.S
> +++ b/arch/x86/kernel/vmlinux.lds.S
> @@ -112,11 +112,6 @@ SECTIONS
>  		_sdata = .;
>  		DATA_DATA
>  		CONSTRUCTORS
> -
> -#ifdef CONFIG_X86_64
> -		/* End of data section */
> -		_edata = .;
> -#endif
>  	} :data
>  
>  #ifdef CONFIG_X86_32
> @@ -156,10 +151,8 @@ SECTIONS
>  	.data.read_mostly : AT(ADDR(.data.read_mostly) - LOAD_OFFSET) {
>  		*(.data.read_mostly)
>  
> -#ifdef CONFIG_X86_32
>  		/* End of data section */
>  		_edata = .;
> -#endif
>  	}
>  
>  #ifdef CONFIG_X86_64
> 
