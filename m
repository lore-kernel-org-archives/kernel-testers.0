From: Bjorn Helgaas <bjorn.helgaas-VXdhtT5mjnY@public.gmane.org>
Subject: Re: [Bug #15480] [regression] Fails to boot properly unless given pci=nocrs
Date: Wed, 7 Apr 2010 16:02:21 -0600
Message-ID: <201004071602.22200.bjorn.helgaas@hp.com>
References: <6Pphclm24fK.A.lSF.qsPvLB@chimera> <JVS2s9dmTsP.A.pr.JvPvLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <JVS2s9dmTsP.A.pr.JvPvLB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Yanko Kaneti <yaneti-jUE9FD3ILm5BDgjK7y7TUQ@public.gmane.org>

On Wednesday 07 April 2010 03:08:37 pm Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a summary report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.33.  Please verify if it still should be listed and let the tracking team
> know (either way).
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15480
> Subject		: [regression] Fails to boot properly unless given pci=nocrs
> Submitter	: Yanko Kaneti <yaneti-jUE9FD3ILm5BDgjK7y7TUQ@public.gmane.org>
> Date		: 2010-03-09 01:24 (30 days old)
> Handled-By	: Bjorn Helgaas <bjorn.helgaas-VXdhtT5mjnY@public.gmane.org>
> Patch		: http://lkml.org/lkml/2010/3/11/512

This should be closed.  The fix is in Linus' tree:

http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=d558b483d5a73f5718705b270cb2090f66ea48c8
