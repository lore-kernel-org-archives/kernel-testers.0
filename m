From: KOSAKI Motohiro <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>
Subject: Re: [Experimental][PATCH] putback_lru_page rework
Date: Sat, 21 Jun 2008 17:56:17 +0900
Message-ID: <20080621175458.E82A.KOSAKI.MOTOHIRO@jp.fujitsu.com>
References: <1213981843.6474.68.camel@lts-notebook> <1213994489.6474.127.camel@lts-notebook>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1213994489.6474.127.camel@lts-notebook>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Lee Schermerhorn <Lee.Schermerhorn-VXdhtT5mjnY@public.gmane.org>
Cc: kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org, KAMEZAWA Hiroyuki <kamezawa.hiroyu-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, Daisuke Nishimura <nishimura-YQH0OdQVrdy45+QrQBaojngSJqDPrsil@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Rik van Riel <riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Nick Piggin <npiggin-l3A5Bk7waGM@public.gmane.org>, linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

> Quick update:  
> 
> With this patch applied, at ~ 1.5 hours into the test, my system panic'd
> [panic_on_oops set] with a BUG in __find_get_block() -- looks like the
> BUG_ON() in check_irqs_on() called from bh_lru_install() inlined by
> __find_get_block().  Before the panic occurred, I saw warnings from
> native_smp_call_function_mask() [arch/x86/kernel/smp.c]--also because
> irqs_disabled().
> 
> I'll back out the changes [spin_[un]lock() => spin_[un]lock_irq()] to
> shrink_inactive_list() and try again.  Just a hunch.

Yup.
Kamezawa-san's patch remove local_irq_enable(), but don't remove
local_irq_disable().
thus, irq is never enabled.

> -	spin_unlock(&zone->lru_lock);
> +	spin_unlock_irq(&zone->lru_lock);
>  done:
> -	local_irq_enable();



--
To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
