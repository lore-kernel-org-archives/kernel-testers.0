From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: Linux 2.6.27-rc5: System boot regression caused by commit
 a2bd7274b47124d2fc4dfdb8c0591f545ba749dd
Date: Sat, 30 Aug 2008 20:58:22 -0700 (PDT)
Message-ID: <alpine.LFD.1.10.0808302055040.12958@nehalem.linux-foundation.org>
References: <alpine.LFD.1.10.0808281555230.3300@nehalem.linux-foundation.org>  <alpine.LFD.1.10.0808301214310.3290@nehalem.linux-foundation.org>  <86802c440808301314t525d1b75r9afcc73857cf5c79@mail.gmail.com>  <alpine.LFD.1.10.0808301539391.3290@nehalem.linux-foundation.org>
  <86802c440808301550s627dfcb0h7ff8971c8248703a@mail.gmail.com>  <alpine.LFD.1.10.0808301615450.3290@nehalem.linux-foundation.org>  <86802c440808301639j137ebef1r1ecadeebd351fc03@mail.gmail.com>  <86802c440808301727k3e86c816j323eca0fb5e3f4fc@mail.gmail.com>
  <86802c440808301750w6655bbek557e6a23b8036654@mail.gmail.com>  <alpine.LFD.1.10.0808301949100.3290@nehalem.linux-foundation.org> <86802c440808302053r46256f68mf356797a259ad164@mail.gmail.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <86802c440808302053r46256f68mf356797a259ad164-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Ivan Kokshaysky <ink-biIs/Y0ymYJMZLIVYojuPNP0rXTJTi09@public.gmane.org>, Jordan Crouse <jordan.crouse-5C7GfCeVMHo@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>, Tejun Heo <htejun-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, David Witbrodt <dawitbro-rphTv4pjVZMJGwgDXS7ZQA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Kernel Testers <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>



On Sat, 30 Aug 2008, Yinghai Lu wrote:
>
> then
> 1. we should not probe them in probe.c
> 2. at least we should not try to request_resource for them in
> pcibios_resource_survey...
> 
> just pretend that they are not existing.

You are missing the fact that we need to know where existing resources 
are, even if we can't do anything about them!

Read my explanation from yesterday about why we need to add the e820 
resources to the resource map in the first place.

Short recap:

 - we need to populate the resource map with as much possible information 
   about the system as we can..

 - .. because when we assign _dynamic_ resources, we need to make sure 
   that they don't clash with random system resources that we don't really 
   otherwise have a lot of visibility into.

So the resource tree is not just about resources we control, it's also 
about resources that others control(led) and we don't necessarily know a 
lot about.

			Linus
