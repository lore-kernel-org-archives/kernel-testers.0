From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: [Bug #11308] tbench regression on each kernel release from 2.6.22
 -&gt; 2.6.28
Date: Mon, 17 Nov 2008 10:33:19 -0800 (PST)
Message-ID: <alpine.LFD.2.00.0811171030180.3468@nehalem.linux-foundation.org>
References: <20081117090648.GG28786@elte.hu> <20081117.011403.06989342.davem@davemloft.net> <20081117110119.GL28786@elte.hu> <4921539B.2000002@cosmosbay.com> <20081117161135.GE12081@elte.hu> <49219D36.5020801@cosmosbay.com> <20081117170844.GJ12081@elte.hu>
 <20081117172549.GA27974@elte.hu> <4921AAD6.3010603@cosmosbay.com> <alpine.LFD.2.00.0811170937540.3468@nehalem.linux-foundation.org> <20081117182320.GA26844@elte.hu>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20081117182320.GA26844-X9Un+BFzKDI@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Cc: Eric Dumazet <dada1-fPLkHRcR87vqlBn2x/YWAg@public.gmane.org>, David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, efault-Mmb7MZpHnFY@public.gmane.org, a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org, Stephen Hemminger <shemminger-ZtmgI6mnKB3QT0dZR+AlfA@public.gmane.org>



On Mon, 17 Nov 2008, Ingo Molnar wrote:
> 
> hm, i'm not sure whether i can post benchmarks from the Nehalem box - 
> but i can confirm it in general terms that it's rather nice ;-)

Intel released the NDA from various web sites a week or two ago, and Intel 
is now selling it in the US (I think today was in fact the official 
launch), so I think benchmarks are safe - you can buy the dang things on 
the street.

I don't know what availability is, of course. But I doubt that Intel would 
mind Nehalem benchmarks even if it were a paper launch - at least from my 
personal experience, I've not seen any bad behavior (and plenty of good).

> This was run on another testbox (4x4 Barcelona) that rocks similarly 
> well in terms of memory subsystem latencies: which seems to be 
> tbench's main current critical path.

Ahh, ok.

			Linus
