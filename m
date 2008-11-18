From: Nick Piggin <nickpiggin@yahoo.com.au>
Subject: Re: ip_queue_xmit(): Re: [Bug #11308] tbench regression on each kernel release from 2.6.22 -&gt; 2.6.28
Date: Tue, 18 Nov 2008 20:12:02 +1100
Message-ID: <200811182012.03386.nickpiggin@yahoo.com.au>
References: <20081117110119.GL28786@elte.hu> <20081117184951.GA5585@elte.hu> <20081117203219.GC12020@elte.hu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1752566AbYKRJMd@vger.kernel.org>
In-Reply-To: <20081117203219.GC12020@elte.hu>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ingo Molnar <mingo@elte.hu>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, Eric Dumazet <dada1@cosmosbay.com>, David Miller <davem@davemloft.net>, rjw@sisk.pl, linux-kernel@vger.kernel.org, kernel-testers@vger.kernel.org, cl@linux-foundation.org, efault@gmx.de, a.p.zijlstra@chello.nl, Stephen Hemminger <shemminger@vyatta.com>

On Tuesday 18 November 2008 07:32, Ingo Molnar wrote:
> * Ingo Molnar <mingo@elte.hu> wrote:
> > 100.000000 total
> > ................
> >   3.356152 ip_queue_xmit

> 30% of the overhead of this function comes from:
>
> ffffffff804b7203:        0 	66 c7 43 06 00 00    	movw   $0x0,0x6(%rbx)
> ffffffff804b7209:      118 	0f bf 85 40 02 00 00 	movswl 0x240(%rbp),%eax
> ffffffff804b7210:    10867 	48 8b 54 24 58       	mov    0x58(%rsp),%rdx
> ffffffff804b7215:      340 	85 c0                	test   %eax,%eax
> ffffffff804b7217:        0 	79 06                	jns    ffffffff804b721f
> <ip_queue_xmit+0x1da> ffffffff804b7219:   107464 	8b 82 9c 00 00 00    	mov
>    0x9c(%rdx),%eax ffffffff804b721f:     4963 	88 43 08             	mov   
> %al,0x8(%rbx)
>
> the 16-bit movw looks a bit weird. It comes from line 372:
>
>  0xffffffff804b7203 is in ip_queue_xmit (net/ipv4/ip_output.c:372).
>  367		iph = ip_hdr(skb);
>  368		*((__be16 *)iph) = htons((4 << 12) | (5 << 8) | (inet->tos & 0xff));
>  369		if (ip_dont_fragment(sk, &rt->u.dst) && !ipfragok)
>  370			iph->frag_off = htons(IP_DF);
>  371		else
>  372			iph->frag_off = 0;
>  373		iph->ttl      = ip_select_ttl(inet, &rt->u.dst);
>  374		iph->protocol = sk->sk_protocol;
>  375		iph->saddr    = rt->rt_src;
>  376		iph->daddr    = rt->rt_dst;
>
> the ip-header fragment flag setting to zero.
>
> 16-bit ops are an on-off love/hate affair on x86 CPUs. The trend is
> towards eliminating them as much as possible.
>
> _But_, the real overhead probably comes from:
>
>  ffffffff804b7210:    10867 	48 8b 54 24 58       	mov    0x58(%rsp),%rdx
>
> which is the next line, the ttl field:
>
>  373             iph->ttl      = ip_select_ttl(inet, &rt->u.dst);
>
> this shows that we are doing a hard cachemiss on the net-localhost
> route dst structure cacheline. We do a plain load instruction from it
> here and get a hefty cachemiss. (because 16 CPUs are banging on that
> single route)

Why would that show up right there, though? Instruction like this should
be non-blocking. Shouldn't the cost should show up at some point where the
CPU executes an instruction depending on rdx? (and good luck working out
when that happens!)
