From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Subject: Re: [Bug #11308] tbench regression on each kernel release from
	2.6.22 -&gt; 2.6.28
Date: Mon, 17 Nov 2008 20:57:57 +0100
Message-ID: <20081117195757.GA12020@elte.hu>
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
Cc: Eric Dumazet <dada1-fPLkHRcR87vqlBn2x/YWAg@public.gmane.org>, David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, efault-Mmb7MZpHnFY@public.gmane.org, a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org, Stephen Hemminger <shemminger-ZtmgI6mnKB3QT0dZR+AlfA@public.gmane.org>


> [ I'll post per function analysis as i complete them, as a reply to
>   this mail. ]

[ i'll do a separate mail for every function analyzed, the discussion 
  spreads better that way. ]

> 100.000000 total
> ................
>   7.253355 copy_user_generic_string

This is the Well-known pattern of user-copy overhead, which centers 
around this single REP MOVS instruction:

                nr-of-hits
                 .........
ffffffff80341eea:       42 	83 e2 07    		and    $0x7,%edx
ffffffff80341eed:   677398 	f3 48 a5         	rep movsq %ds:(%rsi),%es:(%rdi)
ffffffff80341ef0:     3642 	89 d1                	mov    %edx,%ecx
ffffffff80341ef2:    16260 	f3 a4                	rep movsb %ds:(%rsi),%es:(%rdi)
ffffffff80341ef4:     6554 	31 c0                	xor    %eax,%eax
ffffffff80341ef6:     1958 	c3                   	retq   
ffffffff80341ef7:        0 	90                   	nop    
ffffffff80341ef8:        0 	90                   	nop    

That's to be expected - tbench shuffles 3.5 GB of effective data 
to/from sockets. That's 7.5 GB due to double-copy. So for every 64 
bytes of data transferred we spend 1.4 CPU cycles in this specific 
function - that is OK-ish.

	Ingo
