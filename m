From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #12574] possible circular locking dependency detected
Date: Tue, 3 Mar 2009 23:42:36 +0100
Message-ID: <200903032342.36851.rjw@sisk.pl>
References: <KiHv0irKPzE.A.l3.hUarJB@chimera> <SLCXkuHtxAO.A.LtE.VWarJB@chimera> <8f53421d0903031419m493b88bbifa911323279f4f0b@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <8f53421d0903031419m493b88bbifa911323279f4f0b-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Michael S. Tsirkin" <m.s.tsirkin-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Tuesday 03 March 2009, Michael S. Tsirkin wrote:
> On Tue, Mar 3, 2009 at 9:25 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> >
> > The following bug entry is on the current list of known regressions
> > from 2.6.28.  Please verify if it still should be listed and let me know
> > (either way).
> >
> >
> > Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=12574
> > Subject         : possible circular locking dependency detected
> > Submitter       : Michael S. Tsirkin <m.s.tsirkin-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > Date            : 2009-01-29 11:35 (34 days old)
> > References      : http://lkml.org/lkml/2009/2/9/205
> >
> >
> >
> 
> I don't seem to observe this warning in v2.6.29-rc6 anymore.

OK, I'm going to close it, then.

Thanks,
Rafael
