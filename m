From: Alex Chiang <achiang-Z7WLFzj8eWMS+FvcfC7Uqw@public.gmane.org>
Subject: Re: 2.6.35-rc2-git2: Reported regressions from 2.6.34
Date: Thu, 10 Jun 2010 16:37:03 -0600
Message-ID: <20100610223703.GF8257@canonical.com>
References: <Rlf_Qjov7bG.A.a8F.I8rDMB@chimera>
 <alpine.LFD.2.00.1006081814240.4506@i5.linux-foundation.org>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <alpine.LFD.2.00.1006081814240.4506-GpypE611fyS63QaFMGN2QEqCLAeBNdoH@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

* Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>:
> On Wed, 9 Jun 2010, Rafael J. Wysocki wrote:
> > Bug-Entry     : http://bugzilla.kernel.org/show_bug.cgi?id=16161
> > Subject       : [2.6.35-rc1 regression] sysfs: cannot create duplicate filename ... XVR-600 related?
> > Submitter     : Mikael Pettersson <mikpe-1zs4UD6AkMk@public.gmane.org>
> > Date          : 2010-06-01 19:57 (8 days old)
> > Message-ID    : <19461.26166.427857.612983-tgku4HJDRZih8lFjZTKsyTAV6s6igYVG@public.gmane.org>
> > References    : http://marc.info/?l=linux-kernel&m=127542227511925&w=2
> >
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=16090
> > Subject	: sysfs: cannot create duplicate filename
> > Submitter	: Tobias <devnull-fBT1nhYaLZ4@public.gmane.org>
> > Date		: 2010-06-01 15:59 (8 days old)
> > Handled-By	: Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>
> 
> These two look related. Both are related to that "slot" thing in sysfs 
> PCI, but only one of them is marked as Jesse's. Jesse?

Both related, yes.

I asked Jesse to revert the patch, so expect that to come
shortly.

Thanks,
/ac
