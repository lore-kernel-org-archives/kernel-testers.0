From: Enrico Bandiello <enban-c0jvKHQHzSzx4jp4WZvp5g@public.gmane.org>
Subject: Re: [Bug #16307] i915 in kernel 2.6.35-rc3, high number of wakeups
Date: Tue, 31 Aug 2010 09:38:53 +0200
Message-ID: <4C7CB18D.4020601@postal.uv.es>
References: <c1_O4wHrlB.A.63.mbueMB@chimera> <ByD_7B96czP.A.kdD.pgueMB@chimera> <AANLkTi=bLAr=9E6-nfn8r_qGNfxYCXADoA0M9PzWHLmy@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <AANLkTi=bLAr=9E6-nfn8r_qGNfxYCXADoA0M9PzWHLmy-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Kan-Ru Chen <ckanru-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Enrico Bandiello <enban-cmaem7PIVQTx4jp4WZvp5g@public.gmane.org>

On 08/31/2010 04:19 AM, Kan-Ru Chen wrote:

> Same with v2.6.36-rc3
>
> $ sudo powertop -d -t 20
> ...
> Wakeups-from-idle per second : 196.2    interval: 20.0s
> no ACPI power usage estimate available
> Top causes for wakeups:
>    25.4% ( 59.6)   [i915@pci:0000:00:02.0]<interrupt>

I can confir this behaviour until 2.6.32-rc2. Couldn't try with -rc3 
because compilation exited with error on my laptop...
