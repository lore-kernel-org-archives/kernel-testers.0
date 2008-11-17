From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Subject: Re: [Bug #11308] tbench regression on each kernel release from
	2.6.22 -&gt; 2.6.28
Date: Mon, 17 Nov 2008 23:26:40 +0100
Message-ID: <20081117222640.GA17880@elte.hu>
References: <20081117161135.GE12081@elte.hu> <49219D36.5020801@cosmosbay.com> <20081117170844.GJ12081@elte.hu> <20081117172549.GA27974@elte.hu> <4921AAD6.3010603@cosmosbay.com> <alpine.LFD.2.00.0811170937540.3468@nehalem.linux-foundation.org> <20081117182320.GA26844@elte.hu> <20081117184951.GA5585@elte.hu> <20081117220828.GB6398@elte.hu> <4921ED16.9050307@cosmosbay.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <4921ED16.9050307-fPLkHRcR87vqlBn2x/YWAg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Eric Dumazet <dada1-fPLkHRcR87vqlBn2x/YWAg@public.gmane.org>
Cc: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, efault-Mmb7MZpHnFY@public.gmane.org, a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org, Stephen Hemminger <shemminger-ZtmgI6mnKB3QT0dZR+AlfA@public.gmane.org>


* Eric Dumazet <dada1-fPLkHRcR87vqlBn2x/YWAg@public.gmane.org> wrote:

> Ingo Molnar a =E9crit :
>> * Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org> wrote:
>>
>>> 100.000000 total
>>> ................
>>>   1.469183 tcp_current_mss
>>
>>                       hits (total: 146918)
>>                  .........
>> ffffffff804c5237:      526 <tcp_current_mss>:
>> ffffffff804c5237:      526 	41 54                	push   %r12
>> ffffffff804c5239:     5929 	55                   	push   %rbp
>> ffffffff804c523a:       32 	53                   	push   %rbx
>> ffffffff804c523b:      294 	48 89 fb             	mov    %rdi,%rbx
>> ffffffff804c523e:      539 	48 83 ec 30          	sub    $0x30,%rsp
>> ffffffff804c5242:     2590 	85 f6                	test   %esi,%esi
>> ffffffff804c5244:      444 	48 8b 4f 78          	mov    0x78(%rdi),=
%rcx
>> ffffffff804c5248:      521 	8b af 4c 04 00 00    	mov    0x44c(%rdi)=
,%ebp
>> ffffffff804c524e:      791 	74 2a                	je     ffffffff804=
c527a <tcp_current_mss+0x43>
>> ffffffff804c5250:      433 	8b 87 00 01 00 00    	mov    0x100(%rdi)=
,%eax
>> ffffffff804c5256:      236 	c1 e0 10             	shl    $0x10,%eax
>> ffffffff804c5259:      191 	89 c2                	mov    %eax,%edx
>> ffffffff804c525b:      487 	23 97 fc 00 00 00    	and    0xfc(%rdi),=
%edx
>> ffffffff804c5261:      362 	39 c2                	cmp    %eax,%edx
>> ffffffff804c5263:      342 	75 15                	jne    ffffffff804=
c527a <tcp_current_mss+0x43>
>> ffffffff804c5265:      473 	45 31 e4             	xor    %r12d,%r12d
>> ffffffff804c5268:      221 	8b 87 00 04 00 00    	mov    0x400(%rdi)=
,%eax
>> ffffffff804c526e:      194 	3b 87 80 04 00 00    	cmp    0x480(%rdi)=
,%eax
>> ffffffff804c5274:      445 	41 0f 94 c4          	sete   %r12b
>> ffffffff804c5278:      261 	eb 03                	jmp    ffffffff804=
c527d <tcp_current_mss+0x46>
>> ffffffff804c527a:        0 	45 31 e4             	xor    %r12d,%r12d
>> ffffffff804c527d:      185 	48 85 c9             	test   %rcx,%rcx
>> ffffffff804c5280:      686 	74 15                	je     ffffffff804=
c5297 <tcp_current_mss+0x60>
>> ffffffff804c5282:     1806 	8b 71 7c             	mov    0x7c(%rcx),=
%esi
>> ffffffff804c5285:        1 	3b b3 5c 03 00 00    	cmp    0x35c(%rbx)=
,%esi
>> ffffffff804c528b:       21 	74 0a                	je     ffffffff804=
c5297 <tcp_current_mss+0x60>
>> ffffffff804c528d:        0 	48 89 df             	mov    %rbx,%rdi
>> ffffffff804c5290:        0 	e8 8b fb ff ff       	callq  ffffffff804=
c4e20 <tcp_sync_mss>
>> ffffffff804c5295:        0 	89 c5                	mov    %eax,%ebp
>> ffffffff804c5297:      864 	48 8d 4c 24 28       	lea    0x28(%rsp),=
%rcx
>> ffffffff804c529c:      634 	48 8d 54 24 10       	lea    0x10(%rsp),=
%rdx
>> ffffffff804c52a1:      995 	31 f6                	xor    %esi,%esi
>> ffffffff804c52a3:        0 	48 89 df             	mov    %rbx,%rdi
>> ffffffff804c52a6:        2 	e8 f2 fe ff ff       	callq  ffffffff804=
c519d <tcp_established_options>
>> ffffffff804c52ab:      859 	8b 8b e8 03 00 00    	mov    0x3e8(%rbx)=
,%ecx
>> ffffffff804c52b1:      936 	83 c0 14             	add    $0x14,%eax
>> ffffffff804c52b4:        6 	0f b7 d1             	movzwl %cx,%edx
>> ffffffff804c52b7:        0 	39 d0                	cmp    %edx,%eax
>> ffffffff804c52b9:      911 	74 04                	je     ffffffff804=
c52bf <tcp_current_mss+0x88>
>> ffffffff804c52bb:        0 	29 d0                	sub    %edx,%eax
>> ffffffff804c52bd:        0 	29 c5                	sub    %eax,%ebp
>> ffffffff804c52bf:        0 	45 85 e4             	test   %r12d,%r12d
>> ffffffff804c52c2:     6894 	89 e8                	mov    %ebp,%eax
>> ffffffff804c52c4:        0 	74 38                	je     ffffffff804=
c52fe <tcp_current_mss+0xc7>
>> ffffffff804c52c6:      990 	48 8b 83 68 03 00 00 	mov    0x368(%rbx)=
,%rax
>> ffffffff804c52cd:      642 	8b b3 04 01 00 00    	mov    0x104(%rbx)=
,%esi
>> ffffffff804c52d3:        3 	48 89 df             	mov    %rbx,%rdi
>> ffffffff804c52d6:      240 	66 2b 70 30          	sub    0x30(%rax),=
%si
>> ffffffff804c52da:      588 	66 2b b3 7e 03 00 00 	sub    0x37e(%rbx)=
,%si
>> ffffffff804c52e1:        2 	66 29 ce             	sub    %cx,%si
>> ffffffff804c52e4:      284 	ff ce                	dec    %esi
>> ffffffff804c52e6:      664 	0f b7 f6             	movzwl %si,%esi
>> ffffffff804c52e9:        2 	e8 0a fb ff ff       	callq  ffffffff804=
c4df8 <tcp_bound_to_half_wnd>
>> ffffffff804c52ee:       68 	0f b7 d0             	movzwl %ax,%edx
>> ffffffff804c52f1:     1870 	89 c1                	mov    %eax,%ecx
>> ffffffff804c52f3:        0 	89 d0                	mov    %edx,%eax
>> ffffffff804c52f5:        0 	31 d2                	xor    %edx,%edx
>> ffffffff804c52f7:     2135 	f7 f5                	div    %ebp
>> ffffffff804c52f9:   107010 	89 c8                	mov    %ecx,%eax
>> ffffffff804c52fb:     1670 	66 29 d0             	sub    %dx,%ax
>> ffffffff804c52fe:        0 	66 89 83 ea 03 00 00 	mov    %ax,0x3ea(%=
rbx)
>> ffffffff804c5305:        4 	48 83 c4 30          	add    $0x30,%rsp
>> ffffffff804c5309:      855 	89 e8                	mov    %ebp,%eax
>> ffffffff804c530b:        0 	5b                   	pop    %rbx
>> ffffffff804c530c:      797 	5d                   	pop    %rbp
>> ffffffff804c530d:        0 	41 5c                	pop    %r12
>> ffffffff804c530f:        0 	c3                   	retq  =20
>>
>> apparently this division causes 1.0% of tbench overhead:
>>
>> ffffffff804c52f5:        0 	31 d2                	xor    %edx,%edx
>> ffffffff804c52f7:     2135 	f7 f5                	div    %ebp
>> ffffffff804c52f9:   107010 	89 c8                	mov    %ecx,%eax
>>
>> (gdb) list *0xffffffff804c52f7
>> 0xffffffff804c52f7 is in tcp_current_mss (net/ipv4/tcp_output.c:1078=
).
>> 1073					  inet_csk(sk)->icsk_af_ops->net_header_len -
>> 1074					  inet_csk(sk)->icsk_ext_hdr_len -
>> 1075					  tp->tcp_header_len);
>> 1076=09
>> 1077			xmit_size_goal =3D tcp_bound_to_half_wnd(tp, xmit_size_goal);
>> 1078			xmit_size_goal -=3D (xmit_size_goal % mss_now);
>> 1079		}
>> 1080		tp->xmit_size_goal =3D xmit_size_goal;
>> 1081=09
>> 1082		return mss_now;
>> (gdb)=20
>>
>> it's this division:
>>
>>         if (doing_tso) {
>>         [...]
>> 			xmit_size_goal -=3D (xmit_size_goal % mss_now);
>>
>> Has no-one hit this before? Perhaps this is why switching loopback =20
>> networking to TSO had a performance impact for others?
>
> Yes, I mentioned it later. [...]

i see - i just caught up with some of my inbox from today.

> [...] But apparently you dont read my mails, so I will just stop=20
> now.

Sorry, i spent my time looking at the profile output.

	Ingo
