From: "Vegard Nossum" <vegard.nossum@gmail.com>
Subject: Re: linux-next: Tree for July 18: warning at kernel/lockdep.c:2068 trace_hardirqs_on_caller
Date: Sat, 19 Jul 2008 14:59:12 +0200
Message-ID: <19f34abd0807190559y2fe5ebf9h7095793e82de3122@mail.gmail.com>
References: <20080718195352.e562a00f.sfr@canb.auug.org.au>
	 <200807190928.33978.m.kozlowski@tuxland.pl>
	 <19f34abd0807190255x304173d4wf2bfabb2d5bce511@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-next-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=/r87TB3voeMoMpPlT6LxCoy0IVBvWX4UGLpd2ZX8uZQ=;
        b=vwrzipePZzVft/Q4qXpWepivwxKDTg1D5E0XI6XvQWUTJgPLOfxke1InjNV9q9f+06
         KFZMIJe8iAhVK9mbwI54gvp7io97au5CA3VSXKFu1RZpfhwZWjUjDW1pxXREwc4nPcEh
         xdp56NUmUzMLZVGsNb4wrVZAVwhUKTaW+zRSE=
In-Reply-To: <19f34abd0807190255x304173d4wf2bfabb2d5bce511@mail.gmail.com>
Content-Disposition: inline
Sender: linux-next-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Mariusz Kozlowski <m.kozlowski@tuxland.pl>, Dave Hansen <haveblue@us.ibm.com>, Greg Kroah-Hartman <gregkh@suse.de>
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, kernel-testers@vger.kernel.org, linux-next@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>, Pekka Enberg <penberg@cs.helsinki.fi>

On Sat, Jul 19, 2008 at 11:55 AM, Vegard Nossum <vegard.nossum@gmail.com> wrote:
> What I don't get here is how SLUB can be used this early in the boot
> process. Notice that this is still miles away from the
>
>    SLUB: Genslabs=12, HWalign=128, Order=0-3, MinObjects=0, CPUs=1, Nodes=1
>
> line, which comes much later. And that kobject_init() _is_ calling
> kzalloc() via verify_dynamic_kobject_allocation(). Isn't this an
> error?
>
> (Unfortunately, my "git log" doesn't turn up any recent changes for
> any of the affected code paths here.)

Ehe... and this is the reason why: The code was added by this patch:

commit 0e3638d1e04040121af00195f7e4628078246489
Author: Dave Hansen <haveblue@us.ibm.com>
Date:   Thu Mar 16 17:30:16 2006 -0800

    warn when statically-allocated kobjects are used

..which only exists in -next. Is that just a truly ancient patch, or
did somebody forget to adjust their clock?

(Stephen: Maybe this has been answered before, but what's the best way
to figure out where it came from?)


Vegard

-- 
"The animistic metaphor of the bug that maliciously sneaked in while
the programmer was not looking is intellectually dishonest as it
disguises that the error is the programmer's own creation."
	-- E. W. Dijkstra, EWD1036
