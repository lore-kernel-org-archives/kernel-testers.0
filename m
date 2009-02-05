From: Benjamin Herrenschmidt <benh-XVmvHMARGAS8U2dJNN8I7kB+6BGkLq7r@public.gmane.org>
Subject: Re: [Bug #12608] 2.6.29-rc powerpc G5 Xorg legacy_mem regression
Date: Fri, 06 Feb 2009 08:05:44 +1100
Message-ID: <1233867944.4612.104.camel@pasglop>
References: <kkuKoQJIW-D.A.61C.auYiJB@chimera>
	 <pWZw1SZjMCH.A.sIE.wuYiJB@chimera> <1233791329.4612.23.camel@pasglop>
	 <Pine.LNX.4.64.0902051713550.1445@blonde.anvils>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <Pine.LNX.4.64.0902051713550.1445-XZxpfvf5U/bbmfIwyoSfiQ@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Hugh Dickins <hugh-DTz5qymZ9yRBDgjK7y7TUQ@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>


> Is it a really a bug in X, or a misunderstanding between X and
> the kernel as to what existence of the legacy_mem file implies?
> 
> I may have got this quite wrong, but to me it appears that X assumes
> that existence of the legacy_mem file implies that it will be useful;
> whereas the kernel thinks it can make the legacy_mem file available,
> even if it cannot be used for mmapping mem - which is its sole purpose?
> 
> What if pci_create_legacy_files() were to call some new verification
> routine, and only create the legacy_mem file if it would be usable?
> (But perhaps that cannot be known at the time it needs to be created.)

Well, first X should certainly not -fail- to launch if it fails to map
legacy memory, which is generally not useful anyway. That's where the
bug is. Jesse, did you have a chance to fix that yet or should I give it
a go ?

The second problem is that if I just don't expose the legacy_mem file,
then X has no way to know whether the kernel doesn't support the
interface or whether the HW doesn't support legacy memory access. So X
will fallback to whacking /dev/mem which is even more bogus. At least
that's what I remember from last I looked at that part of X code.

It should be a trivial fix on X side tho.

Cheers,
Ben.

