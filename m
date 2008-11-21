From: Benjamin Herrenschmidt <benh-XVmvHMARGAS8U2dJNN8I7kB+6BGkLq7r@public.gmane.org>
Subject: Re: [Bug #11875] radeonfb lockup in .28-rc (bisected)
Date: Fri, 21 Nov 2008 14:02:42 +1100
Message-ID: <1227236562.7185.217.camel@pasglop>
References: <YrUCLn0F-xH.A.fhE.E4zFJB@chimera>
	 <wnN9HICUAgP.A._d.f5zFJB@chimera> <1226295985.7731.7.camel@pasglop>
	 <jetzafiad4.fsf@sykes.suse.de> <1226353979.7530.8.camel@pasglop>
	 <jefxlzi2x0.fsf@sykes.suse.de> <1226360094.7530.18.camel@pasglop>
	 <je1vxji1br.fsf@sykes.suse.de> <1226368174.7530.47.camel@pasglop>
	 <jeskpy7gnl.fsf@sykes.suse.de>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <jeskpy7gnl.fsf-+JVCjXrnBTholqkO4TVVkw@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Andreas Schwab <schwab-l3A5Bk7waGM@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, "David S. Miller" <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, James Cloos <cloos-GRsvFm/Gh/pBDgjK7y7TUQ@public.gmane.org>, Paul Collins <paul-dsjeNyW6Qm/D+ROgJ3VA+kB+6BGkLq7r@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>

On Tue, 2008-11-11 at 10:31 +0100, Andreas Schwab wrote:
> It looks like you are observing the same failure mode that I do.

BTW> I've been running a torture scripts that does an ls -lR / in a
console and constantly chvt between that console and X and so far
haven't got it to crash...

Cheers,
Ben.

