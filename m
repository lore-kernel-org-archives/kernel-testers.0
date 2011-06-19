From: Shawn Starr <shawn.starr-bJEeYj9oJeDQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #37232] [3.0-rc1][NMI/DMAR][iwlagn] errors - PCI system error (SERR) for reason a1 on CPU 0
Date: Sat, 18 Jun 2011 22:34:03 -0400
Message-ID: <9766569.DLsi33Yrbe@segfault.sh0n.net>
References: <vv0uv79EvLN.A.jiC.pNS9NB@chimera> <JL7O0m0yLjL.A.suC.xNS9NB@chimera>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rogers.com; s=s1024; t=1308450847; bh=NG4iSU+jYO+afIX/zHQKh6hoqok+zQTYmkJ5+WONLsI=; h=Received:X-Yahoo-SMTP:X-YMail-OSG:X-Yahoo-Newman-Property:From:To:Cc:Subject:Date:Message-ID:Organization:User-Agent:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type; b=312kDdb4A98+FjNZvJy5kWgeasbHSv2OuT/TWWKdJkfEuIwqvqz8gtom3Lr/ihiQQzcb3ye9X6X8Mn7xrKAGrBmqbl/+MK3Vfavm7MiQfpVkfle+XQWkKiG+LYqla3/SVWDGb76FQK3+qB5Wa3zfy/9tbrS/YqclPLjgIJ/cbI0=
In-Reply-To: <JL7O0m0yLjL.A.suC.xNS9NB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>

On Sunday, June 12, 2011 10:30:54 PM Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a summary report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.39.  Please verify if it still should be listed and let the
> tracking team know (either way).
> 
This continues in -rc3 (3.0-0.rc3.git5.1.fc16.x86_64)

[   22.675931] NMI: PCI system error (SERR) for reason a1 on CPU 0.
[  163.002909] DMAR:[DMA Write] Request device [03:00.0] fault addr ffe48000 
[  163.002911] DMAR:[fault reason 05] PTE Write access is not set

03:00.0 Network controller: Intel Corporation PRO/Wireless 5100 AGN [Shiloh] 
Network Connection

I assume both of those are separate issues, but they continue in any case.

> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=37232
> Subject		: [3.0-rc1][NMI/DMAR][iwlagn] errors - PCI system error (SERR) 
for
> reason a1 on CPU 0 Submitter	: Shawn Starr <shawn.starr@XXXXX>
> Date		: 2011-06-03 4:56 (10 days old)
> Message-ID	: <4478124.OuFNgaPiHS@XXXXXX>
> References	: http://marc.info/?l=linux-kernel&m=130707737616116&w=2
