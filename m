From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #14907] Commit "kbuild: fix bzImage build for x86" breaks build
Date: Thu, 14 Jan 2010 21:35:53 +0100
Message-ID: <201001142135.53096.rjw@sisk.pl>
References: <wnS54-l8PVO.A.TlF.oMlSLB@chimera> <4B4DBD8B.6000002@suse.cz> <4B4EFA82.1090506@suse.cz>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <4B4EFA82.1090506-AlSwsSmVLrQ@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Michal Marek <mmarek-AlSwsSmVLrQ@public.gmane.org>
Cc: Jonathan Nieder <jrnieder-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Michael Tokarev <mjt-XAri/EZa3C4vJsYlp49lxw@public.gmane.org>, Oliver Hartkopp <oliver-fJ+pQTUTwRTk1uMJSBkQmQ@public.gmane.org>, Sam Ravnborg <sam-uyr5N9Q2VtJg9hUCZPvPmw@public.gmane.org>

On Thursday 14 January 2010, Michal Marek wrote:
> On 13.1.2010 13:33, Michal Marek wrote:
> > On 11.1.2010 02:36, Jonathan Nieder wrote:
> >> Rafael J. Wysocki wrote:
> >>
> >>> The following bug entry is on the current list of known regressions
> >>> from 2.6.32.  Please verify if it still should be listed and let me know
> >>> (either way).
> >>>
> >>>
> >>> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14907
> >>> Subject		: Commit "kbuild: fix bzImage build for x86" breaks build
> >>> Submitter	: Oliver Hartkopp <oliver-fJ+pQTUTwRTk1uMJSBkQmQ@public.gmane.org>
> >>> Date		: 2009-12-19 19:21 (23 days old)
> >>> First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=4a2ff67c88211026afcbdbc190c13f705dae1b59
> >>> References	: http://marc.info/?l=linux-kernel&m=126125050622195&w=4
> >>> 		  http://marc.info/?l=linux-kernel&m=126114565103300&w=4
> >>> 		  http://marc.info/?l=linux-kbuild&m=126202819526623&w=2
> >>> Handled-By	: Jonathan Nieder <jrnieder-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> >>> Patch		: http://thread.gmane.org/gmane.linux.kbuild.devel/4313/focus=4319
> >>> 		  http://patchwork.kernel.org/patch/71957/
> >>
> >> I am using the patch without problems, but it is not in the mainline
> >> as of v2.6.33-rc3-git3.  So please do keep the bug listed.
> > 
> > I resent the pull request (http://lkml.org/lkml/2010/1/13/194), let's see.
> 
> FYI:
> commit 04e9e5c7659ee07f0387ddb663913fadcca88d5f
> Merge: cedabed 0710520
> Author: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
> Date:   Wed Jan 13 16:09:59 2010 -0800
> 
>     Merge branch 'for-33' of git://repo.or.cz/linux-kbuild
> 
>     * 'for-33' of git://repo.or.cz/linux-kbuild:
>       Makefile: do not override LC_CTYPE
>       kbuild: really fix bzImage build with non-bash sh

Thanks, closing.

Rafael
