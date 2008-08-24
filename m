From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: 2.6.27-rc4-git1: Reported regressions from 2.6.26
Date: Sun, 24 Aug 2008 11:58:09 -0700 (PDT)
Message-ID: <alpine.LFD.1.10.0808241152370.3363@nehalem.linux-foundation.org>
References: <mzBsPw3QUOF.A.87F.wZGsIB@albercik>  <alpine.LFD.1.10.0808241050180.3363@nehalem.linux-foundation.org> <19f34abd0808241143t6f5239d7o679135e9e974fe63@mail.gmail.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <19f34abd0808241143t6f5239d7o679135e9e974fe63-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Vegard Nossum <vegard.nossum-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Daniel J Blueman <daniel.blueman-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Adrian Bunk <bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Natalie Protasevich <protasnb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>



On Sun, 24 Aug 2008, Vegard Nossum wrote:
> 
> I haven't really used the hlists before, so my first instinct was to
> do what is obvious.

I do agree that the hlist versions aren't very nice in this regard. The 
regular lists are much better at moving lists around.

> Other than that, I guess open-coding list ops is also not very good 
> programming practice? :-)

Agreed. It would be better if the people who use hlists most (I think that 
would be networking) would think about this.

> But... feel free to submit your own patch. Oh, what am I saying.

Silly boy. Next you'll ask me to _test_ any patches I send out.

Anyway, I think your patch is likely fine, I just thought it looked a bit 
odd to have a loop to move a list from one head pointer to another.

But regardless, it would need some testing. Daniel?

			Linus
