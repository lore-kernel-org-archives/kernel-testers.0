From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #14899] reiserfs: inconsistent lock state
Date: Tue, 29 Dec 2009 22:51:16 +0100
Message-ID: <200912292251.16427.rjw@sisk.pl>
References: <LptzGUUXbTK.A.MSF.ymhOLB@chimera> <NJVdobuNFNK.A.0O.fnhOLB@chimera> <20091229162858.GA5258@nowhere>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20091229162858.GA5258@nowhere>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Frederic Weisbecker <fweisbec-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Tuesday 29 December 2009, Frederic Weisbecker wrote:
> On Tue, Dec 29, 2009 at 04:09:57PM +0100, Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.32.  Please verify if it still should be listed and let me know
> > (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14899
> > Subject		: reiserfs: inconsistent lock state
> > Submitter	: Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > Date		: 2009-12-11 22:06 (19 days old)
> > References	: http://marc.info/?l=linux-kernel&m=126056920702515&w=4
> > Handled-By	: Frederic Weisbecker <fweisbec-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > Patch		: http://patchwork.kernel.org/patch/67256/
> > 		  http://patchwork.kernel.org/patch/67257/
> > 
> > 
> 
> 
> I think this precise one is solved. The problem is that there are other
> vmalloc in the same path that also need to be fixed.
> 
> I have a pending patch for that but as there are other reiserfs lockdep
> reports to be solved, I'm trying to pack all fixes in a same
> set so that they can be tested using a simple merge.
> 
> For now, I guess this ticket shouldn't be closed until reporters
> can test the whole.

OK, thanks for the update.

Rafael
