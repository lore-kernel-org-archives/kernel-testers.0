From: Theodore Tso <tytso-3s7WtUTddSA@public.gmane.org>
Subject: Re: [Bug #11905] lots of extra timer interrupts costing 2W
Date: Sun, 2 Nov 2008 16:28:12 -0500
Message-ID: <20081102212811.GL8134@mit.edu>
References: <603i_OdVYPF.A.7_D.mjeDJB@chimera> <wOAXuecskPD.A.xRF.DkeDJB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <wOAXuecskPD.A.xRF.DkeDJB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>, Venki Pallipadi <venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

On Sun, Nov 02, 2008 at 05:07:06PM +0100, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.27.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11905
> Subject		: lots of extra timer interrupts costing 2W
> Submitter	: Theodore Ts'o <tytso-3s7WtUTddSA@public.gmane.org>
> Date		: 2008-10-30 2:18 (4 days old)
> References	: http://marc.info/?l=linux-kernel&m=122533314305315&w=4
> 		  http://marc.info/?l=linux-kernel&m=122541849114444&w=4

Yup, should still be listed.  

Is someone looking what the proper fix should be (other than reverting
the commit in question)?  I've been running with the commit reverted
on my laptop kernel for a couple of days now, with no problems.

						- Ted

