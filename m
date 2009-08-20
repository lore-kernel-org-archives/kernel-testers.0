From: Jesse Barnes <jbarnes@virtuousgeek.org>
Subject: Re: [Bug #13634] [drm:drm_wait_vblank] *ERROR* failed to acquire
 vblank counter, -22
Date: Thu, 20 Aug 2009 11:51:30 -0700
Message-ID: <20090820115130.6f824b8a@jbarnes-g45>
References: <xDf-7eSwYsC.A.-6B.klIjKB@chimera>
	<Era7U-todKF.A.wmC.ZmIjKB@chimera>
	<20090820110532.24d5b2ea@jbarnes-g45>
	<200908202019.23819.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1752074AbZHTSvc@vger.kernel.org>
In-Reply-To: <200908202019.23819.rjw@sisk.pl>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Cijoml Cijomlovic Cijomlov <cijoml@volny.cz>

On Thu, 20 Aug 2009 20:19:23 +0200
"Rafael J. Wysocki" <rjw@sisk.pl> wrote:

> On Thursday 20 August 2009, Jesse Barnes wrote:
> > On Wed, 19 Aug 2009 22:40:45 +0200 (CEST)
> > "Rafael J. Wysocki" <rjw@sisk.pl> wrote:
> > 
> > > This message has been generated automatically as a part of a
> > > report of regressions introduced between 2.6.29 and 2.6.30.
> > > 
> > > The following bug entry is on the current list of known
> > > regressions introduced between 2.6.29 and 2.6.30.  Please verify
> > > if it still should be listed and let me know (either way).
> > > 
> > > 
> > > Bug-Entry	:
> > > http://bugzilla.kernel.org/show_bug.cgi?id=13634
> > > Subject		: [drm:drm_wait_vblank] *ERROR* failed to
> > > acquire vblank counter, -22 Submitter	: Cijoml Cijomlovic
> > > Cijomlov <cijoml@volny.cz> Date		: 2009-06-27 07:02
> > > (54 days old)
> > 
> > Patches to fix this have been queued.
> 
> Thanks for the update.
> 
> Can you please give me a pointer to the patch?

commit 8d3457ec3198a569dd14dc9e3ae8b6163bcaa0b5
Author: Paul Rolland <rol@as2917.net>
Date:   Sun Aug 9 12:24:01 2009 +1000

Already in Linus's tree actually.

-- 
Jesse Barnes, Intel Open Source Technology Center
