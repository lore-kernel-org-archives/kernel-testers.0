From: Jesse Barnes <jbarnes@virtuousgeek.org>
Subject: Re: [Bug #12765] i915 VT switch with AIGLX causes X lock up
Date: Mon, 20 Jul 2009 11:11:01 -0700
Message-ID: <20090720111101.659a9099@jbarnes-g45>
References: <sIiXQlfwS3D.A.81.dj7KKB@chimera>
	<AN6kEAA5GQ.A.Q7C.Vm7KKB@chimera>
	<20090628201129.GA1546@sucs.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1753418AbZGTSLJ@vger.kernel.org>
In-Reply-To: <20090628201129.GA1546@sucs.org>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Sitsofe Wheeler <sitsofe@yahoo.com>
Cc: "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Dave Airlie <airlied@redhat.com>, DRI <dri-devel@lists.sourceforge.net>, Michel =?UTF-8?B?RMOkbnplcg==?= <michel@daenzer.net>

On Sun, 28 Jun 2009 21:11:30 +0100
Sitsofe Wheeler <sitsofe@yahoo.com> wrote:

> On Sun, Jun 07, 2009 at 12:06:18PM +0200, Rafael J. Wysocki wrote:
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12765
> > Subject		: i915 VT switch with AIGLX causes X lock up
> > Submitter	: Sitsofe Wheeler <sitsofe@yahoo.com>
> > Date		: 2009-02-21 15:38 (107 days old)
> > First-Bad-Commit:
> > http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=14d200c5e5bd19219d930bbb9a5a22758c8f5bec
> > References	:
> > http://marc.info/?l=linux-kernel&m=123523074304955&w=4
> > http://lkml.org/lkml/2009/4/27/317 Handled-By	: Jesse Barnes
> > <jbarnes@virtuousgeek.org> Patch		:
> > http://patchwork.kernel.org/patch/20197/
> 
> Still here on 2.6.31-rc1 but...
> 
> ...this seems to be tied to the version of the Intel X drivers I have.
> On another install with more recent Intel X drivers I cannot reproduce
> this issue.

I guess we can mark it closed then, though I don't have the commit id
of the fix handy...

-- 
Jesse Barnes, Intel Open Source Technology Center
