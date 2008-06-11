From: Dave Hansen <dave-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
Subject: Re: [BUG] 2.6.26-rc5-mm2 - kernel BUG at
	arch/x86/kernel/setup.c:388!
Date: Wed, 11 Jun 2008 11:28:17 -0700
Message-ID: <1213208897.20475.19.camel@nimitz>
References: <20080609223145.5c9a2878.akpm@linux-foundation.org>
	 <485011DF.9050606@linux.vnet.ibm.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <485011DF.9050606-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Kamalesh Babulal <kamalesh-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
Cc: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org, Andy Whitcroft <apw-26w3C0LaAnFg9hUCZPvPmw@public.gmane.org>, Balbir Singh <balbir-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>, Vegard Nossum <vegard.nossum-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Mike Travis <travis-sJ/iWh9BUns@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>

On Wed, 2008-06-11 at 23:26 +0530, Kamalesh Babulal wrote:
> Hi Andrew,
>=20
> The 2.6.26-rc5-mm2 kernel panic's, while booting up on the x86_64
> box with the attached .config file.

Just to save everyone the trouble, it looks like this is a new BUG_ON()=
=2E
=EF=BB=BF
http://www.kernel.org/pub/linux/kernel/people/akpm/patches/2.6/2.6.26-r=
c5/2.6.26-rc5-mm2/broken-out/fix-x86_64-splat.patch

The machine in question is a single-node machine, but with
CONFIG_NUMA=3Dy.






--
To unsubscribe from this list: send the line "unsubscribe kernel-tester=
s" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
