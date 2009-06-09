From: David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #13319] Page allocation failures with b43 and p54usb
Date: Tue, 9 Jun 2009 00:54:44 -0700 (PDT)
Message-ID: <alpine.DEB.2.00.0906090046000.28701@chino.kir.corp.google.com>
References: <bCxQpon4SCJ.A.RrF.yY7KKB@chimera> <D9VoutSOyXP.A.hvH.Ha7KKB@chimera> <4A2BBC30.2030300@lwfinger.net> <84144f020906070640rf5ab14nbf66d3ca7c97675f@mail.gmail.com> <4A2BCC6F.8090004@redhat.com> <84144f020906070732l31786156r5d9753a0cabfde79@mail.gmail.com>
 <20090608101739.GA15377@csn.ul.ie> <84144f020906080352k57f12ff9pbd696da5f332ac1a@mail.gmail.com> <20090608110303.GD15377@csn.ul.ie> <Pine.LNX.4.64.0906081657001.7036@melkki.cs.Helsinki.FI> <20090608141212.GE15070@csn.ul.ie>
 <1244531201.5024.3.camel@penberg-laptop>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=google.com; s=beta;
	t=1244534089; bh=2CpeYBwn24mirO+MGCWnt8rNbOE=;
	h=DomainKey-Signature:Date:From:X-X-Sender:To:cc:Subject:
	 In-Reply-To:Message-ID:References:User-Agent:MIME-Version:
	 Content-Type:X-System-Of-Record; b=KrP20TTSR8LoLfqmqUOxk0jaYC015Wz
	sGfC19EJeZ/AyUhLyoEjsNdMDs+mCIeUT8QXF4vYKkuRAVmWaUrGEVA==
In-Reply-To: <1244531201.5024.3.camel@penberg-laptop>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
Cc: Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>, Rik van Riel <riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, KOSAKI Motohiro <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, KAMEZAWA Hiroyuki <kamezawa.hiroyu-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, npiggin-l3A5Bk7waGM@public.gmane.org

On Tue, 9 Jun 2009, Pekka Enberg wrote:

> Hi Mel,
> 
> On Mon, 2009-06-08 at 15:12 +0100, Mel Gorman wrote:
> > > diff --git a/mm/slub.c b/mm/slub.c
> > > index 65ffda5..b5acf18 100644
> > > --- a/mm/slub.c
> > > +++ b/mm/slub.c
> > > @@ -1565,6 +1565,8 @@ new_slab:
> > >  		c->page = new;
> > >  		goto load_freelist;
> > >  	}
> > > +	printk(KERN_WARNING "SLUB: unable to satisfy allocation for cache %s (size=%d, node=%d, gfp=%x)\n",
> > > +		s->name, s->size, node, gfpflags);
> > 
> > size could be almost anything here for a casual reader. You are
> > outputting the size of the object plus its metadata so the name should
> > reflect that. I think it would be better to output objsize= and the
> > object size without the metadata overhead. What do you think?
> > 
> > In addition, include how many objects there are per-slab and include what
> > the order is being passed to the page allocator when allocating new slabs.
> > Would that be enough to determine if fallback-to-smaller orders occured?
> 
> So how about something like this then?
> 

Larry reported this stack trace:

kernel: git: page allocation failure. order:1, mode:0x4020
kernel: Pid: 3707, comm: git Not tainted 2.6.30-rc1-wl #115
kernel: Call Trace:
kernel:  [<ffffffff80292f84>] __alloc_pages_internal+0x43d/0x45d
kernel:  [<ffffffff802b2383>] alloc_pages_current+0xbe/0xc6
kernel:  [<ffffffff802b66a4>] new_slab+0xcf/0x28b

That's in the order fallback for new slab allocations; so this cache must 
have oo_order(s->min) of 1.

To diagnose whether its object size dictates a >0 slab order, you could 
enable CONFIG_SLUB_STATS (it's disabled in his .config) and check which 
/sys/kernel/slab/cache/order_fallback increased.  Once you have identified 
the cache, you can get this information via 
/sys/kernel/slab/cache/{objsize,order,size}.  I think this is what 
Christoph was getting at.

You could even boot with `slub_nomerge' to determine whether cache merging 
was the issue where the cache under consideration was unnecessarily merged 
with one that requires larger higher order minimums.

I don't quite understand how its necessary to print the partial lists for 
each node, they should be exhausted if we're allocating a new slab if the 
node doesn't matter (and can't in Larry's case, he only has one).
