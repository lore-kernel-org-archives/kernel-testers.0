From: Mike Galbraith <efault-Mmb7MZpHnFY@public.gmane.org>
Subject: Re: [Bug #13114] USB storage (usbstick) automount woes
Date: Fri, 17 Apr 2009 06:01:59 +0200
Message-ID: <1239940919.5879.11.camel@marge.simson.net>
References: <EJaiQ4Wfaz.A.3YG.4v85JB@chimera>
	 <nY3-4PrO6XH.A.wsH.Nw85JB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <nY3-4PrO6XH.A.wsH.Nw85JB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>, Greg Kroah-Hartman <gregkh-l3A5Bk7waGM@public.gmane.org>

On Thu, 2009-04-16 at 23:45 +0200, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.29.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13114
> Subject		: USB storage (usbstick) automount woes
> Submitter	: Mike Galbraith <efault-Mmb7MZpHnFY@public.gmane.org>
> Date		: 2009-04-09 9:26 (8 days old)
> First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=e6e244b6cb1f70e7109381626293cd40a8334ed3
> References	: http://marc.info/?l=linux-kernel&m=123926928907568&w=4
> Handled-By	: Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>

The fix is in the pipe.

	-Mike
