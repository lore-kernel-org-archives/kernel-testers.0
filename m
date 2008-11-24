From: Tino Keitel <tino.keitel-Mmb7MZpHnFY@public.gmane.org>
Subject: Re: [Bug #12038] Suspend regression in stable kernel 2.6.27.4 on
	Mac mini Core Duo
Date: Mon, 24 Nov 2008 09:03:35 +0100
Message-ID: <20081124080334.GA4598@dose.home.local>
References: <sBqd4qMeLzC.A.mgB.B7HKJB@chimera> <vyitTh0pP2N.A.nJC.c7HKJB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <vyitTh0pP2N.A.nJC.c7HKJB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Sat, Nov 22, 2008 at 21:28:19 +0100, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.27.  Please verify if it still should be listed and let me know
> (either way).

Hi,

2.6.28-rc6 (or more precisely:
ed313489badef16d700f5a3be50e8fd8f8294bc8) still hangs my Mac after
resume, and git log drivers/acpi/sleep/main.c shows no relevant commits.

Regards,
Tino
