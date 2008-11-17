From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Subject: Re: skb_release_head_state(): Re: [Bug #11308] tbench regression
	on each kernel release from 2.6.22 -&gt; 2.6.28
Date: Mon, 17 Nov 2008 22:38:05 +0100
Message-ID: <20081117213805.GA5600@elte.hu>
References: <20081117161135.GE12081@elte.hu> <49219D36.5020801@cosmosbay.com> <20081117170844.GJ12081@elte.hu> <20081117172549.GA27974@elte.hu> <4921AAD6.3010603@cosmosbay.com> <alpine.LFD.2.00.0811170937540.3468@nehalem.linux-foundation.org> <20081117182320.GA26844@elte.hu> <20081117184951.GA5585@elte.hu> <20081117205530.GE12020@elte.hu> <alpine.LFD.2.00.0811171325260.18283@nehalem.linux-foundation.org>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <alpine.LFD.2.00.0811171325260.18283-nfNrOhbfy2R17+2ddN/4kux8cNe9sq/dYPYVAmT7z5s@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: Eric Dumazet <dada1-fPLkHRcR87vqlBn2x/YWAg@public.gmane.org>, David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, efault-Mmb7MZpHnFY@public.gmane.org, a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org, Stephen Hemminger <shemminger-ZtmgI6mnKB3QT0dZR+AlfA@public.gmane.org>


* Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org> wrote:

> On Mon, 17 Nov 2008, Ingo Molnar wrote:
> > 
> > this function _really_ hurts from a 16-bit op:
> > 
> > ffffffff8048943e:     6503 	66 c7 83 a8 00 00 00 	movw   $0x0,0xa8(%rbx)
> > ffffffff80489445:        0 	00 00 
> > ffffffff80489447:   174101 	5b                   	pop    %rbx
> 
> I don't think that is it, actually. The 16-bit store just before it 
> had a zero count, even though anything that executes the second one 
> will always execute the first one too.

yeah - look at the followup bits that identify the likely real source 
of that overhead:

>> _But_, the real overhead probably comes from:
>> 
>>  ffffffff804b7210:    10867 	48 8b 54 24 58       	mov    0x58(%rsp),%rdx
>> 
>> which is the next line, the ttl field:
>> 
>>  373             iph->ttl      = ip_select_ttl(inet, &rt->u.dst);
>> 
>> this shows that we are doing a hard cachemiss on the net-localhost 
>> route dst structure cacheline. We do a plain load instruction from 
>> it here and get a hefty cachemiss. (because 16 CPUs are banging on 
>> that single route)
>> 
>> And let make sure we see this in perspective as well: that single 
>> cachemiss is _1.0 percent_ of the total tbench cost. (!) We could 
>> make the scheduler 10% slower straight away and it would have less 
>> of a real-life effect than this single iph->ttl field setting.
