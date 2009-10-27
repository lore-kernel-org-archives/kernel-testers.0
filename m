From: Benjamin Herrenschmidt <benh-XVmvHMARGAS8U2dJNN8I7kB+6BGkLq7r@public.gmane.org>
Subject: Re: [Bug #14355] USB serial regression after 2.6.31.1 with Huawei
 E169 GSM modem
Date: Tue, 27 Oct 2009 12:54:50 +1100
Message-ID: <1256608490.2076.55.camel@pasglop>
References: <Sj-rRjx6TwF.A.djE.vqe5KB@chimera>
	 <6dRYo8ss7vL.A.xWH.0re5KB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <6dRYo8ss7vL.A.xWH.0re5KB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>, Ben Efros <ben-sBIqA0PYact54TAoqtyWWQ@public.gmane.org>

On Mon, 2009-10-26 at 19:55 +0100, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.31.  Please verify if it still should be listed and let me know
> (either way).

Well, the E169 works, though there seem to be a few issues remaining:

 - There are reports that the E220 is still broken (by the same
regression, just that the patch that fixes the E169 doesn't fix the
E220, but since I don't have one of these, I'm waiting for users to send
dumps instead of just complaining :-)

 - There's a weird glitch where the E169 tend to only work after being
plugged the -second- time. The first time, the storage device generally
shows up but not the ttyS's devices for some strange reason. Not sure
what's up yet. Yanking it and plugging it back works. Could be timing
related due to the need to load the module.

None of that happens with 2.6.31.1

Cheers,
Ben.


> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14355
> Subject		: USB serial regression after 2.6.31.1 with Huawei E169 GSM modem
> Submitter	: Benjamin Herrenschmidt <benh-XVmvHMARGAS8U2dJNN8I7kB+6BGkLq7r@public.gmane.org>
> Date		: 2009-10-10 03:07 (17 days old)
> References	: http://marc.info/?l=linux-kernel&m=125513456327542&w=4
> 
> 
> --
> To unsubscribe from this list: send the line "unsubscribe linux-kernel" in
> the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at  http://www.tux.org/lkml/

