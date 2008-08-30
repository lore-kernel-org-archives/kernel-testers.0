From: "Yinghai Lu" <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: Linux 2.6.27-rc5: System boot regression caused by commit a2bd7274b47124d2fc4dfdb8c0591f545ba749dd
Date: Fri, 29 Aug 2008 19:29:04 -0700
Message-ID: <86802c440808291929r64c4dd15td5214a9199618815@mail.gmail.com>
References: <alpine.LFD.1.10.0808281555230.3300@nehalem.linux-foundation.org>
	 <200808292157.24179.rjw@sisk.pl>
	 <86802c440808291413t4f31993fmba59a65aefd906ca@mail.gmail.com>
	 <200808300031.16708.rjw@sisk.pl>
	 <86802c440808291624t2bd0229w2da36dfc6c794b18@mail.gmail.com>
	 <alpine.LFD.1.10.0808291704070.3300@nehalem.linux-foundation.org>
	 <86802c440808291711t32d3e76dsf804856b0a8f4939@mail.gmail.com>
	 <alpine.LFD.1.10.0808291733260.3300@nehalem.linux-foundation.org>
	 <86802c440808291814v4037f83eu943b9ad23297309b@mail.gmail.com>
	 <alpine.LFD.1.10.0808291912360.3300@nehalem.linux-foundation.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=C0Wg4HOLt2HRR5LY4FpNqrRRepW6psX5nwz/dv4txIg=;
        b=j2/JATadoXojyzEEroEvc1P4AveY3l1Vsx/H6pgmQr1rcgYMItKyQU0nkRjk2tDEny
         5h8Pf3YBMi6PMtCQwDfLzQm6H3hqlRXdl56kGoXezGtJKIBFAXn9zaUrS1Ci1gAD3COH
         3/mSXMBPdxDwi7DisbKH5YjjdlqRR445cZAMA=
In-Reply-To: <alpine.LFD.1.10.0808291912360.3300-nfNrOhbfy2R17+2ddN/4kux8cNe9sq/dYPYVAmT7z5s@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: Jordan Crouse <jordan.crouse-5C7GfCeVMHo@public.gmane.org>, David Witbrodt <dawitbro-rphTv4pjVZMJGwgDXS7ZQA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>, Tejun Heo <htejun-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Kernel Testers <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Fri, Aug 29, 2008 at 7:16 PM, Linus Torvalds
<torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org> wrote:
>
>
> On Fri, 29 Aug 2008, Yinghai Lu wrote:
>> > Ok, can we please
>> >
>> >  - *do* get a quirk for known-broken chipsets (at a *PCI* level, this is
>> >   not an x86 issue)
>>
>> the quirk work at the first point for David' system.
>
> That was not what I meant - meant the known-broken MMIO bar.
>
>> [PATCH] x86: protect hpet in BAR for one ATI chipset v3
>
> Now, this is probably fine too in theory, but
>
>  - you didn't check if the BAR is even enabled, afaik
>
>  - the other patch - to move the reserved e820 range later - should make
>   this pointless, no?

yes.

>
>> >  - *not* get any more random PCI work-arounds that go through the x86 tree
>> >   and aren't even looked at by the (very few) people who actually
>> >   understand the PCI resource handling?
>>
>> stop working on following path?
>> [PATCH] x86: split e820 reserved entries record to late v4
>> [PATCH] x86: split e820 reserved entries record to late v4 - fix v2
>
> No, I think this is worth doing, BUT IT MUST NOT BE MERGED BY JUST SENDING
> IT TO INGO.
>
> It's not an "x86 patch". It's about the PCI resources.
>
> And those kinds of patches need to be acked by people who know and
> understand the PCI resource issues and have some memory of just how
> broken machines can exist.

i see.

YH
