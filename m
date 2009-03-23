From: Alan Cox <alan-qBU/x9rampVanCEyBjwyrvXRex20P6io@public.gmane.org>
Subject: Re: [Bug #12872] pwc mmap always fails with EAGAIN
Date: Mon, 23 Mar 2009 10:49:45 +0000
Message-ID: <20090323104945.0fc497e6@lxorguk.ukuu.org.uk>
References: <GPBuLTara4J.A.3kH.TZTxJB@chimera>
	<20090322142837.2df0d93d@lxorguk.ukuu.org.uk>
	<20090322144516.GA13129@elte.hu>
	<200903222058.12924.M4rkusXXL@web.de>
	<7b6bb4a50903230341r6ab4a910l401a49d41aa289c7@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <7b6bb4a50903230341r6ab4a910l401a49d41aa289c7-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: =?UTF-8?B?5bCP5aSp?= <xtfeng-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Markus <M4rkusXXL-S0/GAf8tV78@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

> >    Rename the pagerange_is_ram() to pat_pagerange_is_ram() and add the
> >    "track legacy 1MB region as non RAM" condition.

But the lowest 640K are most definitely RAM.
