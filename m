From: "H. Peter Anvin" <hpa-YMNOUZJC4hwAvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #12156] v2.6.28-rc2: x86_32 relocation regression?
Date: Sun, 21 Dec 2008 22:31:24 -0800
Message-ID: <494F343C.1030602@zytor.com>
References: <vYigq6XkyUN.A.E1H.7ZYTJB@chimera> <vy-yJy0f3YP.A.yhB.qaYTJB@chimera> <20081221081406.GB4773@elte.hu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20081221081406.GB4773-X9Un+BFzKDI@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Vegard Nossum <vegard.nossum-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, the arch/x86 maintainers <x86-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>

Ingo Molnar wrote:
> 
> not really a regression but a long-standing inconvenience/bug of the debug 
> symbols of relocatable kernels. (ever since relocatable kernels were added 
> in '06 or so.) Nevertheless we queued up a revert of the defconfig change 
> for .29, to not expose it in the defconfig:
> 
>  f269b07: x86: revert CONFIG_RELOCATABLE=y defconfig change
> 
> so i think it can be taken off the regressions list.
> 

It's a bug, yes, not a regression.  It should be fixed if possible, but
it's not a regression nor a hideously critical issue.

	-hpa


-- 
H. Peter Anvin, Intel Open Source Technology Center
I work for Intel.  I don't speak on their behalf.
