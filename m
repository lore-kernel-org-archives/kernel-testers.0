From: David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #13319] Page allocation failures with b43 and p54usb
Date: Tue, 9 Jun 2009 01:14:59 -0700 (PDT)
Message-ID: <alpine.DEB.2.00.0906090105270.28701@chino.kir.corp.google.com>
References: <bCxQpon4SCJ.A.RrF.yY7KKB@chimera> <D9VoutSOyXP.A.hvH.Ha7KKB@chimera> <4A2BBC30.2030300@lwfinger.net> <84144f020906070640rf5ab14nbf66d3ca7c97675f@mail.gmail.com> <4A2BCC6F.8090004@redhat.com> <84144f020906070732l31786156r5d9753a0cabfde79@mail.gmail.com>
 <20090608101739.GA15377@csn.ul.ie> <84144f020906080352k57f12ff9pbd696da5f332ac1a@mail.gmail.com> <20090608110303.GD15377@csn.ul.ie> <Pine.LNX.4.64.0906081657001.7036@melkki.cs.Helsinki.FI> <20090608141212.GE15070@csn.ul.ie> <1244531201.5024.3.camel@penberg-laptop>
 <alpine.DEB.2.00.0906090046000.28701@chino.kir.corp.google.com> <1244534315.5024.34.camel@penberg-laptop>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=google.com; s=beta;
	t=1244535303; bh=PLH+FaitYEk1FB1kUJrSa3UOzSM=;
	h=DomainKey-Signature:Date:From:X-X-Sender:To:cc:Subject:
	 In-Reply-To:Message-ID:References:User-Agent:MIME-Version:
	 Content-Type:X-System-Of-Record; b=moJnYTCNg6JoFgKurH2FW6f9ypEHS3Q
	voFpnBDwhmjgIjPt6/nrB9rCp955GPn1dMdWvUBaExKu485x8hyIDKA==
In-Reply-To: <1244534315.5024.34.camel@penberg-laptop>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
Cc: Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>, Rik van Riel <riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, KOSAKI Motohiro <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, KAMEZAWA Hiroyuki <kamezawa.hiroyu-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, npiggin-l3A5Bk7waGM@public.gmane.org

On Tue, 9 Jun 2009, Pekka Enberg wrote:

> > To diagnose whether its object size dictates a >0 slab order, you could 
> > enable CONFIG_SLUB_STATS (it's disabled in his .config) and check which 
> > /sys/kernel/slab/cache/order_fallback increased.  Once you have identified 
> > the cache, you can get this information via 
> > /sys/kernel/slab/cache/{objsize,order,size}.  I think this is what 
> > Christoph was getting at.
> > 
> > You could even boot with `slub_nomerge' to determine whether cache merging 
> > was the issue where the cache under consideration was unnecessarily merged 
> > with one that requires larger higher order minimums.
> 
> Sure. Applying my diagnostic patch will probably shed some light on the
> subject too.
> 

I wasn't sure whether you were proposing the patch as an addition to slub 
or just to help with this issue.  I agree it would help in a hopefully 
ratelimited manner for general slab allocation failures and would have 
avoided some of the confusion for this issue from lack of diagnostics.

> > I don't quite understand how its necessary to print the partial lists for 
> > each node, they should be exhausted if we're allocating a new slab if the 
> > node doesn't matter (and can't in Larry's case, he only has one).
> 
> It doesn't hurt either, does it? Yes, we expect the partial lists to be
> exhausted but it's better to print that out just in case we have a bug
> some day somewhere and that condition is not true. This is very
> infrequent slow patch code here anyway.
> 

It will lead to false postiives since you can get a free to a full slab 
which moves it back to an allowed node's partial list before count_free() 
is printed.
