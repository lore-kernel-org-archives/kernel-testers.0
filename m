From: Jesse Barnes <jbarnes@virtuousgeek.org>
Subject: Re: [Bug #13819] system freeze when switching to console
Date: Tue, 8 Sep 2009 16:16:57 -0700
Message-ID: <20090908161657.0f21c7fb@jbarnes-g45>
References: <2ehA7xoGvXL.A.4PB.3eBpKB@chimera>
	<Vm51Upp4EV.A.r-D.mgBpKB@chimera>
	<1252427375.14735.130.camel@rc-desk>
	<alpine.LFD.2.01.0909080943030.7458@localhost.localdomain>
	<1252431375.14735.139.camel@rc-desk>
	<alpine.LFD.2.01.0909081039300.7458@localhost.localdomain>
	<1252449461.30150.61.camel@rc-desk>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1752170AbZIHXQ6@vger.kernel.org>
In-Reply-To: <1252449461.30150.61.camel@rc-desk>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: reinette chatre <reinette.chatre@intel.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Eric Anholt <eric@anholt.net>, "Ma, Ling" <ling.ma@intel.com>, "bugzilla-daemon@bugzilla.kernel.org" <bugzilla-daemon@bugzilla.kernel.org>

On Tue, 08 Sep 2009 15:37:41 -0700
reinette chatre <reinette.chatre@intel.com> wrote:

> On Tue, 2009-09-08 at 11:06 -0700, Linus Torvalds wrote:
> > so this is TOTALLY UNTESTED!
> 
> I understand that the discussion is still going on whether this is the
> right thing to do. Even so, I thought you may like to know that with
> this patch I can again switch to console, back again, hibernate, and
> shut down .. all without crashing my system.
> 
> Tested-by: Reinette Chatre <reinette.chatre@intel.com>
> 
> Thank you very much!

Do you see "hardware wedged" messages in your log after using Linus's
patch?  That's what I'd expect...  ah no I see we don't call the
routine that requires interrupts in that path like I thought.

So Linus's patch is fine with me.

Acked-by: Jesse Barnes <jbarnes@virtuousgeek.org>

Sorry Linus, you were right; I was making this more complicated than it
had to be.

-- 
Jesse Barnes, Intel Open Source Technology Center
