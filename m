From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #11846] commit a802dd0e breaks console keyboard input
Date: Sun, 26 Oct 2008 12:57:59 +0100
Message-ID: <200810261258.00532.rjw@sisk.pl>
References: <nw2Y6lk-0lG.A.VUB.RV5AJB@chimera> <t1C3RWL0r7M.A.QGC.iV5AJB@chimera> <20081026125010.GB4787@osiris.boeblingen.de.ibm.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20081026125010.GB4787-Pmgahw53EmNLmI7Nx2oIsGnsbthNF6/HVpNB7YpNyf8@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Heiko Carstens <heiko.carstens-tA70FqPdS9bQT0dZR+AlfA@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, walt <w41ter-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>

On Sunday, 26 of October 2008, Heiko Carstens wrote:
> On Sat, Oct 25, 2008 at 10:06:47PM +0200, Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.27.  Please verify if it still should be listed and let me know
> > (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11846
> > Subject		: commit a802dd0e breaks console keyboard input
> > Submitter	: walt <w41ter-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > Date		: 2008-10-24 0:09 (2 days old)
> > References	: http://marc.info/?l=linux-kernel&m=122480701528944&w=4
> > Handled-By	: Heiko Carstens <heiko.carstens-tA70FqPdS9bQT0dZR+AlfA@public.gmane.org>
> > Patch		: http://marc.info/?l=linux-kernel&m=122487763507703&w=4
> 
> Linus fixed this with 4403b406d4369a275d483ece6ddee0088cc0d592
> 'Revert "Call init_workqueues before pre smp initcalls."'

Thanks, closed.

Rafael
