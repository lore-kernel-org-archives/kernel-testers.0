From: Theodore Tso <tytso-3s7WtUTddSA@public.gmane.org>
Subject: Re: [Bug #12604] Commit 31a12666d8f0c22235297e1c1575f82061480029
	slows down Berkeley DB
Date: Sat, 14 Feb 2009 09:29:15 -0500
Message-ID: <20090214142915.GE26628@mini-me.lan>
References: <AIghyjFgMFP.A.uZD._10jJB@chimera> <sWhNs83kKPE.A.gUG.420jJB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <sWhNs83kKPE.A.gUG.420jJB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Jan Kara <jack-AlSwsSmVLrQ@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Nick Piggin <npiggin-l3A5Bk7waGM@public.gmane.org>

On Sun, Feb 08, 2009 at 08:21:42PM +0100, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.28.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12604
> Subject		: Commit 31a12666d8f0c22235297e1c1575f82061480029 slows down Berkeley DB
> Submitter	: Jan Kara <jack-AlSwsSmVLrQ@public.gmane.org>
> Date		: 2009-01-30 1:23 (10 days old)
> First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=31a12666d8f0c22235297e1c1575f82061480029
> References	: http://marc.info/?l=linux-kernel&m=123327862901800&w=4
> 

Note: this has been fixed in mainline as of 2.6.29-rc5, in commit
3a4c6800.  So this bug can be closed now...

						- Ted

P.S.  One good thing about the commit 31a12666 was that made an
otherwise very hard to hit potential deadlock condition in ext4 very
easy to hit, and thus for us to detect and to fix.  So, thanks.  :-)
