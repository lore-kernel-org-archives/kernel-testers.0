From: Nick Piggin <nickpiggin-/E1597aS9LT0CCvOHzKKcA@public.gmane.org>
Subject: Re: [Bug #11608] 2.6.27-rc6 BUG: unable to handle kernel paging request
Date: Wed, 8 Oct 2008 02:46:41 +1100
Message-ID: <200810080246.41871.nickpiggin@yahoo.com.au>
References: <0pOgGB.A.uLG.E475IB@wind> <yWwteD.A.sLH.z475IB@wind>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <yWwteD.A.sLH.z475IB@wind>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, John Daiker <daikerjohn-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Sunday 05 October 2008 04:32, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.26.  Please verify if it still should be listed and let me know
> (either way).
>
>
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11608
> Subject		: 2.6.27-rc6 BUG: unable to handle kernel paging request
> Submitter	: John Daiker <daikerjohn-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2008-09-16 23:00 (19 days old)
> References	: http://marc.info/?l=linux-kernel&m=122160611517267&w=4

As I wrote (and you copied to the bugzilla), this looks a bitflip in
one of the ptes... But no harm in waiting for the reporter to confirm
or disprove before we strike it off the list :)
