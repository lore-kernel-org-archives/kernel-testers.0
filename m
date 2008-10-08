From: Nick Piggin <nickpiggin-/E1597aS9LT0CCvOHzKKcA@public.gmane.org>
Subject: Re: [Bug #11224] Only three cores found on quad-core machine.
Date: Wed, 8 Oct 2008 15:24:40 +1100
Message-ID: <200810081524.40614.nickpiggin@yahoo.com.au>
References: <0pOgGB.A.uLG.E475IB@wind> <200810080218.18898.nickpiggin@yahoo.com.au> <20081007153203.GB3337@redhat.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20081007153203.GB3337-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Dave Jones <davej-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Wednesday 08 October 2008 02:32, Dave Jones wrote:
> On Wed, Oct 08, 2008 at 02:18:18AM +1100, Nick Piggin wrote:
>  > On Sunday 05 October 2008 04:32, Rafael J. Wysocki wrote:
>  > > This message has been generated automatically as a part of a report
>  > > of recent regressions.
>  > >
>  > > The following bug entry is on the current list of known regressions
>  > > from 2.6.26.  Please verify if it still should be listed and let me
>  > > know (either way).
>  > >
>  > >
>  > > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11224
>  > > Subject		: Only three cores found on quad-core machine.
>  > > Submitter	: Dave Jones <davej-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
>  > > Date		: 2008-08-01 18:15 (65 days old)
>  > > References	: http://marc.info/?l=linux-kernel&m=121761475224719&w=4
>  >
>  > Dave, is your CPU2 getting stuck in calibrate_delay? Can you still
>  > reproduce the bug? What if you boot the kernel with lpj=<something sane
>  > like 2666785> in order to skip the calibrate_delay code?
>  >
>  > If that helps, can you try adding some printks to narrow down where it
>  > is getting stuck?
>
> This is going to sound strange, but I've forgotten which box that was.
> I'm due to reinstall all my test boxes now that the next Fedora beta
> has come out anyway, so I'll hopefully figure out by the end of the week :)

That does sound strange ;) But I can't believe that! It would be really
interesting if it was stuck in calibrate_delay, but maybe the backtrace
is just messed up...

If you do manage to reproduce it, I would be quite interested. Otherwise,
I think we can say it's not a showstopper for 2.6.27.
