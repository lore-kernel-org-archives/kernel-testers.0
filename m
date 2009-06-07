From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #13330] nfs4 NULL pointer dereference in _nfs4_do_setlk
Date: Sun, 7 Jun 2009 23:04:41 +0200
Message-ID: <200906072304.42213.rjw@sisk.pl>
References: <bCxQpon4SCJ.A.RrF.yY7KKB@chimera> <D9VoutSOyXP.A.YjH.5Z7KKB@chimera> <1244402928.5278.7.camel@heimdal.trondhjem.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1244402928.5278.7.camel-rJ7iovZKK19ZJLDQqaL3InhyD016LWXt@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Trond Myklebust <trond.myklebust-41N18TsMXrtuMpJDpNschA@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Rich Ercolani <rercola-YxllIAoeIHiVc3sceRu5cw@public.gmane.org>

On Sunday 07 June 2009, Trond Myklebust wrote:
> On Sun, 2009-06-07 at 11:52 +0200, Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.29.  Please verify if it still should be listed and let me know
> > (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13330
> > Subject		: nfs4 NULL pointer dereference in _nfs4_do_setlk
> > Submitter	: Rich Ercolani <rercola-YxllIAoeIHiVc3sceRu5cw@public.gmane.org>
> > Date		: 2009-05-17 04:44 (22 days old)
> > Handled-By	: Trond Myklebust <trond.myklebust-41N18TsMXrtuMpJDpNschA@public.gmane.org>
> 
> It should still be listed. I do believe I've finally identified the
> cause, and have provided a patch, however that fix has not yet been
> verified by Rich...

OK, thanks for the update.

Best,
Rafael
