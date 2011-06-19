From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #37232] [3.0-rc1][NMI/DMAR][iwlagn] errors - PCI system error (SERR) for reason a1 on CPU 0
Date: Sun, 19 Jun 2011 15:46:02 +0200
Message-ID: <201106191546.02503.rjw@sisk.pl>
References: <vv0uv79EvLN.A.jiC.pNS9NB@chimera> <JL7O0m0yLjL.A.suC.xNS9NB@chimera> <9766569.DLsi33Yrbe@segfault.sh0n.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <9766569.DLsi33Yrbe-RRHT56Q3PSMGBMjmSbuoWl6hYfS7NtTn@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Shawn Starr <shawn.starr-bJEeYj9oJeDQT0dZR+AlfA@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>

On Sunday, June 19, 2011, Shawn Starr wrote:
> On Sunday, June 12, 2011 10:30:54 PM Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a summary report
> > of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.39.  Please verify if it still should be listed and let the
> > tracking team know (either way).
> > 
> This continues in -rc3 (3.0-0.rc3.git5.1.fc16.x86_64)
> 
> [   22.675931] NMI: PCI system error (SERR) for reason a1 on CPU 0.
> [  163.002909] DMAR:[DMA Write] Request device [03:00.0] fault addr ffe48000 
> [  163.002911] DMAR:[fault reason 05] PTE Write access is not set
> 
> 03:00.0 Network controller: Intel Corporation PRO/Wireless 5100 AGN [Shiloh] 
> Network Connection
> 
> I assume both of those are separate issues, but they continue in any case.

Thanks for the update.

Rafael
