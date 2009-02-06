From: Jesse Barnes <jbarnes@virtuousgeek.org>
Subject: Re: [Bug #12491] i915 lockdep warning
Date: Fri, 6 Feb 2009 15:40:34 -0800
Message-ID: <200902061540.38042.jbarnes@virtuousgeek.org>
References: <kkuKoQJIW-D.A.61C.auYiJB@chimera> <200902050203.40535.rjw@sisk.pl> <adar62bchfw.fsf@cisco.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1758946AbZBFXk4@vger.kernel.org>
In-Reply-To: <adar62bchfw.fsf@cisco.com>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Roland Dreier <rdreier@cisco.com>
Cc: "Rafael J. Wysocki" <rjw@sisk.pl>, Eric Anholt <eric@anholt.net>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, "Brandeburg, Jesse" <jesse.brandeburg@intel.com>, drivers_video-dri@kernel-bugs.osdl.org

On Friday, February 6, 2009 2:46 pm Roland Dreier wrote:
>  > i915: Fix potential AB-BA deadlock in i915_gem_execbuffer()
>
> Jesse, Eric, or anybody -- does this look correct to you?  This seems to
> be triggering for several people, eg
> https://bugzilla.redhat.com/show_bug.cgi?id=481687

Eric's been looking at this issue, and there's some discussion about it on the 
intel-gfx list, but I'm not sure what the latest is (Eric is travelling atm).

-- 
Jesse Barnes, Intel Open Source Technology Center
