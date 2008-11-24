From: Jesse Barnes <jbarnes@virtuousgeek.org>
Subject: Re: [Bug #11947] 2.6.28-rc VC switching with Intel graphics broken
Date: Mon, 24 Nov 2008 11:35:19 -0800
Message-ID: <200811241135.19941.jbarnes@virtuousgeek.org>
References: <sBqd4qMeLzC.A.mgB.B7HKJB@chimera> <200811241101.55121.jbarnes@virtuousgeek.org> <492AFCC3.4090602@birkenwald.de>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1753863AbYKXTfr@vger.kernel.org>
In-Reply-To: <492AFCC3.4090602@birkenwald.de>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Bernhard Schmidt <berni@birkenwald.de>
Cc: "Romano Giannetti (lists)" <romanol@upcomillas.es>, "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Andreas Mohr <andi@lisas.de>, devsk <kernel-bugs.dev1world@spamgourmet.com>, Johan Bilien <jobi@via.ecp.fr>

On Monday, November 24, 2008 11:13 am Bernhard Schmidt wrote:
> Hello,
>
> > On Monday, November 24, 2008 12:47 am Romano Giannetti (lists) wrote:
> >> Rafael J. Wysocki wrote:
> >>> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11947
> >>> Subject		: 2.6.28-rc VC switching with Intel graphics broken
> >>> Submitter	: Romano Giannetti <romano.giannetti@gmail.com>
> >>> Date		: 2008-11-03 12:10 (20 days old)
> >>> Handled-By	: Jesse Barnes <jbarnes@virtuousgeek.org>
> >>
> >> Still with us on -rc6, nasty, reproducible, no clues on what can be.
> >>
> >> VC switch locks or delay the systems minutes, resuming from suspend
> >> locks hard the machine.
> >>
> >> 2.6.28-rc is unusable here.
> >>
> >> Jesse, any hints? My suspicion that it can be the same thing happened
> >> with bug 10620 is wrong? (It was a very similar error about vblank...)
> >
> > Just added to the bug, it looks like a DUP of an issue Keith just fixed
> > last week (now to make sure the patch makes it upstream quickly).
>
> I can confirm that, with the patch from
> http://lists.freedesktop.org/archives/intel-gfx/2008-November/000614.html
> applied on top of current git head (rejected hunk in
> drivers/gpu/drm/i915/915_irq.c due to the additional
> dev_priv->irq_mask_reg = ~0; in git between the removed lines, I kept
> it) I can suspend/resume and do a VC switch again.
>
> Big thanks!

Excellent, thanks for confirming.  I just pinged the maintainer, hopefully we 
can get this patch pushed quickly.

-- 
Jesse Barnes, Intel Open Source Technology Center
