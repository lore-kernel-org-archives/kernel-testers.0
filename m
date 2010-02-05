From: Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>
Subject: Re: [Bug #15043] Display goes off with i915.powersave=1 after
 suspend-resume
Date: Fri, 5 Feb 2010 11:29:52 -0800
Message-ID: <20100205112952.01affddb@jbarnes-piketon>
References: <vZZJKzCUn4G.A.CPB.F7hZLB@chimera>
	<d3IDKWHT5gE.A.-nC.G8hZLB@chimera>
	<1265314137.10203.0.camel@no>
	<201002042142.02127.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <201002042142.02127.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Soeren Sonnenburg <sonne-8fiUuRrzOP0dnm+yROfE0A@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, dri-devel-5NWGOfrQmneRv+LV9MX5uipxlwaOVQ5f@public.gmane.org

On Thu, 4 Feb 2010 21:42:02 +0100
"Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> On Thursday 04 February 2010, Soeren Sonnenburg wrote:
> > On Mon, 2010-02-01 at 01:22 +0100, Rafael J. Wysocki wrote:
> > > This message has been generated automatically as a part of a
> > > report of recent regressions.
> > > 
> > > The following bug entry is on the current list of known
> > > regressions from 2.6.32.  Please verify if it still should be
> > > listed and let me know (either way).
> > > 
> > > 
> > > Bug-Entry	:
> > > http://bugzilla.kernel.org/show_bug.cgi?id=15043
> > > Subject		: Display goes off with i915.powersave=1
> > > after suspend-resume Submitter	: Soeren Sonnenburg
> > > <sonne-8fiUuRrzOP0dnm+yROfE0A@public.gmane.org> Date		: 2010-01-10 20:09 (22
> > > days old) References	:
> > > http://marc.info/?l=linux-kernel&m=126315457519505&w=4
> > 
> > yes still exists in current git.
> 
> Thanks for the update.

Just updated the corresponding FDO bug
(https://bugs.freedesktop.org/show_bug.cgi?id=24314).  There are some
hw bugs related to FBC handling on 945GM though, so we may have to
disable it on some machines.

-- 
Jesse Barnes, Intel Open Source Technology Center
