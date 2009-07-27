From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #13648] nfsd: page allocation failure
Date: Tue, 28 Jul 2009 00:04:47 +0200
Message-ID: <200907280004.47852.rjw@sisk.pl>
References: <DizPU9GBfHF.A.kgF.iWObKB@chimera> <H5-1lZIIeYK.A.HXG.DXObKB@chimera> <20090727130420.1514cf5c.skraw@ithnet.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090727130420.1514cf5c.skraw-DcQCyzbjH0jQT0dZR+AlfA@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Stephan von Krawczynski <skraw-DcQCyzbjH0jQT0dZR+AlfA@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>, Justin Piszcz <jpiszcz-BP4nVm5VUdNhbmWW9KSYcQ@public.gmane.org>

On Monday 27 July 2009, Stephan von Krawczynski wrote:
> On Sun, 26 Jul 2009 22:45:33 +0200 (CEST)
> "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> 
> > This message has been generated automatically as a part of a report
> > of regressions introduced between 2.6.29 and 2.6.30.
> > 
> > The following bug entry is on the current list of known regressions
> > introduced between 2.6.29 and 2.6.30.  Please verify if it still should
> > be listed and let me know (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13648
> > Subject		: nfsd: page allocation failure
> > Submitter	: Justin Piszcz <jpiszcz-BP4nVm5VUdNhbmWW9KSYcQ@public.gmane.org>
> > Date		: 2009-06-22 12:08 (35 days old)
> > References	: http://lkml.org/lkml/2009/6/22/309
> > 		  http://marc.info/?l=linux-kernel&m=124748600712853&w=4
> > 
> 
> This is no regression between 2.6.29 and 2.6.30.
> In fact we could reproduce the problem with kernel versions:
> 
> 2.6.27.26 < X <= 2.6.30.3
> 
> (Meaning 2.6.27.26 is the last one _not_ showing the problem).

Thanks, moved to the list of regressions from 2.6.27.

Best,
Rafael
