From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #13371] s2disk hangs with e100, kernel 2.6.29 and later
Date: Mon, 1 Jun 2009 22:17:32 +0200
Message-ID: <200906012217.33552.rjw@sisk.pl>
References: <THxQaUP0K2D.A.QkF.UVbIKB@chimera> <PkPeJtNB3KO.A.i1F.bVbIKB@chimera> <20090531021912.GA11361@arbonne.lan>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090531021912.GA11361-dsTKODJrvkThXIiyNabO3w@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Richard Atterer <richard-2/EmM+jwkBzwc4Swprx3xw@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Bartlomiej Zolnierkiewicz <bzolnier-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "Kirsher, Jeffrey T" <jeffrey.t.kirsher-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

On Sunday 31 May 2009, Richard Atterer wrote:
> This bug is still present.
> 
> On Sat, May 30, 2009 at 09:55:39PM +0200, Rafael J. Wysocki wrote:
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13371
> > Subject		: s2disk hangs with kernel 2.6.29 and later, SATA, Gigabyte EG45M-DS2H
> 
> Better: s2disk hangs with e100, kernel 2.6.29 and later
> 
> > Submitter	: Richard Atterer <richard-2/EmM+jwkBzwc4Swprx3xw@public.gmane.org>
> > Date		: 2009-05-16 22:51 (15 days old)
> > References	: http://marc.info/?l=linux-kernel&m=124251446428166&w=4
> > 		  http://lkml.org/lkml/2009/5/25/253
> 
> Latest information: The e100 driver is responsible for the problem. 
> http://lkml.org/lkml/2009/5/25/440
> 
> Maybe handled by: Jeffrey Kirsher <jeffrey.t.kirsher-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
> :)

Thanks for the update. :-)

Best,
Rafael
