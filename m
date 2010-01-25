From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #15015] blank screen at random times in laptop when sitting  idle
Date: Mon, 25 Jan 2010 21:50:29 +0100
Message-ID: <201001252150.29362.rjw@sisk.pl>
References: <pYFNu11z2aM.A.pJH.CZMXLB@chimera> <ea11fea31001250644i78a9e4d9q725eb04f6a7da164@mail.gmail.com> <20100125103917.53f75e9a@jbarnes-piketon>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20100125103917.53f75e9a@jbarnes-piketon>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>
Cc: Manish Katiyar <mkatiyar-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jithin Emmanuel <jithin1987-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>

On Monday 25 January 2010, Jesse Barnes wrote:
> On Mon, 25 Jan 2010 20:14:28 +0530
> Manish Katiyar <mkatiyar-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
> 
> > On Mon, Jan 25, 2010 at 7:40 PM, Pekka Enberg
> > <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org> wrote:
> > > On Mon, Jan 25, 2010 at 12:23 AM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>
> > > wrote:
> > >> This message has been generated automatically as a part of a report
> > >> of regressions introduced between 2.6.31 and 2.6.32.
> > >>
> > >> The following bug entry is on the current list of known regressions
> > >> introduced between 2.6.31 and 2.6.32.  Please verify if it still
> > >> should be listed and let me know (either way).
> > >>
> > >>
> > >> Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=15015
> > >> Subject         : blank screen at random times in laptop when
> > >> sitting idle Submitter       : Jithin Emmanuel
> > >> <jithin1987-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> Date            : 2010-01-09 16:48 (16 days
> > >> old)
> > >
> > > FWIW, I might have seen this on my Macbook as well (screen went
> > > blank but I didn't check the logs). I think I managed to unblank
> > > the screen by hitting the "increase brightness" key. But as you
> > > say, the bug doesn't trigger very often and I have no idea how to
> > > reproduce it at will.
> > 
> > I have seen it too on my lenovo T60 with 2.6.32.2. It happens to me
> > frequently and has become famous as "coffee bug" in my colleagues.
> > Every morning when I goto office and after putting my laptop on
> > docking station go for coffee. Once I come back the laptop screen goes
> > blank, but haven't been able to manage how to get screen back. Only
> > option is hard reboot. This happens almost every once in two three
> > days.
> > 
> > Let me know what information/logs I can provide to help debug this.
> > BTW I normally suspend my laptop at home and then resume it in office
> > (if that matters).
> 
> Ouch, looks like our DPMS path is failing pretty hard.  I'll add some
> folks to cc, hopefully it'll be easy to track down.

Thanks for taking care of this.

Rafael
