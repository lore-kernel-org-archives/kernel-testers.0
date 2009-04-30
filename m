From: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: [Bug #13068] Lockdep warining in inotify_dev_queue_event
Date: Wed, 29 Apr 2009 20:54:19 -0700
Message-ID: <20090429205419.99aaab47.akpm@linux-foundation.org>
References: <47KgT3nlbjD.A.lnB.jc48JB@chimera>
	<200904292151.46107.rjw@sisk.pl>
	<49F8C255.2040301@gmail.com>
	<200904292340.17071.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200904292340.17071.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Marcin Slusarz <marcin.slusarz-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Sachin Sant <sachinp-xthvdsQ13ZrQT0dZR+AlfA@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Wed, 29 Apr 2009 23:40:16 +0200 "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> 
> Since Sachin is no longer able to reproduce it, now you're the reporter. :-)
> 

Wu Fengguang <fengguang.wu-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org> is hitting it as well (Subject:
[PATCH] use GFP_NOFS in kernel_event()).

Unless Eric (or Peter) get a wiggle on, we might need to merge the
GFP_NOFS thing.
