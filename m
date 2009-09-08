From: Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>
Subject: Re: [Bug #13819] system freeze when switching to console
Date: Tue, 8 Sep 2009 15:11:35 -0700
Message-ID: <20090908151135.7ba64801@jbarnes-g45>
References: <2ehA7xoGvXL.A.4PB.3eBpKB@chimera>
	<Vm51Upp4EV.A.r-D.mgBpKB@chimera>
	<1252427375.14735.130.camel@rc-desk>
	<alpine.LFD.2.01.0909080943030.7458@localhost.localdomain>
	<1252431375.14735.139.camel@rc-desk>
	<alpine.LFD.2.01.0909081039300.7458@localhost.localdomain>
	<20090908112014.002a35af@jbarnes-g45>
	<alpine.LFD.2.01.0909081219130.7458@localhost.localdomain>
	<20090908123151.1f2b18fe@jbarnes-g45>
	<alpine.LFD.2.01.0909081502510.7458@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.LFD.2.01.0909081502510.7458-bi+AKbBUZKY6gyzm1THtWbp2dZbC/Bob@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: reinette chatre <reinette.chatre-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Eric Anholt <eric-WhKQ6XTQaPysTnJN9+BGXg@public.gmane.org>, "Ma, Ling" <ling.ma-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, "bugzilla-daemon-590EEB7GvNiWaY/ihj7yzEB+6BGkLq7r@public.gmane.org" <bugzilla-daemon-590EEB7GvNiWaY/ihj7yzEB+6BGkLq7r@public.gmane.org>

On Tue, 8 Sep 2009 15:06:21 -0700 (PDT)
Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org> wrote:

> 
> 
> On Tue, 8 Sep 2009, Jesse Barnes wrote:
> > 
> > Yeah, saw that.  I don't think that's the root cause though.  If we
> > see a user interrupt after gem_idle is called we may have serious
> > issues in our command handling code.
> 
> Quite frankly, I do not understand why you seem to be making excuses
> for code that causes a very nasty and undebuggable oops, causing the
> machine to die. 

No excuses.  This is a serious bug; I just don't want to paper over it.

> This regression is almost two months old, and apparently the Intel 
> graphics people DID ABSOLUTELY NOTHING about it during those two
> months, because they couldn't be bothered to look at it.

Yeah sorry, this is the first I've seen of it...  I usually troll the
regressions lists but I must have missed this one.

> And now, when I pinpointed exactly where the oops happens, and what
> the cause is, you seem to be trying to hold things up. I wanted to do
> the final 2.6.31 release yesterday, quite frankly I'm not in the
> _least_ interested in excuses, I'm interested in something that at
> least gets us back to the 2.6.30 state that doesn't oops!
> 
> Get me a patch, please. If disabling the interrupts early won't work,
> get me something else. Stop delaying it - it's been pending for 48
> days already.

Sure, looking at it now.

-- 
Jesse Barnes, Intel Open Source Technology Center
