From: Andi Kleen <andi-Vw/NltI1exuRpAAqCnN02g@public.gmane.org>
Subject: Re: suse slab testing module "crasher"
Date: Sun, 15 Jun 2008 20:37:40 +0200
Message-ID: <48556174.9090708@firstfloor.org>
References: <317948575@web.de>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <317948575-S0/GAf8tV78@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: devzero-S0/GAf8tV78@public.gmane.org
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org


> 
> so, if it`s useful, who is reponsible for pushing it upstream ?

Nobody is. That is why it isn't. Feel free to do the work.

It would need some cleanup before submission. e.g. the ooops/panic etc. options
are fairly useless and should be removed and there needs to be more documentation.

-Andi
--
To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
