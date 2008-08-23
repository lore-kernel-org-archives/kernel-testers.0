From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #11279] 2.6.27-rc0 Power Bugs with HP/Compaq Laptops
Date: Sat, 23 Aug 2008 12:26:38 +0200
Message-ID: <200808231226.39080.rjw@sisk.pl>
References: <DLWXHEp37wB.A.duD.yZzpIB@albercik> <200808230019.09040.rjw@sisk.pl> <680ad8bc0808230032g458319b6nbcaddd24ad84f7a4@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <680ad8bc0808230032g458319b6nbcaddd24ad84f7a4-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Matt Parnell <mparnell-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, LKML <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, pm list <linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org>, Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Saturday, 23 of August 2008, you wrote:
> Arrgh...I spoke too soon. It'll boot if I disable hrtimers, but I also
> have to make it use jiffies as the clocksource...so I guess we're back
> to square one. If i have hrtimers enabled, with or without
> clocksource=jiffies, I end up getting segfaults...so, I'm pretty much
> not sure what to do at this point, but relay this message to the pros.

Well, thanks for the update again.

I've added some CCs to the message, perhaps someone will have an idea what to
do next.

Thanks,
Rafafel
