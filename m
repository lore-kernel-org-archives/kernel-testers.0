From: Mike Snitzer <snitzer-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #13944] MD raid regression
Date: Mon, 10 Aug 2009 10:21:31 -0400
Message-ID: <20090810142130.GA15956@redhat.com>
References: <AuPdDySr74O.A.5LC.Pj1fKB@chimera> <u1L1PAbl8zG.A.RyC.aj1fKB@chimera> <19071.30809.398179.900584@notabene.brown> <200908101611.07170.rjw@sisk.pl>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <200908101611.07170.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Neil Brown <neilb-l3A5Bk7waGM@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Mon, Aug 10 2009 at 10:11am -0400,
Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> On Monday 10 August 2009, Neil Brown wrote:
> > On Sunday August 9, rjw-KKrjLPT3xs0@public.gmane.org wrote:
> > > This message has been generated automatically as a part of a report
> > > of recent regressions.
> > > 
> > > The following bug entry is on the current list of known regressions
> > > from 2.6.30.  Please verify if it still should be listed and let me know
> > > (either way).
> > 
> > Yes, it still should be listed.  The first patch didn't quite fix it.
> > A second one probably does.
> 
> Thanks for the update.
> 
> Is the patch listed below the right one?
> 
> > > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13944
> > > Subject		: MD raid regression
> > > Submitter	: Mike Snitzer <snitzer-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
> > > Date		: 2009-08-05 15:06 (5 days old)
> > > Handled-By	: NeilBrown <neilb-l3A5Bk7waGM@public.gmane.org>
> > > Patch		: http://patchwork.kernel.org/patch/39521/

The updated patch is here:
http://patchwork.kernel.org/patch/40328/

I haven't yet tested it but will do so shortly.

Mike
