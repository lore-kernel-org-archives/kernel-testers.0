From: Chris Wilson <chris-Y6uKTt2uX1cEflXRtASbqLVCufUGDwFn@public.gmane.org>
Subject: Re: [Bug #15004] i915: *ERROR* Execbuf while wedged
Date: Wed, 27 Jan 2010 18:08:06 +0000
Message-ID: <89kc63$fua5o0@fmsmga002.fm.intel.com>
References: <pYFNu11z2aM.A.pJH.CZMXLB@chimera> <q60Z28d_9yH.A.r3H.XZMXLB@chimera> <20100127100144.4c7d8996@jbarnes-piketon>
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20100127100144.4c7d8996@jbarnes-piketon>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, tomas m <tmezzadra-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Wed, 27 Jan 2010 10:01:44 -0800, Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org> wrote:
> On Sun, 24 Jan 2010 23:23:11 +0100 (CET)
> "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> 
> > This message has been generated automatically as a part of a report
> > of regressions introduced between 2.6.31 and 2.6.32.
> > 
> > The following bug entry is on the current list of known regressions
> > introduced between 2.6.31 and 2.6.32.  Please verify if it still should
> > be listed and let me know (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15004
> > Subject		: i915: *ERROR* Execbuf while wedged
> > Submitter	: tomas m <tmezzadra-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > Date		: 2010-01-07 18:53 (18 days old)
> 
> Chris, any ideas about this one?  I remember seeing a few like this
> that have been bisected to 2D driver changes recently...

Yes, this is almost certainly our userspace driver sending the GPU into a
spin. And no, we haven't identified the cause yet, there have a been a lot
of conflicting reports and guesswork, with very little information.

-- 
Chris Wilson, Intel Open Source Technology Centre
