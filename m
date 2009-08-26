From: Eric Paris <eparis-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #14011] Kernel paging request failed in kmem_cache_alloc
Date: Wed, 26 Aug 2009 11:08:21 -0400
Message-ID: <1251299301.2308.31.camel@dhcp231-106.rdu.redhat.com>
References: <riPp5fx5ECC.A.2IG.qsGlKB@chimera>
	 <_yaHeGjHEzG.A.2bH.CtGlKB@chimera>
	 <84144f020908252317j202aa459u27c40eed34debd6@mail.gmail.com>
	 <200908261601.05734.ml_kernel@mortal-soul.de>
	 <84144f020908260759q6554971dva6cc89a0ad9821b@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <84144f020908260759q6554971dva6cc89a0ad9821b-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
Cc: Matthias Dahl <ml_kernel-Rk1lLwyeSiSCvTm3UDtA3g@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Wed, 2009-08-26 at 17:59 +0300, Pekka Enberg wrote:
> On Wed, Aug 26, 2009 at 5:01 PM, Matthias Dahl<ml_kernel-Rk1lLwyeSiSCvTm3UDtA3g@public.gmane.org> wrote:
> >> Can you reproduce the bug without the proprietary nvidia module that
> >> seems to be loaded?
> >
> > I am sorry but I forgot to test that and right now I am not very keen on
> > trying again since this is my primary machine and I had quite some fs
> > corruption (ext4 on md raid5 -> no barriers) the last times. :-( But this also
> > happened w/o Xorg ever being run during that session (though naturally the
> > nvidia kernel module was still loaded).
> 
> Sure, I can understand that. The bug looks like regular slab
> corruption which could have been caused the nvidia blob. So I think
> the issue should be closed unless someone can reproduce it without the
> blob.
> 
> That said, sys_inotify_add_watch() also appears in the trace and
> there's been quite a few bug fixes in that area recently so I guess we
> should CC Eric Paris just in case the oops rings a bell to him.

Nope, no bells here  :(   That slab cache is declared globally and
allocated at __init time.  I haven't seen any reports of writes off the
ends of marks which might mess up a chache...  sorry.....

-Eric
