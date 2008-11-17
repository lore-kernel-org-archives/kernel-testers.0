From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: eth_type_trans(): Re: [Bug #11308] tbench regression on each
 kernel release from 2.6.22 -&gt; 2.6.28
Date: Mon, 17 Nov 2008 13:52:22 -0800 (PST)
Message-ID: <alpine.LFD.2.00.0811171346170.18283@nehalem.linux-foundation.org>
References: <20081117110119.GL28786@elte.hu> <4921539B.2000002@cosmosbay.com> <20081117161135.GE12081@elte.hu> <49219D36.5020801@cosmosbay.com> <20081117170844.GJ12081@elte.hu> <20081117172549.GA27974@elte.hu> <4921AAD6.3010603@cosmosbay.com>
 <alpine.LFD.2.00.0811170937540.3468@nehalem.linux-foundation.org> <20081117182320.GA26844@elte.hu> <20081117184951.GA5585@elte.hu> <20081117212657.GH12020@elte.hu>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20081117212657.GH12020-X9Un+BFzKDI@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Cc: Eric Dumazet <dada1-fPLkHRcR87vqlBn2x/YWAg@public.gmane.org>, David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, efault-Mmb7MZpHnFY@public.gmane.org, a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org, Stephen Hemminger <shemminger-ZtmgI6mnKB3QT0dZR+AlfA@public.gmane.org>



On Mon, 17 Nov 2008, Ingo Molnar wrote:
> ffffffff8049e2ae:        0 	0f b7 c0             	movzwl %ax,%eax
> ffffffff8049e2b1:        0 	3d ff 05 00 00       	cmp    $0x5ff,%eax
> ffffffff8049e2b6:      468 	7f 18                	jg     ffffffff8049e2d0 <eth_type_trans+0xbb>
> ffffffff8049e2b8:        0 	48 8b 83 d8 00 00 00 	mov    0xd8(%rbx),%rax
> ffffffff8049e2bf:        0 	b9 00 01 00 00       	mov    $0x100,%ecx
> ffffffff8049e2c4:        0 	66 83 38 ff          	cmpw   $0xffffffffffffffff,(%rax)
> ffffffff8049e2c8:        0 	b8 00 04 00 00       	mov    $0x400,%eax
> ffffffff8049e2cd:        0 	0f 45 c8             	cmovne %eax,%ecx
> ffffffff8049e2d0:        0 	5b                   	pop    %rbx
> ffffffff8049e2d1:    85064 	5d                   	pop    %rbp
> ffffffff8049e2d2:    63776 	41 5c                	pop    %r12
> ffffffff8049e2d4:        1 	89 c8                	mov    %ecx,%eax
> ffffffff8049e2d6:      474 	c3                   	retq   
> 
> small function, big bang - 1.7% of the total overhead.
> 
> 90% of this function's cost is in the closing sequence. My guess would 
> be that it originates from ffffffff8049e2ae (the branch after that is 
> not taken), which corresponds to this source code context:

I would actually suspect that branch mispredicts may be an issue.

If that thing falls out of the branch prediction table (which it could 
easily do), then a forward branch will be predicted as "not taken". And if 
it then turns out that the _common_ case is the other way around, the 
incorrectly predicted destination is often the one that shows up in 
profiles.

Giving gcc likely()/unlikely() hints usually doesn't much help, I'm 
afraid. It _can_ make a difference, but often not for -Os in particular.

		Linus
