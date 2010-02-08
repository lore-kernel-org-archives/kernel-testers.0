From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #15177] Asynchronous writes up to 30% slower than in previous kernel versions
Date: Mon, 8 Feb 2010 20:37:49 +0100
Message-ID: <201002082037.49793.rjw@sisk.pl>
References: <4Ht3jFrT7uE.A.JI.-nzbLB@chimera> <445R0ey9hAI.A.2jB.iozbLB@chimera> <e2e108261002081116m5c13d081p161d8697464253f1@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <e2e108261002081116m5c13d081p161d8697464253f1-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Bart Van Assche <bvanassche-HInyCGIudOg@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Jens Axboe <jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>

On Monday 08 February 2010, Bart Van Assche wrote:
> On Sun, Feb 7, 2010 at 11:28 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> >
> > This message has been generated automatically as a part of a summary report
> > of recent regressions.
> >
> > The following bug entry is on the current list of known regressions
> > from 2.6.32.  Please verify if it still should be listed and let the tracking team
> > know (either way).
> >
> >
> > Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=15177
> > Subject         : Asynchronous writes up to 30% slower than in previous kernel versions
> > Submitter       : Bart Van Assche <bart.vanassche-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > Date            : 2010-01-30 16:38 (9 days old)
> 
> The regression compared to 2.6.32 is solved in 2.6.33-rc7 for the
> specific test mentioned in the Bugzilla entry. The regression compared
> to 2.6.28 is not yet solved though, so I'm not sure what should happen
> with this bug entry.

I guess it's better to move it to the list of regressions from 2.6.28.

Rafael
