From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: Linux 2.6.27-rc5: System boot regression caused by commit
 a2bd7274b47124d2fc4dfdb8c0591f545ba749dd
Date: Sun, 31 Aug 2008 10:42:41 -0700 (PDT)
Message-ID: <alpine.LFD.1.10.0808311039330.12958@nehalem.linux-foundation.org>
References: <alpine.LFD.1.10.0808281555230.3300@nehalem.linux-foundation.org> <200808302334.29156.rjw@sisk.pl> <86802c440808301810r17657f3fnb3c8af5496955e0d@mail.gmail.com> <200808311427.19369.rjw@sisk.pl>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200808311427.19369.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>, Tejun Heo <htejun-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, David Witbrodt <dawitbro-rphTv4pjVZMJGwgDXS7ZQA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Kernel Testers <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>



On Sun, 31 Aug 2008, Rafael J. Wysocki wrote:
> 
> Works, dmesg is at:
> http://www.sisk.pl/kernel/debug/mainline/2.6.27-rc5/2.6.27-rc5-test.log

That BAR is indeed "locked". Now that we try to reallocate it, you get 
this in the log:

	pci 0000:00:00.0: BAR 3: error updating (0x40000004 != 0xe0000004)
	pci 0000:00:00.0: BAR 3: error updating (high 0x000001 != 0x000000)

ie now the code _tried_ to update the BAR to point to 0x1_4000_0000 
instead, but the hardware refused, and it is still at 0x0_e000_0000.

So Yinghai's patch "worked", but it worked by doing nothing.

See my earlier guess about locked read-only resources a few emails back. 
IOW, I'm not at all surprised. I really do suspect that that BAR is some 
very special "this is the HT->PCIE region" BAR.

			Linus
