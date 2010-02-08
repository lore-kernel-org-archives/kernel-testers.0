From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #14487] PANIC: early exception 08 rip 246:10 error ffffffff810251b5 cr2 0
Date: Mon, 8 Feb 2010 02:12:52 +0100
Message-ID: <201002080212.52914.rjw@sisk.pl>
References: <2uzMDuY-7_O.A.M1G.7X1bLB@chimera> <iuJeop2ribM.A.mRC._a1bLB@chimera> <4B6F62BE.1090803@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <4B6F62BE.1090803-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: "Justin P. Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Jan Beulich <jbeulich-Et1tbQHTxzrQT0dZR+AlfA@public.gmane.org>

On Monday 08 February 2010, Justin P. Mattock wrote:
> On 02/07/10 16:28, Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a report
> > of regressions introduced between 2.6.31 and 2.6.32.
> >
> > The following bug entry is on the current list of known regressions
> > introduced between 2.6.31 and 2.6.32.  Please verify if it still should
> > be listed and let the tracking team know (either way).
> >
> >
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14487
> > Subject		: PANIC: early exception 08 rip 246:10 error ffffffff810251b5 cr2 0
> > Submitter	: Justin P. Mattock<justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > Date		: 2009-10-23 16:45 (108 days old)
> > References	: http://lkml.org/lkml/2009/10/23/252
> > Handled-By	: Jan Beulich<jbeulich-Et1tbQHTxzrQT0dZR+AlfA@public.gmane.org>
> > Patch		: http://patchwork.kernel.org/patch/68719/
> >
> >
> >
> 
> 
> the patch attached to the bug report
> makes my machine boot up with out a
> Panic, and allows me to do remote debugging
> via ohci1394_dma.
> 
> I did see a call trace as I was debugging
> which might be related to having one
> system using the patch, and the other not.
> but still need to look at that.
> (only saw this once out of numerous boots
> (could be a rarity)).

Thanks for the update.

Rafael
