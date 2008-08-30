From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: Linux 2.6.27-rc5: System boot regression caused by commit
 a2bd7274b47124d2fc4dfdb8c0591f545ba749dd
Date: Fri, 29 Aug 2008 23:21:52 -0700 (PDT)
Message-ID: <alpine.LFD.1.10.0808292318300.3290@nehalem.linux-foundation.org>
References: <724017.46804.qm@web82108.mail.mud.yahoo.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <724017.46804.qm-TDf3YR2ofGOvuULXzWHTWIglqE1Y4D90QQ4Iyu8u01E@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: David Witbrodt <dawitbro-rphTv4pjVZMJGwgDXS7ZQA@public.gmane.org>
Cc: Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>, Tejun Heo <htejun-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Kernel Testers <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>



On Fri, 29 Aug 2008, David Witbrodt wrote:
> 
> Not sure if you wanted ME to test this, but I've been watching this
> argument with Yinghai and became curious...

You'll eventually have something to test, this part was just 
infrastructure and didn't change anything at all.

> I updated my git tree so that I have the insert_resource_expand_to_fit()
> changes, and the kernel builds fine.  Unfortunately, it hangs like all
> 2.6.2[67] kernels without reverting 3def3d6d... and 1e934dda... (or
> without the later patches provided by Ingo and Yinghai).
> 
> Sorry if I am interfering... just wanted to inject this data, in case
> it's meaningful!

Yeah, nothing has changed yet for your case. What should change your case 
is the thing Yinghai is working on with the "late add of e820 data to the 
resource tree".

His earlier version already worked for you, didn't it? We're really now 
just finalizing details (in fact, "insert_resource_expand_to_fit()" is 
just a helper function for a detail that may not even matter all that 
much).

		Linus
