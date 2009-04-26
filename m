From: Mathieu Desnoyers <mathieu.desnoyers-scC8bbJcJLCw5LPnMra/2Q@public.gmane.org>
Subject: Re: [Bug #13186] cpufreq timer teardown problem
Date: Sun, 26 Apr 2009 14:32:05 -0400
Message-ID: <20090426183205.GA29238@Krystal>
References: <tur5OtdUm3E.A.r2B.7oE9JB@chimera> <egHshlwQQFE.A.X-B._oE9JB@chimera> <20090426162800.GB25774@Krystal> <200904261945.11690.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <200904261945.11690.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, stable-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org

* Rafael J. Wysocki (rjw-KKrjLPT3xs0@public.gmane.org) wrote:
> On Sunday 26 April 2009, Mathieu Desnoyers wrote:
> > * Rafael J. Wysocki (rjw-KKrjLPT3xs0@public.gmane.org) wrote:
> > > This message has been generated automatically as a part of a report
> > > of regressions introduced between 2.6.28 and 2.6.29.
> > > 
> > > The following bug entry is on the current list of known regressions
> > > introduced between 2.6.28 and 2.6.29.  Please verify if it still should
> > > be listed and let me know (either way).
> > > 
> > 
> > I've had no news that the patches I proposed has been considered for
> > -stable. They fix the teardown problem here. So I guess it's better to
> > wait for the patches to get into -stable before we close this bug ?
> 
> In fact the bug is closeable as soon as they are in the Linus' tree.  Are they
> in it right now?
> 

Nope, Andrew pulled the conservative governor fix for 2.6.30-rc in his
tree, but that's about it.

The fixes for ondemand 2.6.28, 2.6.29 and 2.6.30-rc have not been pulled
yet. The fix for conservative 2.6.28, 2.6.29 has not been pulled
neither.

Mathieu

> Thanks,
> Rafael

-- 
Mathieu Desnoyers
OpenPGP key fingerprint: 8CD5 52C3 8E3C 4140 715F  BA06 3F25 A8FE 3BAE 9A68
