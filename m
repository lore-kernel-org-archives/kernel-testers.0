From: "Yinghai Lu" <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: Linux 2.6.27-rc5: System boot regression caused by commit a2bd7274b47124d2fc4dfdb8c0591f545ba749dd
Date: Sat, 30 Aug 2008 12:26:15 -0700
Message-ID: <86802c440808301226h1e7a9bb6g721ecdb0f93c5220@mail.gmail.com>
References: <alpine.LFD.1.10.0808281555230.3300@nehalem.linux-foundation.org>
	 <200808292157.24179.rjw@sisk.pl>
	 <alpine.LFD.1.10.0808291434110.3300@nehalem.linux-foundation.org>
	 <200808300030.32905.rjw@sisk.pl>
	 <alpine.LFD.1.10.0808301012060.3290@nehalem.linux-foundation.org>
	 <86802c440808301107n4561e815ldf53183c92a7bc93@mail.gmail.com>
	 <alpine.LFD.1.10.0808301141590.3290@nehalem.linux-foundation.org>
	 <alpine.LFD.1.10.0808301150150.3290@nehalem.linux-foundation.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=qQbIxJXIFmNaO8pgE2XE6Ugw/I9C7zjaYBt9o06MV7U=;
        b=YAmGIbNJ29pd+/SapyQv40jh7ZylICsqy92ri5owgTyOA/e7CTQAd/0buhOA7TSFeW
         L6rvhKoxKaBrXkKjJJlxLmRUHn67JVoVyQ+qgQq7WjoFaV1/1J8xryNG9DZeRyZoSH7j
         N3Amq1B48Yjd8gBzmw7Ba6g2VgGgdSgplVr9U=
In-Reply-To: <alpine.LFD.1.10.0808301150150.3290-nfNrOhbfy2R17+2ddN/4kux8cNe9sq/dYPYVAmT7z5s@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>, Tejun Heo <htejun-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, David Witbrodt <dawitbro-rphTv4pjVZMJGwgDXS7ZQA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Kernel Testers <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Sat, Aug 30, 2008 at 12:14 PM, Linus Torvalds
<torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org> wrote:
>
>
> On Sat, 30 Aug 2008, Linus Torvalds wrote:
>>
>> We simply shouldn't try to compare the BAR start with randomly chosen
>> things.
>
> Btw, looking at that bogus BAR#3 some more: I don't actually think it's
> even an MCFG resource.
>
> I think it's literally the resource that describes the HT window for the
> host bridge. So it's literally like the "root" resource - all external
> MMIO resources that go over HT have to be in that window.

his system only has one HT chain...

>
> IOW, I'm starting to think that it's not even broken. It is probably
> perfectly real. It's not a "PCI bridge" in the sense that it doesn't
> bridge one PCI bus to another, but it's a host bridge, and it bridges the
> CPU memory accesses to another bus.
>
> The fact that the MCFG area happens to be at the start of that window is
> probably just a random detail.

AMD CPU/NB (quad core aka fam 10h later) has MSR to state MMCONFIG, and
 the ATI bridge BAR that have same address for MMCONFIG not even have
chance to decode that.
because NB intercept that already.

>
> Does anybody know how to find chipset docs for AMD/ATI chipsets? I find
> CPU docs, and the GPU docs, but not the 790 chipset docs anywhere (yeah,
> it looks promising with a link that says "AMD 790FX Chipset
> Specifications", but the link just takes you to some trivial overview, not
> any actual specs.

it seems ATI chipset doesn't have public version of doc...like reg
info and BIOS/Kernel porting guide.

YH
