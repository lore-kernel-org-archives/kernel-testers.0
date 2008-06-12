From: Kamalesh Babulal <kamalesh-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
Subject: Re: [BUG] 2.6.26-rc5-mm2 - kernel BUG at arch/x86/kernel/setup.c:388!
Date: Thu, 12 Jun 2008 12:25:29 +0530
Message-ID: <4850C861.108@linux.vnet.ibm.com>
References: <20080609223145.5c9a2878.akpm@linux-foundation.org> <485011DF.9050606@linux.vnet.ibm.com>  <1213208897.20475.19.camel@nimitz> <19f34abd0806111137t4291b9fkb66951aa8f4d456f@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <19f34abd0806111137t4291b9fkb66951aa8f4d456f-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Vegard Nossum <vegard.nossum-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Dave Hansen <dave-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org, Andy Whitcroft <apw-26w3C0LaAnFg9hUCZPvPmw@public.gmane.org>, Balbir Singh <balbir-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>, Mike Travis <travis-sJ/iWh9BUns@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>

Vegard Nossum wrote:
> On 6/11/08, Dave Hansen <dave-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org> wrote:
>> On Wed, 2008-06-11 at 23:26 +0530, Kamalesh Babulal wrote:
>>  > Hi Andrew,
>>  >
>>  > The 2.6.26-rc5-mm2 kernel panic's, while booting up on the x86_64
>>  > box with the attached .config file.
>>
>>
>> Just to save everyone the trouble, it looks like this is a new BUG_O=
N().
>>  =EF=BB=BF
>>  http://www.kernel.org/pub/linux/kernel/people/akpm/patches/2.6/2.6.=
26-rc5/2.6.26-rc5-mm2/broken-out/fix-x86_64-splat.patch
>>
>>  The machine in question is a single-node machine, but with
>>  CONFIG_NUMA=3Dy.
>>
>=20
> Yes. Sorry, I already responded in a separate e-mail (see below), but
> that obviously missed all the Ccs. So here it goes again...:
>=20
> I'm betting
>=20
> commit a953e4597abd51b74c99e0e3b7074532a60fd031
> Author: Mike Travis <travis-sJ/iWh9BUns@public.gmane.org>
> Date:   Mon May 12 21:21:12 2008 +0200
>=20
>     sched: replace MAX_NUMNODES with nr_node_ids in kernel/sched.c
>=20
> will fix this if it's not in -mm2 already.
>=20
> The BUG() is simply there to prevent silent corruption. Mike already
> has a patch that changes it to a WARN(), but it obviously didn't get
> through (either)...
>=20
>=20
> Vegard
Hi,

Thanks, the patch fixes the kernel oops.

>=20
>=20
> On 6/11/08, Vegard Nossum <vegard.nossum-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
>> On 6/9/08, Kamalesh Babulal <kamalesh-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org> wrote:
>>  > Hi Andrew,
>>  >
>>  > The 2.6.26-rc5-mm2 kernel panic's, while booting up on the x86_64
>>  > box with the attached .config file.
>>
>>  (Please apologize for the strange way of replying to this message. =
It
>>  seems that LKML gave up delivering to my address, so I'm currently
>>  reading off lkml.org.)
>>
>>  This should already be fixed, but Andrew refused to apply the patch
>>  before releasing the -mm1 (and -mm2 apparently). I'm attaching the
>>  patch, can you see if it helps?
>>
>>  Thanks.
>>
>>
>>  Vegard
>=20


--=20
Thanks & Regards,
Kamalesh Babulal,
Linux Technology Center,
IBM, ISTL.
--
To unsubscribe from this list: send the line "unsubscribe kernel-tester=
s" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
