From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: eth_type_trans(): Re: [Bug #11308] tbench regression on each
 kernel release from 2.6.22 -&gt; 2.6.28
Date: Mon, 17 Nov 2008 16:01:27 -0800 (PST)
Message-ID: <alpine.LFD.2.00.0811171557310.18283@nehalem.linux-foundation.org>
References: <20081117110119.GL28786@elte.hu> <4921539B.2000002@cosmosbay.com> <20081117161135.GE12081@elte.hu> <49219D36.5020801@cosmosbay.com> <20081117170844.GJ12081@elte.hu> <20081117172549.GA27974@elte.hu> <4921AAD6.3010603@cosmosbay.com>
 <alpine.LFD.2.00.0811170937540.3468@nehalem.linux-foundation.org> <20081117182320.GA26844@elte.hu> <20081117184951.GA5585@elte.hu> <20081117212657.GH12020@elte.hu> <4921E4B0.7010507@cosmosbay.com> <49220144.2010005@cosmosbay.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <49220144.2010005-fPLkHRcR87vqlBn2x/YWAg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Eric Dumazet <dada1-fPLkHRcR87vqlBn2x/YWAg@public.gmane.org>
Cc: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, efault-Mmb7MZpHnFY@public.gmane.org, a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org, Stephen Hemminger <shemminger-ZtmgI6mnKB3QT0dZR+AlfA@public.gmane.org>



On Tue, 18 Nov 2008, Eric Dumazet wrote:
> > *
> > * Compare two ethernet addresses, returns 0 if equal
> > */
> > static inline unsigned compare_ether_addr(const u8 *addr1, const u8 *addr2)
> > {
> >        const u16 *a = (const u16 *) addr1;
> >        const u16 *b = (const u16 *) addr2;
> > 
> >        BUILD_BUG_ON(ETH_ALEN != 6);
> >        return ((a[0] ^ b[0]) | (a[1] ^ b[1]) | (a[2] ^ b[2])) != 0;

Btw, at least on some Intel CPU's, it would be faster to do this as a 
32-bit xor and a 16-bit xor. And if we can know that there is always 2 
bytes at the end (because of how the thing was allocated), it's faster 
still to do it as a 64-bit xor and a mask.

And that's true even if the addresses are only 2-byte aligned.

The code that gcc generates for "memcmp()" for a constant-size small data 
thing is sadly crap. It always generates a "rep cmpsb", even if the size 
is something really trivial like 4 bytes, and even if you compare for 
exact equality rather than a smaller/greater-than. Gaah.

		Linus
