From: Nick Piggin <npiggin-l3A5Bk7waGM@public.gmane.org>
Subject: Re: [Bug #12604] Commit 31a12666d8f0c22235297e1c1575f82061480029 slows down Berkeley DB
Date: Thu, 12 Feb 2009 02:47:18 +0100
Message-ID: <20090212014718.GF30043@wotan.suse.de>
References: <AIghyjFgMFP.A.uZD._10jJB@chimera> <sWhNs83kKPE.A.gUG.420jJB@chimera> <20090210162830.GD12146@placka.suse.cz>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20090210162830.GD12146-MqCa7tSQB4jjFM9bn6wA6Q@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Jan Kara <jack-AlSwsSmVLrQ@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>

On Tue, Feb 10, 2009 at 05:28:30PM +0100, Jan Kara wrote:
> On Sun 08-02-09 20:21:42, Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.28.  Please verify if it still should be listed and let me know
> > (either way).
>   Yes, I've verified with latest git and the regression is still there.

I'm working on this FWIW...

> 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12604
> > Subject		: Commit 31a12666d8f0c22235297e1c1575f82061480029 slows down Berkeley DB
> > Submitter	: Jan Kara <jack-AlSwsSmVLrQ@public.gmane.org>
> > Date		: 2009-01-30 1:23 (10 days old)
> > First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=31a12666d8f0c22235297e1c1575f82061480029
> > References	: http://marc.info/?l=linux-kernel&m=123327862901800&w=4
> 
> 									Honza
