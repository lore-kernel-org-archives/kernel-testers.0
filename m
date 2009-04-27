From: Christoph Lameter <cl-vYTEC60ixJUAvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #13112] Oops in drain_array
Date: Mon, 27 Apr 2009 10:04:47 -0400 (EDT)
Message-ID: <alpine.DEB.1.10.0904271000200.16119@qirst.com>
References: <tur5OtdUm3E.A.r2B.7oE9JB@chimera>  <egHshlwQQFE.A.KjC.JpE9JB@chimera>  <alpine.DEB.2.00.0904261314430.18988@chino.kir.corp.google.com> <84144f020904270152o6567e84cj914934120315bf90@mail.gmail.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <84144f020904270152o6567e84cj914934120315bf90-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
Cc: David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>, Bart <mmx-G/jkD+u3s4s@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>

On Mon, 27 Apr 2009, Pekka Enberg wrote:

>   18:   4a 8b 8c eb 68 01 00    mov    0x168(%rbx,%r13,8),%rcx # l3 =
> cachep->nodelists[node];
>   1f:   00
>   20:   48 8b 16                mov    (%rsi),%rdx
>   23:   48 8b 46 08             mov    0x8(%rsi),%rax
>   27:   48 89 42 08             mov    %rax,0x8(%rdx)
>   2b:*  48 89 10                mov    %rdx,(%rax)     <-- trapping instruction
>   2e:   89 e8                   mov    %ebp,%eax
>   30:   48 c7 06 00 01 10 00    movq   $0x100100,(%rsi)
>   37:   48 c7 46 08 00 02 20    movq   $0x200200,0x8(%rsi)
>
> it seems like list_del() in free_block() explodes because because
> ->prev ("rax") of slab->list is bogus ("0000000000000cd0").

Where do I find the rest of the information regarding this report?
bugzilla does only contain a pointer to the initial report on lkml no
discussion.

Typically these oopses occur because the slab header at the beginning of a
slab is overwritten. Enable debugging. Switching to SLUB would give better
diagnostics.



