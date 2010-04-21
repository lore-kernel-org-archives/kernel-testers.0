From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #15730] Ugly rmap NULL ptr deref oopsie on hibernate (was Linux 2.6.34-rc3)
Date: Wed, 21 Apr 2010 07:09:30 +0200
Message-ID: <201004210709.30228.rjw@sisk.pl>
References: <deuQKFRcc0B.A.3EG.BRSzLB@tosh> <YeFfFNFyTSF.A.K_G.dRSzLB@tosh> <20100420052740.GA20482@liondog.tnic>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20100420052740.GA20482-f9CnO7I+Q6zU6FkGJEIX5A@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Borislav Petkov <bp-Gina5bIWoIWzQB+pC5nmwQ@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Tuesday 20 April 2010, Borislav Petkov wrote:
> From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
> Date: Tue, Apr 20, 2010 at 05:19:23AM +0200
> 
> > This message has been generated automatically as a part of a summary report
> > of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.33.  Please verify if it still should be listed and let the tracking team
> > know (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15730
> > Subject		: Ugly rmap NULL ptr deref oopsie on hibernate (was Linux 2.6.34-rc3)
> > Submitter	: Borislav Petkov <bp-Gina5bIWoIWzQB+pC5nmwQ@public.gmane.org>
> > Date		: 2010-04-02 17:59 (18 days old)
> > Message-ID	: <20100402175937.GA19690-f9CnO7I+Q6zU6FkGJEIX5A@public.gmane.org>
> > References	: http://marc.info/?l=linux-kernel&m=127023173329741&w=2
> 
> Fixed by commit ea90002b0fa7bdee86ec22eba1d951f30bf043a6.

Yup, closed.

Rafael
