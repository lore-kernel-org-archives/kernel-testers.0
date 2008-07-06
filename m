From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Subject: Re: 2.6.26-rc9: Reported regressions from 2.6.25
Date: Sun, 6 Jul 2008 16:14:16 +0200
Message-ID: <20080706141416.GB20940@elte.hu>
References: <Vu1KV8Wj_GP.A.qW.DzLcIB@albercik>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <Vu1KV8Wj_GP.A.qW.DzLcIB@albercik>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Adrian Bunk <bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Natalie Protasevich <protasnb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>


* Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=10726
> Subject		: x86-64 NODES_SHIFT compile failure.
> Submitter	: Dave Jones <davej-rdkfGonbjUTCLXcRTR1eJlpr/1R2p/CL@public.gmane.org>
> Date		: 2008-05-16 12:54 (52 days old)
> References	: http://lkml.org/lkml/2008/5/16/312
> Handled-By	: Mike Travis <travis-sJ/iWh9BUns@public.gmane.org>
> Patch		: http://lkml.org/lkml/2008/5/16/343

fixed by:

 commit efac41894df57d32b483ac622d03541b5b2692c0
 Author: Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>
 Date:   Tue Jul 1 08:56:32 2008 +0200

     x86: fix NODES_SHIFT Kconfig range

	Ingo
