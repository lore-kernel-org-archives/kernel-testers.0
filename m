From: Theodore Tso <tytso-3s7WtUTddSA@public.gmane.org>
Subject: Re: [Bug #12416] Recent change to kernel spikes out ccache/distcc
Date: Wed, 4 Feb 2009 20:57:25 -0500
Message-ID: <20090205015725.GF8945@mit.edu>
References: <kkuKoQJIW-D.A.61C.auYiJB@chimera> <pWZw1SZjMCH.A.5f.SwYiJB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <pWZw1SZjMCH.A.5f.SwYiJB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jan Beulich <jbeulich-Et1tbQHTxzrQT0dZR+AlfA@public.gmane.org>, Sam Ravnborg <sam-uyr5N9Q2VtJg9hUCZPvPmw@public.gmane.org>

On Wed, Feb 04, 2009 at 11:23:55AM +0100, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.28.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12416
> Subject		: Recent change to kernel spikes out ccache/distcc
> Submitter	: Theodore Ts'o <tytso-3s7WtUTddSA@public.gmane.org>
> Date		: 2009-01-06 15:15 (30 days old)
> References	: http://marc.info/?l=linux-kernel&m=123125495000603&w=4
> Patch		: http://lkml.org/lkml/2009/1/20/78

This can be closed; Sam reverted the necessary patch the relevent
commits in 2ea03891, which is in Linus's tree.

Rafael, I've closed the bug in the Kernel Bugzilla for your convenience.

Thanks,

	     	    	       	   	  	   - Ted
