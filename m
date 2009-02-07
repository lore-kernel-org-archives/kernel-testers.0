From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #12491] i915 lockdep warning
Date: Sat, 7 Feb 2009 14:53:30 +0100
Message-ID: <200902071453.31570.rjw@sisk.pl>
References: <kkuKoQJIW-D.A.61C.auYiJB@chimera> <F169D4F5E1F1974DBFAFABF47F60C10A1DFD867C@orsmsx507.amr.corp.intel.com> <adabptfc90m.fsf@cisco.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <adabptfc90m.fsf-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Roland Dreier <rdreier-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org>, Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>
Cc: "Brandeburg, Jesse" <jesse.brandeburg-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Eric Anholt <eric-WhKQ6XTQaPysTnJN9+BGXg@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, intel-gfx-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org

On Saturday 07 February 2009, Roland Dreier wrote:
> [intel-gfx CC added]
> 
>  > I tested this on my 965 based system that showed the issue and it seemed resolved, at least no warnings in dmesg.  Lockdep was confirmed to still be enabled.
> 
>  > I can mark the bug fixed in korg bugzilla too.
> 
> Probably we just want to add a comment saying the patch works

Yes, I have already added this information to the bug entry.

> -- the bug should stay open until we get the fix upstream I guess.

Yes, the bug will be closed as soon as it's fixed upstream.

Thanks,
Rafael
