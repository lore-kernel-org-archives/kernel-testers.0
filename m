From: reinette chatre <reinette.chatre-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #13819] system freeze when switching to console
Date: Tue, 08 Sep 2009 16:27:01 -0700
Message-ID: <1252452421.30150.65.camel@rc-desk>
References: <2ehA7xoGvXL.A.4PB.3eBpKB@chimera>
	 <Vm51Upp4EV.A.r-D.mgBpKB@chimera>	<1252427375.14735.130.camel@rc-desk>
	 <alpine.LFD.2.01.0909080943030.7458@localhost.localdomain>
	 <1252431375.14735.139.camel@rc-desk>
	 <alpine.LFD.2.01.0909081039300.7458@localhost.localdomain>
	 <1252449461.30150.61.camel@rc-desk>  <20090908161657.0f21c7fb@jbarnes-g45>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090908161657.0f21c7fb@jbarnes-g45>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>
Cc: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Eric Anholt <eric-WhKQ6XTQaPysTnJN9+BGXg@public.gmane.org>, "Ma, Ling" <ling.ma-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, "bugzilla-daemon-590EEB7GvNiWaY/ihj7yzEB+6BGkLq7r@public.gmane.org" <bugzilla-daemon-590EEB7GvNiWaY/ihj7yzEB+6BGkLq7r@public.gmane.org>

On Tue, 2009-09-08 at 16:16 -0700, Jesse Barnes wrote:

> Do you see "hardware wedged" messages in your log after using Linus's
> patch?  That's what I'd expect...  ah no I see we don't call the
> routine that requires interrupts in that path like I thought.

I can confirm that. While using this patch, when I am in X and then
switch to console and back to X there are no new messages (checked with
dmesg).

Reinette

