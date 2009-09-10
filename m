From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: Re: [Bug #13780] NULL pointer dereference loading powernowk8
Date: Thu, 10 Sep 2009 22:59:15 +0200
Message-ID: <200909102259.15144.rjw@sisk.pl>
References: <aIL9jMAYJnG.A.WjH.M3BpKB@chimera> <200909080112.14997.rjw@sisk.pl> <20090908194653.GA3517@roeckx.be>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1754426AbZIJU6J@vger.kernel.org>
In-Reply-To: <20090908194653.GA3517@roeckx.be>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Kurt Roeckx <kurt@roeckx.be>
Cc: Dave Jones <davej@redhat.com>, LKML <linux-kernel@vger.kernel.org>, Kernel Testers <kernel-testers@vger.kernel.org>, Mark Langsdorf <mark.langsdorf@amd.com>

On Tuesday 08 September 2009, Kurt Roeckx wrote:
> On Tue, Sep 08, 2009 at 01:12:14AM +0200, Rafael J. Wysocki wrote:
> > On Monday 07 September 2009, Kurt Roeckx wrote:
> > > On Sun, Sep 06, 2009 at 08:11:51PM +0200, Rafael J. Wysocki wrote:
> > > > This message has been generated automatically as a part of a report
> > > > of regressions introduced between 2.6.29 and 2.6.30.
> > > > 
> > > > The following bug entry is on the current list of known regressions
> > > > introduced between 2.6.29 and 2.6.30.  Please verify if it still should
> > > > be listed and let me know (either way).
> > > 
> > > I'm not really sure what you want to know from me.  I still see
> > > the issue, and I think that was clear from the bug report.  Maybe
> > > you should either include more info in this mail, or point people
> > > to some website.
> > > 
> > > I don't know if this is a regression between 2.6.29 and 2.6.30, I
> > > never tried a 2.6.29 kernel because it has other issues (for which
> > > I do have a patch now).  The last kernel I have without issues is
> > > a 2.6.22 kernel.  I tried different kernels between 2.6.22 and
> > > 2.6.30, but I can't tell you if they have the issue or not.  I
> > > didn't notice, but that doesn't mean they don't have it.  If you
> > > think it's important to find out which commit introduced this
> > > issue for me, I can try and run a bisect.
> > 
> > The information you've just provided is very helpful.
> > 
> > I'm now going to drop this from the list of recent regressions until it's
> > confirmed that kernels later than 2.6.22 are not affected.
> 
> So I did a biset, and this is the result:
> $ git bisect good
> 0e64a0c982c06a6b8f5e2a7f29eb108fdf257b2f is first bad commit
> commit 0e64a0c982c06a6b8f5e2a7f29eb108fdf257b2f
> Author: Dave Jones <davej@redhat.com>
> Date:   Wed Feb 4 14:37:50 2009 -0500
> 
>     [CPUFREQ] checkpatch cleanups for powernow-k8
> 
>     This driver has so many long function names, and deep nested if's
>     The remaining warnings will need some code restructuring to clean up.
> 
>     Signed-off-by: Dave Jones <davej@redhat.com>
> 
> :040000 040000 45d8e325663e62e0833cf4e1cb8b27fa4a9b3a56 affb6fab44cb22aca8a33ca0d767797831fc2bae M      arch
> 
> 2.6.29-rc5 is good, -rc7 is bad.

Thanks for the update and for doing the bisection.

Best,
Rafael
