From: Jesse Barnes <jbarnes@virtuousgeek.org>
Subject: Re: [Bug #13180] 2.6.30-rc2: WARNING at i915_gem.c for
 i915_gem_idle
Date: Mon, 27 Apr 2009 09:38:47 -0700
Message-ID: <20090427093847.778dcd81@hobbes>
References: <47KgT3nlbjD.A.lnB.jc48JB@chimera>
	<Fg2zLW93smL.A.hKC.tc48JB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1756966AbZD0QkV@vger.kernel.org>
In-Reply-To: <Fg2zLW93smL.A.hKC.tc48JB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Niel Lambrechts <niel.lambrechts@gmail.com>, eric@anholt.net

On Sat, 25 Apr 2009 21:31:51 +0200 (CEST)
"Rafael J. Wysocki" <rjw@sisk.pl> wrote:

> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.29.  Please verify if it still should be listed and let me
> know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13180
> Subject		: 2.6.30-rc2: WARNING at i915_gem.c for
> i915_gem_idle Submitter	: Niel Lambrechts
> <niel.lambrechts@gmail.com> Date		: 2009-04-21 21:35 (5
> days old) References	:
> http://marc.info/?l=linux-kernel&m=124034980819102&w=4

Can you elaborate the issues you're seeing with UXA+KMS?  EXA had some
breakage in several configs, though it shouldn't have caused gem_idle
warnings (those are real bugs I think).

Cc'ing Eric since this is more his area.

-- 
Jesse Barnes, Intel Open Source Technology Center
