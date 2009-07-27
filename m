From: David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #13319] Page allocation failures with b43 and p54usb
Date: Mon, 27 Jul 2009 11:16:16 -0700 (PDT)
Message-ID: <alpine.DEB.2.00.0907271113460.8408@chino.kir.corp.google.com>
References: <DizPU9GBfHF.A.kgF.iWObKB@chimera> <H5-1lZIIeYK.A.Pi.BZObKB@chimera> <4A6CF220.7080605@lwfinger.net> <alpine.DEB.2.00.0907261722140.21259@chino.kir.corp.google.com> <84144f020907270008h2a985278of68e70ff1ee9265c@mail.gmail.com>
 <alpine.DEB.2.00.0907270227420.15760@chino.kir.corp.google.com> <alpine.DEB.1.10.0907271320130.13513@gentwo.org>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=google.com; s=beta;
	t=1248718585; bh=B2tZ/gH2lrIjNUdxOSpwRkYzgOA=;
	h=DomainKey-Signature:Date:From:X-X-Sender:To:cc:Subject:
	 In-Reply-To:Message-ID:References:User-Agent:MIME-Version:
	 Content-Type:X-System-Of-Record; b=DTPt4br5Q9lceAvbpsW30glQHUcLxl1
	ET7HqlUZkRHtTT4oJjfatMaQj2AD0NpJrJPD1eE98XNeaQNkA9b9utw==
In-Reply-To: <alpine.DEB.1.10.0907271320130.13513-gkYfJU5Cukgdnm+yROfE0A@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>, Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>

On Mon, 27 Jul 2009, Christoph Lameter wrote:

> On Mon, 27 Jul 2009, David Rientjes wrote:
> 
> > We need DEBUG_FLAGS to determine which flags to mask off to reduce the
> > minimum order, so I don't see DEBUG_FLAGS_SIZE as troublesome.
> >
> > Christoph?
> 
> Post a patch? Otherwise just go ahead.
> 
> 

My patch is already in Pekka's slab-2.6.git tree at 
http://git.kernel.org/?p=linux/kernel/git/penberg/slab-2.6.git;a=commit;h=fa5ec8a1f66f3c2a3af723abcf8085509c9ee682

You had proposed http://marc.info/?l=linux-kernel&m=124725166205814, which 
moves the mask to kmem_cache_open() and calls calculate_sizes() twice.  
That eliminates DEBUG_FLAGS_SIZE, but I don't see that define as being 
troublesome since we must define DEBUG_FLAGS to specify what options add 
metdata anyway.
