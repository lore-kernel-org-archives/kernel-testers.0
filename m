From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #13371] s2disk hangs with kernel 2.6.29 and later, SATA, Gigabyte EG45M-DS2H
Date: Tue, 26 May 2009 01:11:40 +0200
Message-ID: <200905260111.40728.rjw@sisk.pl>
References: <GtY7d2eWpoK.A.ioC.MQcGKB@chimera> <200905251630.21781.bzolnier@gmail.com> <20090525171305.GA5855@arbonne.lan>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090525171305.GA5855-dsTKODJrvkThXIiyNabO3w@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Richard Atterer <richard-2/EmM+jwkBzwc4Swprx3xw@public.gmane.org>
Cc: Bartlomiej Zolnierkiewicz <bzolnier-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>

On Monday 25 May 2009, Richard Atterer wrote:
> On Mon, May 25, 2009 at 04:30:21PM +0200, Bartlomiej Zolnierkiewicz wrote:
> > Hmm, we added ACPI NVS memory handling there and some machines seem
> > to have trouble with it.  I think it would be worth to check it first.
> > 
> > Richard, could you try s2disk on some recent 2.6.30-rc kernel while
> > booting using "acpi_sleep=s4_nonvs"?
> 
> I just tried that with 2.6.30-rc7, unfortunately it doesn't make any 
> difference.
> 
> It turns out that if I wait long enough (just over 1 minute) both during 
> suspend and resume, I *am* able to suspend and resume the machine. I have 
> to manually turn it off or reset it though.
> 
> Another possibly interesting observation: My DVD writer apparently gets 
> reset before the 1-minute hang and my USB hub after the hang.

You replied to Jeff that hibernation worked with CONFIG_IDE=n.  What was wrong
with that test?

Rafael
