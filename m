From: "Yinghai Lu" <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: Linux 2.6.27-rc5: System boot regression caused by commit a2bd7274b47124d2fc4dfdb8c0591f545ba749dd
Date: Sat, 30 Aug 2008 12:48:58 -0700
Message-ID: <86802c440808301248l71d13c2duc6e56e2475522cb9@mail.gmail.com>
References: <alpine.LFD.1.10.0808281555230.3300@nehalem.linux-foundation.org>
	 <200808292157.24179.rjw@sisk.pl>
	 <alpine.LFD.1.10.0808291434110.3300@nehalem.linux-foundation.org>
	 <200808300030.32905.rjw@sisk.pl>
	 <alpine.LFD.1.10.0808301012060.3290@nehalem.linux-foundation.org>
	 <86802c440808301107n4561e815ldf53183c92a7bc93@mail.gmail.com>
	 <alpine.LFD.1.10.0808301141590.3290@nehalem.linux-foundation.org>
	 <alpine.LFD.1.10.0808301150150.3290@nehalem.linux-foundation.org>
	 <86802c440808301226h1e7a9bb6g721ecdb0f93c5220@mail.gmail.com>
	 <alpine.LFD.1.10.0808301238390.3290@nehalem.linux-foundation.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=PrZ8xixDoI5bu/PBzq1zhnZYHX8DO7XzqSsvbVnhH3g=;
        b=OaEEN3+2t8giqmEpf5tdJ7S0kOb5UHCaKgRq/9nVcY2e8KwK2CLwiT6ffIw0sllPen
         A6+4MrpssZ5V/Jh81fubU6hPKVGHNPGgdlRGPtRxtxiDNnKgJ3YYCD9nwuAy+rq5D2mS
         Zd9mQs2Ac7YypPS3wApUUKQo9qFsI3MSvcwaw=
In-Reply-To: <alpine.LFD.1.10.0808301238390.3290-nfNrOhbfy2R17+2ddN/4kux8cNe9sq/dYPYVAmT7z5s@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>, Tejun Heo <htejun-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, David Witbrodt <dawitbro-rphTv4pjVZMJGwgDXS7ZQA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Kernel Testers <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Sat, Aug 30, 2008 at 12:41 PM, Linus Torvalds
<torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org> wrote:
>
>
> On Sat, 30 Aug 2008, Yinghai Lu wrote:
>>
>> AMD CPU/NB (quad core aka fam 10h later) has MSR to state MMCONFIG, and
>>  the ATI bridge BAR that have same address for MMCONFIG not even have
>> chance to decode that, because NB intercept that already.
>
> Ok, so it's similar to the local APIC in that respect (and presumably IO
> APIC too, I haven't checked).
>
> But that still just implies that the BAR probably means something else
> totally, and the fact that it happens to have the same value as the MCFG
> is just random luck.
>
>> it seems ATI chipset doesn't have public version of doc...like reg
>> info and BIOS/Kernel porting guide.
>
> Yeah, I'm not finding anything either. The 690G databook that Rafael
> pointed to does mention the config registers in passing, but it's really
> just about electricals (pin setup etc). No BIOS writers guide indeed..

Those BIOS porting guide need extra NDA...
they don't want to everyone know that there is lots workaround for
their silicon bugs.

YH
