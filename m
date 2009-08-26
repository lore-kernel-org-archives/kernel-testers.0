From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #14030] Kernel NULL pointer dereference at 0000000000000008, pty-related
Date: Wed, 26 Aug 2009 23:11:06 +0200
Message-ID: <200908262311.06860.rjw@sisk.pl>
References: <riPp5fx5ECC.A.2IG.qsGlKB@chimera> <_yaHeGjHEzG.A.D2G.3sGlKB@chimera> <alpine.LFD.2.01.0908251716050.3218@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.LFD.2.01.0908251716050.3218-bi+AKbBUZKY6gyzm1THtWbp2dZbC/Bob@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Eric W. Biederman" <ebiederm-aS9lmoZGLiVWk0Htik3J/w@public.gmane.org>

On Wednesday 26 August 2009, Linus Torvalds wrote:
> 
> On Tue, 25 Aug 2009, Rafael J. Wysocki wrote:
> 
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.30.  Please verify if it still should be listed and let me know
> > (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14030
> > Subject		: Kernel NULL pointer dereference at 0000000000000008, pty-related
> > Submitter	: Eric W. Biederman <ebiederm-aS9lmoZGLiVWk0Htik3J/w@public.gmane.org>
> > Date		: 2009-08-20 5:46 (6 days old)
> > References	: http://marc.info/?l=linux-kernel&m=125074724623423&w=4
> > Handled-By	: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
> > Patch		: http://patchwork.kernel.org/patch/43679/
> 
> This is now committed as 5c58ceff103d8a654f24769bb1baaf84a841b0cc. 

Thanks, closed.

Rafael
