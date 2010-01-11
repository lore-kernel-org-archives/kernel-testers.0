From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #14894] pohmelfs: NULL pointer dereference
Date: Mon, 11 Jan 2010 20:50:07 +0100
Message-ID: <201001112050.07420.rjw@sisk.pl>
References: <nzLqtSp97aP.A.RGB.hglSLB@chimera> <CXIfLt-ygXM.A.RRC.4glSLB@chimera> <20100110232306.GA16962@ioremap.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20100110232306.GA16962-i6C2adt8DTjR7s880joybQ@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Evgeniy Polyakov <zbr-i6C2adt8DTjR7s880joybQ@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Monday 11 January 2010, Evgeniy Polyakov wrote:
> On Sun, Jan 10, 2010 at 11:56:17PM +0100, Rafael J. Wysocki (rjw-KKrjLPT3xs0@public.gmane.org) wrote:
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
> > Date		: 2009-12-02 1:11 (40 days old)
> > References	: http://marc.info/?l=linux-kernel&m=125971633107940&w=4
> > Handled-By	: Evgeniy Polyakov <zbr-i6C2adt8DTjR7s880joybQ@public.gmane.org>
> 
> There is a patch to fix the problem, I will test it in a day and push it
> upstrem if it is ok.

Great, thanks a lot!

Rafael
