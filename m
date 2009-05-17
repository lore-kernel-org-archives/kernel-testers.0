From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Subject: Re: [Bug #13068] Lockdep warining in inotify_dev_queue_event
Date: Sun, 17 May 2009 08:35:30 +0200
Message-ID: <20090517063530.GB1583@elte.hu>
References: <_AjETDMbIoL.A.DcH.RYzDKB@chimera> <385Pu-agh7M.A.UHD.QazDKB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <385Pu-agh7M.A.UHD.QazDKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Marcin Slusarz <marcin.slusarz-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Sachin Sant <sachinp-xthvdsQ13ZrQT0dZR+AlfA@public.gmane.org>


* Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.29.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13068
> Subject		: Lockdep warining in inotify_dev_queue_event

s/warining/warning

> Submitter	: Sachin Sant <sachinp-xthvdsQ13ZrQT0dZR+AlfA@public.gmane.org>
> Date		: 2009-04-05 12:37 (42 days old)
> References	: http://marc.info/?l=linux-kernel&m=123893439229272&w=4

i think this might be fixed by:

381a80e: inotify: use GFP_NOFS in kernel_event() to work around a lockdep false-positive

already in -rc6.

	Ingo
