From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #13473] Bug while trying to launch a KVM guest
Date: Mon, 8 Jun 2009 13:16:11 +0200
Message-ID: <200906081316.12250.rjw@sisk.pl>
References: <bCxQpon4SCJ.A.RrF.yY7KKB@chimera> <D9VoutSOyXP.A.V6F.5Y7KKB@chimera> <4A2C92EB.5020002@in.ibm.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <4A2C92EB.5020002-xthvdsQ13ZrQT0dZR+AlfA@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Sachin Sant <sachinp-xthvdsQ13ZrQT0dZR+AlfA@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Mimi Zohar <zohar-r/Jw6+rmf7HQT0dZR+AlfA@public.gmane.org>

On Monday 08 June 2009, Sachin Sant wrote:
> Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> >
> > The following bug entry is on the current list of known regressions
> > from 2.6.29.  Please verify if it still should be listed and let me know
> > (either way).
> >
> >
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13473
> > Subject		: Bug while trying to launch a KVM guest
> > Submitter	: Sachin Sant <sachinp-xthvdsQ13ZrQT0dZR+AlfA@public.gmane.org>
> > Date		: 2009-06-05 17:20 (3 days old)
> > References	: http://marc.info/?l=linux-kernel&m=124422173129047&w=4
> > Handled-By	: Mimi Zohar <zohar-r/Jw6+rmf7HQT0dZR+AlfA@public.gmane.org>
> >   
> This problem is fixed by the following patches.
> 
> f06dd16a03f6f7f72fab4db03be36e28c28c6fd6 : IMA: Handle dentry_open failures
> 1a62e958fa4aaeeb752311b4f5e16b2a86737b23 : IMA: open all files O_LARGEFILE
> 
> I can't really say this is a regression. I never had compiled a kernel with
> CONFIG_IMA until 2.6.30-rc8. 

I see.  Perhaps I'll drop it from the list and mark it as resolved, then.

Best,
Rafael
