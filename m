From: Chuck Ebbert <cebbert-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #11608] 2.6.27-rc6 BUG: unable to handle kernel paging
 request
Date: Wed, 24 Sep 2008 20:46:55 -0400
Message-ID: <20080924204655.481478c6@redhat.com>
References: <PJz8fNrJNHG.A.65F.wzq1IB@albercik>
	<7lIhZC4hCxE.A.zMG.D0q1IB@albercik>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <7lIhZC4hCxE.A.zMG.D0q1IB@albercik>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, John Daiker <daikerjohn-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Nick Piggin <npiggin-l3A5Bk7waGM@public.gmane.org>

On Sun, 21 Sep 2008 20:54:23 +0200 (CEST)
"Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

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
> Date		: 2008-09-16 23:00 (6 days old)
> References	: http://marc.info/?l=linux-kernel&m=122160611517267&w=4
> 
> 

As I said in the bugzilla entry:

  Oops: 000b

  Bit 3 is set -- the processor detected 1's in reserved bits of the page directory.

That can't be good...
