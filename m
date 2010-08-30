From: Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>
Subject: Re: [Bug #16399] perf failed with kernel 2.6.35-rc
Date: Mon, 30 Aug 2010 15:56:36 +0200
Message-ID: <20100830155636.23ef904b__2251.10405958748$1283177124$gmane$org@schatten.dmk.lab>
References: <c1_O4wHrlB.A.63.mbueMB@chimera>
	<ByD_7B96czP.A.XtC.eeueMB@chimera>
	<1283159563.1820.665.camel@laptop>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1283159563.1820.665.camel@laptop>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On Mon, 30 Aug 2010 11:12:43 +0200
Peter Zijlstra <peterz-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org> wrote:

> On Mon, 2010-08-30 at 01:13 +0200, Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a report
> > of regressions introduced between 2.6.34 and 2.6.35.
> > 
> > The following bug entry is on the current list of known regressions
> > introduced between 2.6.34 and 2.6.35.  Please verify if it still should
> > be listed and let the tracking team know (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=16399
> > Subject		: perf failed with kernel 2.6.35-rc
> > Submitter	: Zhang, Yanmin <yanmin_zhang-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>
> > Date		: 2010-07-13 8:14 (48 days old)
> > First-Bad-Commit: http://git.kernel.org/linus/1ac62cfff252fb668405ef3398a1fa7f4a0d6d15
> > Message-ID	: <1279008849.2096.913.camel-sz7BYL/Y5Hu/P+R7jlPCFVaTQe2KTcn/@public.gmane.org>
> > References	: http://marc.info/?l=linux-kernel&m=127900880212470&w=2
> > 
> > 
> 
> Should be fixed by:
> 
> commit 351af0725e5222e35741011d1ea62215c1ed06db
> Author: Zhang, Yanmin <yanmin_zhang-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>
> Date:   Fri Aug 6 13:39:08 2010 +0800
> 
>     perf, x86: Fix Intel-nhm PMU programming errata workaround                                                                                                        

Thx, closed.

Cheers,
Flo

