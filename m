From: Sam Ravnborg <sam-uyr5N9Q2VtJg9hUCZPvPmw@public.gmane.org>
Subject: Re: [PATCH] x86: _edata should include all .data.* sections on
	X86_64
Date: Thu, 16 Jul 2009 22:23:00 +0200
Message-ID: <20090716202300.GA6096@merkur.ravnborg.org>
References: <4A5C20E5.6010203@fisher-privat.net> <84144f020907140019g511723dctb541f6333d1a082b@mail.gmail.com> <4A5C41C8.7040904@fisher-privat.net> <1247564356.28240.30.camel@pc1117.cambridge.arm.com> <1247565175.28240.37.camel@pc1117.cambridge.arm.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <1247565175.28240.37.camel-hhZApKj8DF/YkXV2EHHjLW3o5bpOHsLO@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Catalin Marinas <catalin.marinas-5wv7dgnIgG8@public.gmane.org>
Cc: Alexey Fisher <bug-track-M18mAb7Tlt0yCq4wW13eYl6hYfS7NtTn@public.gmane.org>, Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, x86-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org

On Tue, Jul 14, 2009 at 10:52:55AM +0100, Catalin Marinas wrote:
> The .data.read_mostly and .data.cacheline_aligned sections aren't
> covered by the _sdata .. _edata range on X86_64. This affects the
> kmemleak reporting leading to possible false positives by not scanning
> all the whole data section.
> 
> Signed-off-by: Catalin Marinas <catalin.marinas-5wv7dgnIgG8@public.gmane.org>
> Cc: Sam Ravnborg <sam-uyr5N9Q2VtJg9hUCZPvPmw@public.gmane.org>
> Cc: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
> ---

To do so was on my todo list when I looked at vmlinux.lds.S for x86, but
as I got sidetracked I never got to it. Which I see was bad..
This patch has my:

Acked-by: Sam Ravnborg <sam-uyr5N9Q2VtJg9hUCZPvPmw@public.gmane.org>

	Sam
