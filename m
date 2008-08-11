From: Rabin Vincent <rabin-66gdRtMMWGc@public.gmane.org>
Subject: Re: [Bug #11270] BUG when doing a cat
	/sys/devices/system/cpu/cpuidle/current_driver
Date: Mon, 11 Aug 2008 21:18:12 +0530
Message-ID: <20080811154812.GB1667@debian>
References: <VYYCiQF4qDI.A.BPH.KCjnIB@albercik> <cX_-nNkxKaF.A.7EB.GDjnIB@albercik>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:date:from:to:cc:subject
         :message-id:references:mime-version:content-type:content-disposition
         :in-reply-to:user-agent:sender;
        bh=lgGPqh5LBnp5WiaMtN1+HzROYaap/7ou+d1bWyKFa/w=;
        b=iojEsqo3kd+bUCe0RsYH8nhOKHBIlJLzfrRb//pav9NKkq1P/3fqDzAw292lCVUdGa
         QojuqEk2pDdfOFia6JGjN6W3urYoGnujiOXDk4FKtT4PTIwb365Jchrw5I4Bx4R2yr6W
         GBTayOhC41hjzUKHzFgNH8ZnCrLyg9j69Gob8=
Content-Disposition: inline
In-Reply-To: <cX_-nNkxKaF.A.7EB.GDjnIB@albercik>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Eric Sesterhenn <snakebyte-Mmb7MZpHnFY@public.gmane.org>

On Sun, Aug 10, 2008 at 12:43:51AM +0200, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.26.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11270
> Subject		: BUG when doing a cat /sys/devices/system/cpu/cpuidle/current_driver
> Submitter	: Eric Sesterhenn <snakebyte-Mmb7MZpHnFY@public.gmane.org>
> Date		: 2008-08-05 12:33 (5 days old)
> References	: http://marc.info/?l=linux-kernel&m=121793969102438&w=4
> Handled-By	: Rabin Vincent <rabin-66gdRtMMWGc@public.gmane.org>
> Patch		: http://marc.info/?l=linux-kernel&m=121795955208618&w=4

Needs to be open.  The patch is in -mm, but is not yet in mainline.

Rabin
