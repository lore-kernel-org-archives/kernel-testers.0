From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Regression] Commit 2344abbcbdb82140050e8be29d3d55e4f6fe860b breaks resume on nx6325
Date: Mon, 22 Sep 2008 17:37:31 +0200
Message-ID: <200809221737.32117.rjw@sisk.pl>
References: <200809210124.30547.rjw@sisk.pl> <200809220036.52831.rjw@sisk.pl> <20080922084103.GF6601@elte.hu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20080922084103.GF6601-X9Un+BFzKDI@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Cc: Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Kernel Testers <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, LKML <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Pavel Machek <pavel-AlSwsSmVLrQ@public.gmane.org>

On Monday, 22 of September 2008, Ingo Molnar wrote:
> 
> * Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> 
> > So, it looks like RCU is broken and I have no idea how to debug it 
> > further.
> > 
> > Please advise.
> 
> i think RCU is not broken, RCU just happens to be the first entity 
> affected by C1E-enter magically killing the (previously working) lapic 
> timer clockevents device.

Well, I should have said "RCU breaks as a result of the underlying issue". :-)

> We are working on a fix. 

Thanks!

Rafael
