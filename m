From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: Linux 2.6.27-rc5: System boot regression caused by commit
 a2bd7274b47124d2fc4dfdb8c0591f545ba749dd
Date: Fri, 29 Aug 2008 19:33:49 -0700 (PDT)
Message-ID: <alpine.LFD.1.10.0808291919080.3300@nehalem.linux-foundation.org>
References: <alpine.LFD.1.10.0808281555230.3300@nehalem.linux-foundation.org>  <200808292157.24179.rjw@sisk.pl>  <86802c440808291413t4f31993fmba59a65aefd906ca@mail.gmail.com>  <200808300031.16708.rjw@sisk.pl>  <86802c440808291624t2bd0229w2da36dfc6c794b18@mail.gmail.com>
  <alpine.LFD.1.10.0808291704070.3300@nehalem.linux-foundation.org>  <86802c440808291711t32d3e76dsf804856b0a8f4939@mail.gmail.com>  <alpine.LFD.1.10.0808291733260.3300@nehalem.linux-foundation.org>  <alpine.LFD.1.10.0808291751480.3300@nehalem.linux-foundation.org>
 <86802c440808291830t4547140dx9b12353649edd975@mail.gmail.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <86802c440808291830t4547140dx9b12353649edd975-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>, Tejun Heo <htejun-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, David Witbrodt <dawitbro-rphTv4pjVZMJGwgDXS7ZQA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Kernel Testers <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>



On Fri, 29 Aug 2008, Yinghai Lu wrote:
> 
> the root cause is:
> before 2.6.26, call init_apic_mapping and will insert_resource for
> lapic address.
> and then call e820_resource_resouce (with request_resource) to
> register e820 entries.

So the problem there was that traditionally, e820_reserve_resource() 
expected to be the first one to populate any resources. That's changed, 
and that's why it now needs to use "insert_resource()" rather than 
"request_resource()".

> so the lapic entry in the resource tree will prevent some entry in
> e820 to be registered.
> later request_resource for BAR res (==hpet) will succeed.
> 
> from 2.6.26. we move lapic address registering to late_initcall, so
> the entry is reserved in e820 getting into resource tree at first.
> and later pci_resource_survey::request_resource for BAR res (==hpet,
> 0xfed00000) will fail. so pci_assign_unsigned... will get new
> res for the BAR, so it messed up hpet setting.

So this didn't work _originally_ either? 

> solutions will be
> 1. use quirk to protect hpet in BAR, Ingo said it is not generic.

Yeah, I don't like it. The quirk I was talking about was the one about 
apparetly bogus MMIO address:

>> pci 0000:00:00.0: BAR has MMCONFIG at e0000000-ffffffff
>        PCI: Using MMCONFIG at e0000000 - efffffff
>
> Where did it get that bogus "ffffffff" end address?

which you said came from another BAR. That isn't the HPET.


> 2. or the one you are reverted... check_bar_with_valid. (hpet, ioapic,
> mmconfig) --> happenly reveal another problem with Rafael's
> system/chipset.

Yeah, no, that's horrid. I'm happy it's reverted.

> 3. or sticky resource... , but could have particallly overlapping

And no, this doesn't work.

> 4. or don't register reserved entries in e820.. Eric, Nacked.

Yeah, no, we do want reserved entries from e820 to show up to at least 
stop late _dynamic_ allocations from taking over.

> 5. or you sugges, regiser some reserved entries later...., and have
> insert_resource_expand_to_fit...

Yes. And I do think this is a workable model.

			Linus
