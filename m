From: Jesse Barnes <jbarnes@virtuousgeek.org>
Subject: Re: [Bug #13171] 2.6.30-rc2 + xorg-intel-2.7.0 + DRM_I915_KMS =
 corruption
Date: Mon, 27 Apr 2009 09:36:55 -0700
Message-ID: <20090427093655.3d498003@hobbes>
References: <47KgT3nlbjD.A.lnB.jc48JB@chimera>
	<Fg2zLW93smL.A.XrC.0c48JB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1757248AbZD0Qko@vger.kernel.org>
In-Reply-To: <Fg2zLW93smL.A.XrC.0c48JB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Alex Bennee <kernel-hacker@bennee.com>

On Sat, 25 Apr 2009 21:31:50 +0200 (CEST)
"Rafael J. Wysocki" <rjw@sisk.pl> wrote:

> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.29.  Please verify if it still should be listed and let me
> know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13171
> Subject		: 2.6.30-rc2 + xorg-intel-2.7.0 + DRM_I915_KMS
> = corruption Submitter	: Alex Bennee <kernel-hacker@bennee.com>
> Date		: 2009-04-19 6:27 (7 days old)
> References	:
> http://marc.info/?l=linux-kernel&m=124022460014812&w=4

I'm curious about this one... we pushed some display setup related
fixes recently so things should be working well in all configs now
afaik.

Alex can you post your X log?

-- 
Jesse Barnes, Intel Open Source Technology Center
