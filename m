From: Theodore Tso <tytso-3s7WtUTddSA@public.gmane.org>
Subject: Re: [Bug #11937] ext3 __log_wait_for_space: no transactions
Date: Sun, 2 Nov 2008 16:26:04 -0500
Message-ID: <20081102212604.GK8134@mit.edu>
References: <603i_OdVYPF.A.7_D.mjeDJB@chimera> <wOAXuecskPD.A.1OE.sjeDJB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <wOAXuecskPD.A.1OE.sjeDJB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Bartlomiej Zolnierkiewicz <bzolnier-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Meelis Roos <mroos-Y27EyoLml9s@public.gmane.org>, Simon Arlott <simon-A6De1vDTPLDsq35pWSNszA@public.gmane.org>

On Sun, Nov 02, 2008 at 05:07:09PM +0100, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.27.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11937
> Subject		: ext3 __log_wait_for_space: no transactions
> Submitter	: Meelis Roos <mroos-Y27EyoLml9s@public.gmane.org>
> Date		: 2008-10-30 9:49 (4 days old)
> References	: http://marc.info/?l=linux-kernel&m=122536026105643&w=4
> Handled-By	: Theodore Tso <tytso-3s7WtUTddSA@public.gmane.org>

Yep, should still be listed.  As mentioned in the BZ entry, there is a
proposed patch here:

	 http://lkml.org/lkml/2008/11/1/61

I'm waiting for feedback from the people who have run accross the bug.

    	    		      	  	     - Ted
