From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #38292] slab vs lockdep vs debugobjects
Date: Mon, 27 Jun 2011 00:40:29 +0200
Message-ID: <201106270040.29210.rjw@sisk.pl>
References: <VDRaLpg_NZ.A.tnC.JZ6BOB@chimera> <1309125708.4756.1.camel@twins> <20110626223134.GA24843@elte.hu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20110626223134.GA24843-X9Un+BFzKDI@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Cc: Peter Zijlstra <peterz-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>

On Monday, June 27, 2011, Ingo Molnar wrote:
> 
> * Peter Zijlstra <peterz-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org> wrote:
> 
> > On Sun, 2011-06-26 at 23:23 +0200, Rafael J. Wysocki wrote:
> > > This message has been generated automatically as a part of a summary report
> > > of recent regressions.
> > > 
> > > The following bug entry is on the current list of known regressions
> > > from 2.6.39.  Please verify if it still should be listed and let the tracking team
> > > know (either way).
> > 
> > who said its a regression?
> 
> I suspect Rafael saw your mail to lkml with a nasty looking lockdep 
> message in it and assumed it was a new one?

Actually, Maciej did. :-)

I'll drop it from the regression list.

Rafael
