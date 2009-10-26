From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #14353] BUG: sleeping function called from invalid context at kernel/mutex.c:280
Date: Mon, 26 Oct 2009 20:18:38 +0100
Message-ID: <200910262018.38685.rjw@sisk.pl>
References: <Sj-rRjx6TwF.A.djE.vqe5KB@chimera> <6dRYo8ss7vL.A.6gH.Gse5KB@chimera> <1256584306.4237.1.camel@johannes.local>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1256584306.4237.1.camel-YfaajirXv2244ywRPIzf9A@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Miles Lane <miles.lane-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Monday 26 October 2009, Johannes Berg wrote:
> On Mon, 2009-10-26 at 19:55 +0100, Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.31.  Please verify if it still should be listed and let me know
> > (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14353
> > Subject		: BUG: sleeping function called from invalid context at kernel/mutex.c:280
> > Submitter	: Miles Lane <miles.lane-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > Date		: 2009-10-05 3:39 (22 days old)
> > References	: http://marc.info/?l=linux-kernel&m=125471432208671&w=4
> 
> This should be fixed by a160ee69c6a4622ed30c377a978554015e9931cb.

OK, closing.

Thanks,
Rafael
