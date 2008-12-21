From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #12156] v2.6.28-rc2: x86_32 relocation regression?
Date: Sun, 21 Dec 2008 20:53:29 +0100
Message-ID: <200812212053.29463.rjw@sisk.pl>
References: <vYigq6XkyUN.A.E1H.7ZYTJB@chimera> <vy-yJy0f3YP.A.yhB.qaYTJB@chimera> <20081221081406.GB4773@elte.hu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20081221081406.GB4773-X9Un+BFzKDI@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "H. Peter Anvin" <hpa-YMNOUZJC4hwAvxtiuMwx3w@public.gmane.org>, Vegard Nossum <vegard.nossum-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, the arch/x86 maintainers <x86-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>

On Sunday, 21 of December 2008, Ingo Molnar wrote:
> 
> * Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> 
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.27.  Please verify if it still should be listed and let me know
> > (either way).
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12156
> > Subject		: v2.6.28-rc2: x86_32 relocation regression?
> > Submitter	: Vegard Nossum <vegard.nossum-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > Date		: 2008-11-24 21:19 (27 days old)
> > References	: http://marc.info/?l=linux-kernel&m=122756158220966&w=4
> 
> not really a regression but a long-standing inconvenience/bug of the debug 
> symbols of relocatable kernels. (ever since relocatable kernels were added 
> in '06 or so.) Nevertheless we queued up a revert of the defconfig change 
> for .29, to not expose it in the defconfig:
> 
>  f269b07: x86: revert CONFIG_RELOCATABLE=y defconfig change
> 
> so i think it can be taken off the regressions list.

Dropped.

Thanks,
Rafael
