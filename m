From: Christian Borntraeger <borntraeger-tA70FqPdS9bQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #12422] 2.6.28-git can't resume from str
Date: Sun, 11 Jan 2009 17:18:41 +0100
Message-ID: <200901111718.41756.borntraeger@de.ibm.com>
References: <XU-8icArWLM.A.UpG.8GfaJB@chimera> <200901111518.38880.borntraeger@de.ibm.com> <b6a2187b0901110813s5429573cm7d78f39e288f70a3@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <b6a2187b0901110813s5429573cm7d78f39e288f70a3-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Jeff Chua <jeff.chua.linux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Daniel Drake <dsd-aBrp7R+bbdUdnm+yROfE0A@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Phil Dibowitz <phil-LijsOF1cAEA@public.gmane.org>

Am Sonntag 11 Januar 2009 schrieb Jeff Chua:
> > I found a nearby commit during bisect, which looks much saner:
> >
> > http://marc.info/?l=linux-kernel&m=123167815028388&w=2
> 
> This was committed earlier than
> a0e280e0f33f6c859a235fb69a875ed8f3420388, and
> a0e280e0f33f6c859a235fb69a875ed8f3420388 was the last working kernel
> that is able to suspend/resume. Go one before, and suspend/resume
> breaks.

Yes, I am aware that this patch fixes one of the many S2R problems in 
2.6.29-rc. Thats why I had 

commit a0e280e0f33f6c859a235fb69a875ed8f3420388
Author: Heiko Carstens <heiko.carstens-tA70FqPdS9bQT0dZR+AlfA@public.gmane.org>
Date:   Wed Jan 7 16:19:46 2009 +0100

    stop_machine/cpu hotplug: fix disable_nonboot_cpus

as an additional patch applied during my bisect.

Christian
