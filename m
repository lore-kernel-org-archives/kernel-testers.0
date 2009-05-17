From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #13068] Lockdep warining in inotify_dev_queue_event
Date: Sun, 17 May 2009 12:25:34 +0200
Message-ID: <200905171225.34911.rjw@sisk.pl>
References: <_AjETDMbIoL.A.DcH.RYzDKB@chimera> <20090517063530.GB1583@elte.hu> <4A0FC736.7050301@in.ibm.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <4A0FC736.7050301-xthvdsQ13ZrQT0dZR+AlfA@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Sachin Sant <sachinp-xthvdsQ13ZrQT0dZR+AlfA@public.gmane.org>
Cc: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Marcin Slusarz <marcin.slusarz-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Sunday 17 May 2009, Sachin Sant wrote:
> Ingo Molnar wrote:
> > i think this might be fixed by:
> >
> > 381a80e: inotify: use GFP_NOFS in kernel_event() to work around a lockdep false-positive
> >
> > already in -rc6.
> >   
> Haven't seen this issue with rc6.

Great, thanks.  Bug closed.

Best,
Rafael
