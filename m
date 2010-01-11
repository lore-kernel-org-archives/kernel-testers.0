From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #14907] Commit "kbuild: fix bzImage build for x86" breaks build
Date: Mon, 11 Jan 2010 21:02:13 +0100
Message-ID: <201001112102.13570.rjw@sisk.pl>
References: <wnS54-l8PVO.A.TlF.oMlSLB@chimera> <omZ8aBZReyD.A.lV.kNlSLB@chimera> <20100111013606.GA7031@progeny.tock>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20100111013606.GA7031-Zz+2AvWe3NP1iTQCbxR7ew@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Jonathan Nieder <jrnieder-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Michael Tokarev <mjt-XAri/EZa3C4vJsYlp49lxw@public.gmane.org>, Michal Marek <mmarek-AlSwsSmVLrQ@public.gmane.org>, Oliver Hartkopp <oliver-fJ+pQTUTwRTk1uMJSBkQmQ@public.gmane.org>, Sam Ravnborg <sam-uyr5N9Q2VtJg9hUCZPvPmw@public.gmane.org>

On Monday 11 January 2010, Jonathan Nieder wrote:
> Rafael J. Wysocki wrote:
> 
> > The following bug entry is on the current list of known regressions
> > from 2.6.32.  Please verify if it still should be listed and let me know
> > (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14907
> > Subject		: Commit "kbuild: fix bzImage build for x86" breaks build
> > Submitter	: Oliver Hartkopp <oliver-fJ+pQTUTwRTk1uMJSBkQmQ@public.gmane.org>
> > Date		: 2009-12-19 19:21 (23 days old)
> > First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=4a2ff67c88211026afcbdbc190c13f705dae1b59
> > References	: http://marc.info/?l=linux-kernel&m=126125050622195&w=4
> > 		  http://marc.info/?l=linux-kernel&m=126114565103300&w=4
> > 		  http://marc.info/?l=linux-kbuild&m=126202819526623&w=2
> > Handled-By	: Jonathan Nieder <jrnieder-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > Patch		: http://thread.gmane.org/gmane.linux.kbuild.devel/4313/focus=4319
> > 		  http://patchwork.kernel.org/patch/71957/
> 
> I am using the patch without problems, but it is not in the mainline
> as of v2.6.33-rc3-git3.  So please do keep the bug listed.

I will, thanks for the update.

Rafael
