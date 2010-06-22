From: "Paul E. McKenney" <paulmck-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
Subject: Re: [Bug #15863] 2.6.34-rc5-git7 (plus all patches) -- another
 suspicious rcu_dereference_check() usage.
Date: Tue, 22 Jun 2010 15:25:47 -0700
Message-ID: <20100622222547.GQ2290@linux.vnet.ibm.com>
References: <g77CuMUl7QI.A.qMH.4ZpHMB@chimera>
 <rHrHQMIU4rI.A.E9B.QcpHMB@chimera>
 <20100622211135.GO2290@linux.vnet.ibm.com>
 <201006222349.13096.rjw@sisk.pl>
Reply-To: paulmck-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <201006222349.13096.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Miles Lane <miles.lane-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Tue, Jun 22, 2010 at 11:49:12PM +0200, Rafael J. Wysocki wrote:
> On Tuesday, June 22, 2010, Paul E. McKenney wrote:
> > On Mon, Jun 21, 2010 at 12:34:25AM +0200, Rafael J. Wysocki wrote:
> > > This message has been generated automatically as a part of a report
> > > of regressions introduced between 2.6.33 and 2.6.34.
> > > 
> > > The following bug entry is on the current list of known regressions
> > > introduced between 2.6.33 and 2.6.34.  Please verify if it still should
> > > be listed and let the tracking team know (either way).
> > 
> > We have been knocking these off as they appear.  There is one or two
> > that the relevant maintainers have been ignoring, but that always seems
> > to be the case.  ;-)
> > 
> > Your choice as to whether you want to track the group...
> 
> I think I'll simply leave that one bug open until all known instances have been
> dealt with.
> 
> Please let me know when that happens. :-)

So if I am sufficiently forgetful, I can just ask you to close the
bug immediately?

Sorry, but you really couldn't expect me to pass up that kind of
loophole!  ;-)

							Thanx, Paul
