From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #14355] USB serial regression after 2.6.31.1 with Huawei E169 GSM modem
Date: Tue, 27 Oct 2009 09:28:07 +0100
Message-ID: <200910270928.07483.rjw@sisk.pl>
References: <Sj-rRjx6TwF.A.djE.vqe5KB@chimera> <6dRYo8ss7vL.A.xWH.0re5KB@chimera> <1256608490.2076.55.camel@pasglop>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1256608490.2076.55.camel@pasglop>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Benjamin Herrenschmidt <benh-XVmvHMARGAS8U2dJNN8I7kB+6BGkLq7r@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>, Ben Efros <ben-sBIqA0PYact54TAoqtyWWQ@public.gmane.org>

On Tuesday 27 October 2009, Benjamin Herrenschmidt wrote:
> On Mon, 2009-10-26 at 19:55 +0100, Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.31.  Please verify if it still should be listed and let me know
> > (either way).
> 
> Well, the E169 works, though there seem to be a few issues remaining:
> 
>  - There are reports that the E220 is still broken (by the same
> regression, just that the patch that fixes the E169 doesn't fix the
> E220, but since I don't have one of these, I'm waiting for users to send
> dumps instead of just complaining :-)
> 
>  - There's a weird glitch where the E169 tend to only work after being
> plugged the -second- time. The first time, the storage device generally
> shows up but not the ttyS's devices for some strange reason. Not sure
> what's up yet. Yanking it and plugging it back works. Could be timing
> related due to the need to load the module.
> 
> None of that happens with 2.6.31.1

Well, I guess it's better to leave the bug open in that case.

Thanks,
Rafael
