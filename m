From: Benjamin Herrenschmidt <benh-XVmvHMARGAS8U2dJNN8I7kB+6BGkLq7r@public.gmane.org>
Subject: Re: [Bug #12608] 2.6.29-rc powerpc G5 Xorg legacy_mem regression
Date: Fri, 06 Feb 2009 17:01:13 +1100
Message-ID: <1233900073.4612.118.camel@pasglop>
References: <kkuKoQJIW-D.A.61C.auYiJB@chimera>
	 <pWZw1SZjMCH.A.sIE.wuYiJB@chimera> <1233791329.4612.23.camel@pasglop>
	 <Pine.LNX.4.64.0902051713550.1445@blonde.anvils>
	 <1233867944.4612.104.camel@pasglop>
	 <21d7e9970902051345h76fb26c1hc0397f6262f70eae@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <21d7e9970902051345h76fb26c1hc0397f6262f70eae-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Dave Airlie <airlied-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Hugh Dickins <hugh-DTz5qymZ9yRBDgjK7y7TUQ@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>


> I think the correct answer is the ugly one, try again.

Well... it's a fairly recent damage in X which is why I was somewhat
hoping that it wasn't too widespread it couldn't be contained
before the kernel got butchered :-)

But I'll just stick anonymous memory in there instead, it should be
trivial enough.

> Add a new legacy_mem interface that works cleanly, update X to use it,
> leave the old
> broken one broken as it for older X to use.

:-)

Ben.

