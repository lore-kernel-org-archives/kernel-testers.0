From: Jesse Barnes <jbarnes@virtuousgeek.org>
Subject: Re: [Bug #13840] KMS oops on 945G system
Date: Mon, 27 Jul 2009 10:10:53 -0700
Message-ID: <20090727101053.5a76bb08@jbarnes-g45>
References: <Jya1GruKQpD.A.16.2GObKB@chimera>
	<3zAHs5O6maO.A.muB.FHObKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1752824AbZG0RK5@vger.kernel.org>
In-Reply-To: <3zAHs5O6maO.A.muB.FHObKB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Diego Calleja <diegocg@gmail.com>, Shaohua Li <shaohua.li@intel.com>

On Sun, 26 Jul 2009 22:28:29 +0200 (CEST)
"Rafael J. Wysocki" <rjw@sisk.pl> wrote:

> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.30.  Please verify if it still should be listed and let me
> know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13840
> Subject		: KMS oops on 945G system
> Submitter	: Diego Calleja <diegocg@gmail.com>
> Date		: 2009-07-21 20:50 (6 days old)
> First-Bad-Commit:
> http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=7662c8bd6545c12ac7b2b39e4554c3ba34789c50
> References	:
> http://marc.info/?l=linux-kernel&m=124820945815030&w=4
> Handled-By	: Jesse Barnes <jbarnes@virtuousgeek.org>
> Patch		:
> http://git.kernel.org/?p=linux/kernel/git/anholt/drm-intel.git;a=commit;h=dff33cfcefa31c30b72c57f44586754ea9e8f3e2

There's a fix for this one queued in Eric's tree.

-- 
Jesse Barnes, Intel Open Source Technology Center
