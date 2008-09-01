From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: Linux 2.6.27-rc5: System boot regression caused by commit
 a2bd7274b47124d2fc4dfdb8c0591f545ba749dd
Date: Mon, 1 Sep 2008 10:53:04 -0700 (PDT)
Message-ID: <alpine.LFD.1.10.0809011047530.12958@nehalem.linux-foundation.org>
References: <alpine.LFD.1.10.0808281555230.3300@nehalem.linux-foundation.org>  <200808302334.29156.rjw@sisk.pl>  <86802c440808301810r17657f3fnb3c8af5496955e0d@mail.gmail.com>  <200808311427.19369.rjw@sisk.pl>  <alpine.LFD.1.10.0808311039330.12958@nehalem.linux-foundation.org>
  <86802c440808311054q4b8e8921qa9f090527b456e34@mail.gmail.com>  <alpine.LFD.1.10.0808311100520.12958@nehalem.linux-foundation.org> <86802c440808311403y57ba050q223fbe370d2c7675@mail.gmail.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <86802c440808311403y57ba050q223fbe370d2c7675-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>, Tejun Heo <htejun-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, David Witbrodt <dawitbro-rphTv4pjVZMJGwgDXS7ZQA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Kernel Testers <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>



On Sun, 31 Aug 2008, Yinghai Lu wrote:
> 
> how about
> 
> 
> diff --git a/drivers/pci/probe.c b/drivers/pci/probe.c
> index cce2f4c..3b5269a 100644
> --- a/drivers/pci/probe.c
> +++ b/drivers/pci/probe.c
> @@ -240,6 +240,11 @@ static int __pci_read_base(struct pci_dev *dev,
> enum pci_bar_type type,
>         pci_read_config_dword(dev, pos, &l);
>         pci_write_config_dword(dev, pos, mask);
>         pci_read_config_dword(dev, pos, &sz);
> +
> +       /* sticky and non changable */
> +       if (sz == l)
> +               goto fail;

No, because a resource really _can_ be at the end. It's perfectly ok to 
have something like a memory resource at 0xff000000-0xffffffff, and then 
the BAR register would always read 0xff000000 (or 0x...4 for a 64-bit 
resource).

So calling that a failure case would be wrong.

		Linus
