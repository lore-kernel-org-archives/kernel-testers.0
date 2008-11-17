From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Subject: system_call() - Re: [Bug #11308] tbench regression on each kernel
	release from 2.6.22 -&gt; 2.6.28
Date: Mon, 17 Nov 2008 22:59:50 +0100
Message-ID: <20081117215950.GA6398@elte.hu>
References: <20081117110119.GL28786@elte.hu> <4921539B.2000002@cosmosbay.com> <20081117161135.GE12081@elte.hu> <49219D36.5020801@cosmosbay.com> <20081117170844.GJ12081@elte.hu> <20081117172549.GA27974@elte.hu> <4921AAD6.3010603@cosmosbay.com> <alpine.LFD.2.00.0811170937540.3468@nehalem.linux-foundation.org> <20081117182320.GA26844@elte.hu> <20081117184951.GA5585@elte.hu>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20081117184951.GA5585-X9Un+BFzKDI@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: Eric Dumazet <dada1-fPLkHRcR87vqlBn2x/YWAg@public.gmane.org>, David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, efault-Mmb7MZpHnFY@public.gmane.org, a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org, Stephen Hemminger <shemminger-ZtmgI6mnKB3QT0dZR+AlfA@public.gmane.org>, "H. Peter Anvin" <hpa-YMNOUZJC4hwAvxtiuMwx3w@public.gmane.org>, Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>


* Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org> wrote:

> 100.000000 total
> ................
>   1.508888 system_call

that's an easy one:

ffffffff8020be00:    97321 <system_call>:
ffffffff8020be00:    97321 	0f 01 f8             	swapgs 
ffffffff8020be03:    53089 	66 66 66 90          	xchg   %ax,%ax
ffffffff8020be07:     1524 	66 66 90             	xchg   %ax,%ax
ffffffff8020be0a:        0 	66 66 90             	xchg   %ax,%ax
ffffffff8020be0d:        0 	66 66 90             	xchg   %ax,%ax

ffffffff8020be10:     1511 <system_call_after_swapgs>:
ffffffff8020be10:     1511 	65 48 89 24 25 18 00 	mov    %rsp,%gs:0x18
ffffffff8020be17:        0 	00 00 
ffffffff8020be19:        0 	65 48 8b 24 25 10 00 	mov    %gs:0x10,%rsp
ffffffff8020be20:        0 	00 00 
ffffffff8020be22:     1490 	fb                   	sti    

syscall entry instruction costs - unavoidable security checks, etc. - 
hardware costs.

But looking at this profile made me notice this detail:

  ENTRY(system_call_after_swapgs)

Combined with this alignment rule we have in 
arch/x86/include/asm/linkage.h on 64-bit:

  #ifdef CONFIG_X86_64
  #define __ALIGN .p2align 4,,15
  #define __ALIGN_STR ".p2align 4,,15"
  #endif

while it inserts NOP sequences, that is still +13 bytes of excessive, 
stupid, and straight in our syscall entry path alignment padding.

system_call_after_swapgs is an utter slowpath in any case. The interim 
fix is below - although it needs more thinking and probably should be 
done via an ENTRY_UNALIGNED() method as well, for slowpath targets.

With that we get this much nicer entry sequence:

ffffffff8020be00:   544323 <system_call>:
ffffffff8020be00:   544323 	0f 01 f8             	swapgs 

ffffffff8020be03:   197954 <system_call_after_swapgs>:
ffffffff8020be03:   197954 	65 48 89 24 25 18 00 	mov    %rsp,%gs:0x18
ffffffff8020be0a:        0 	00 00 
ffffffff8020be0c:     6578 	65 48 8b 24 25 10 00 	mov    %gs:0x10,%rsp
ffffffff8020be13:        0 	00 00 
ffffffff8020be15:        0 	fb                   	sti    
ffffffff8020be16:        0 	48 83 ec 50          	sub    $0x50,%rsp

And we should probably weaken the generic code alignment rules as well 
on x86. I'll do some measurements of it.

	Ingo

Index: linux/arch/x86/kernel/entry_64.S
===================================================================
--- linux.orig/arch/x86/kernel/entry_64.S
+++ linux/arch/x86/kernel/entry_64.S
@@ -315,7 +315,8 @@ ENTRY(system_call)
 	 * after the swapgs, so that it can do the swapgs
 	 * for the guest and jump here on syscall.
 	 */
-ENTRY(system_call_after_swapgs)
+.globl system_call_after_swapgs
+system_call_after_swapgs:
 
 	movq	%rsp,%gs:pda_oldrsp 
 	movq	%gs:pda_kernelstack,%rsp
