From: Rusty Russell <rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org>
Subject: Re: [RFC 1/1] cpumask: New cpumask API - take 2 - use unsigned longs
Date: Wed, 1 Oct 2008 10:45:22 +1000
Message-ID: <200810011045.22859.rusty@rustcorp.com.au>
References: <alpine.LFD.1.10.0808251344250.3363@nehalem.linux-foundation.org> <48E269B6.1080904@sgi.com> <48E2A691.7060407@sgi.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <48E2A691.7060407-sJ/iWh9BUns@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Mike Travis <travis-sJ/iWh9BUns@public.gmane.org>
Cc: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, Alan.Brunelle-VXdhtT5mjnY@public.gmane.org, tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, arjan-VuQAYsv1563Yd54FQh9/CA@public.gmane.org, Jack Steiner <steiner-sJ/iWh9BUns@public.gmane.org>

On Wednesday 01 October 2008 08:22:09 Mike Travis wrote:
> Here's an alternate proposal for the new cpumask API.  I have not yet begun
...
> +/* cpumask_t defaults to pointer to constant bit map */
> +typedef const unsigned long *cpumask_t;

Hiding a const here is not a good idea either, I think :(

Rusty.
