From: Cyrill Gorcunov <gorcunov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [REGRESSION][BISECTED][X86] next-20080526 hangs on boot
Date: Mon, 26 May 2008 18:41:34 +0400
Message-ID: <20080526144134.GA7305@cvg>
References: <g1eg2q$81q$1@ger.gmane.org>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:received:date:from:to:cc:subject:message-id:references:mime-version:content-type:content-disposition:in-reply-to:user-agent;
        bh=dIwfxUdl8LS+x/wWmeUN9a/wIceAq4E5omg/VIIsDak=;
        b=tg2YMMyWrhk070yhsjfX+JgaebPDiY5xAglW9mGr3OYDIODAeQmZFNx1opRjLjSCvO3/qWTyCJhbefGKgabSvseb555/Esc4ftoUh1H637o+6WTEtHfD8LqSesRlMaqAZ46dgtIx5YpbJGjyr23VLB7Ny1cZFzERcpPgvT0Mmy0=
Content-Disposition: inline
In-Reply-To: <g1eg2q$81q$1@ger.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Sitsofe Wheeler <sitsofe-/E1597aS9LQAvxtiuMwx3w@public.gmane.org>
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

[Sitsofe Wheeler - Mon, May 26, 2008 at 03:04:54PM +0100]
| <posted & mailed>
| 
| When using a 32 bit linux-next-20080526 the bootup process will hang at a
| random point (not even sysrq helps) with no additional output on the screen
| (whereas linux-next-20080523 did boot). Mysteriously, booting with
| nmi_watchdog=2 allows the boot to finish (booting with nmi_watchdog=1 still
| stalls). I have bisected it down to commit
| [d1b946b97d71423f365fa797d1428e1847c0bec1]:
| 
| commit d1b946b97d71423f365fa797d1428e1847c0bec1
| Author: Cyrill Gorcunov <gorcunov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
| Date:   Sat May 24 19:36:34 2008 +0400
| 
|     x86: nmi_32.c - add "panic" option
| 
|     Allow to pass "panic" option in 32bit mode
| 
|     Signed-off-by: Cyrill Gorcunov <gorcunov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
|     Cc: hpa-YMNOUZJC4hwAvxtiuMwx3w@public.gmane.org
|     Cc: mingo-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org
|     Signed-off-by: Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>
| 
| Reverting this seemed to allow the boot to proceed without issue. Here is
| the bisection log:
| 

Hi, so it helps by reverting _only_ that commit? I mean all further commits
are still appiled?

		- Cyrill -
--
To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
