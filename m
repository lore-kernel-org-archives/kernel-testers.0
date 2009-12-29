From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #14894] pohmelfs: NULL pointer dereference
Date: Tue, 29 Dec 2009 22:37:54 +0100
Message-ID: <200912292237.54182.rjw@sisk.pl>
References: <oBElxfTZdhL.A.bx.-vhOLB@chimera> <srmJ8vMxKPH.A.iAC.TwhOLB@chimera> <20091229163512.GA4958@ioremap.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20091229163512.GA4958-i6C2adt8DTjR7s880joybQ@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Evgeniy Polyakov <zbr-i6C2adt8DTjR7s880joybQ@public.gmane.org>, Jens Axboe <jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Tuesday 29 December 2009, Evgeniy Polyakov wrote:
> On Tue, Dec 29, 2009 at 04:28:52PM +0100, Rafael J. Wysocki (rjw-KKrjLPT3xs0@public.gmane.org) wrote:
> > This message has been generated automatically as a part of a report
> > of regressions introduced between 2.6.31 and 2.6.32.
> > 
> > The following bug entry is on the current list of known regressions
> > introduced between 2.6.31 and 2.6.32.  Please verify if it still should
> > be listed and let me know (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14894
> > Subject		: pohmelfs: NULL pointer dereference
> > Submitter	: Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > Date		: 2009-12-02 1:11 (28 days old)
> > References	: http://marc.info/?l=linux-kernel&m=125971633107940&w=4
> > Handled-By	: Evgeniy Polyakov <zbr-i6C2adt8DTjR7s880joybQ@public.gmane.org>
> 
> Yes, I saw this regression and there is a patch to handle this, but it
> kind of disables sync at all. Jens Axboe, who introduced per-bdi
> writeback patches, did not yet reply.

Well, Jens, what's your opinion about that?

Rafael
