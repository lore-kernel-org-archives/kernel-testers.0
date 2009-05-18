From: Bartlomiej Zolnierkiewicz <bzolnier-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: 2.6.30-rc6: Reported regressions from 2.6.29
Date: Mon, 18 May 2009 18:35:28 +0200
Message-ID: <200905181835.28803.bzolnier@gmail.com>
References: <_AjETDMbIoL.A.DcH.RYzDKB@chimera> <20090517133210.GB4640@nowhere> <20090517161916.GA2976@liondog.tnic>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:from:to:subject:date
         :user-agent:cc:references:in-reply-to:mime-version
         :content-disposition:message-id:content-type
         :content-transfer-encoding;
        bh=JgOWbXGkrhS85h6Zq8AgAgCBQsry6PILqr+JaUFB3nI=;
        b=XYBJgTrtWX47NkoJvAFS7DO69uqf2IrWNIl+brQ/nIGYcHpjUhm2FIXXEcriEVa+x9
         69hm+0y3ELb0hnyk5IPvE+dB+fq5PQ4O0NDUKvawy2mZdLYQR0mc+lHRlmlFPrUciaXp
         2vmr+Z/VrIRz5lsboaIuV4SPzPOzwqTq3ySxk=
In-Reply-To: <20090517161916.GA2976-f9CnO7I+Q6zU6FkGJEIX5A@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Borislav Petkov <petkovbb-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>
Cc: Frederic Weisbecker <fweisbec-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Helge Deller <deller-Mmb7MZpHnFY@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kyle McMartin <kyle-pfcGkIkfWfAsA/PxXw9srA@public.gmane.org>

On Sunday 17 May 2009 18:19:16 Borislav Petkov wrote:
> Hi,
> 
> On Sun, May 17, 2009 at 03:32:11PM +0200, Frederic Weisbecker wrote:
> > On Sun, May 17, 2009 at 09:33:27AM +0200, Ingo Molnar wrote:
> > > > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13297
> > > > Subject		: kernel panic -  not syncing : fatel exception in interupt
> > > > Submitter	: rob <rob1-z2Ut7v/pTR/vt0rt8C/ehw@public.gmane.org>
> > > > Date		: 2009-05-12 19:34 (5 days old)
> > > > References	: http://marc.info/?l=linux-kernel&m=124216126903309&w=4
> > > 
> > > tainted crash, but probably legit. It does show some badness in an 
> > > old-IDE legacy codepath:
> > > 
> > > [<c0371865>] error_code+0x65/0x6c
> > > [<c0110155>] do_page_fault+0x0/0x1e0
> > > [<c027dafc>] ide_complete_rq+0xf/0x3b
> > > [<c02870a0>] cdrom_newpc_intr+0x64d/0x6cd
> > > [<c0286a53>] cdrom_newpc_intr+0x0/0x6cd
> > > [<c027dcc2>] ide_intr+0x109/0x161
> > > [<c0132298>] handle_IRQ_event+0x54/0xc7
> > > [<c013354a>] handle_level_irq+0x4f/0x85
> > > [<c0103df7>] handle_irq+0x17/0x20
> > > [<c0103da5>] do_IRQ+0x2b/0x66
> > > [<c0102be9>] common_interupt+0x29/0x30
> > > [<c0480000>] cmd40x_init+0x2ac/0x38d
> > > [<c0106db3>] default_idle+0x25/0x38
> > > [<c01019be>] cpu_idle+0x19/0x2d
> > > [<c0468907>] start_kernel+0x23f/0x242
> > > 
> > > report subject line is too unspecific, it should be changed to 
> > > something like:
> > > 
> > >   legacy IDE cmd40x related bootup crash
> > 
> > 
> > It seems the crash has been rewritten by hand. I don't see
> > any cmd40x_init(), I guess it's about cmd640 chipset, then
> > cmd640x_init()

Frederic, is the oops reproducible?  Is 2.6.30-rc6 any better?

Does it help if you disable CONFIG_BLK_DEV_CMD640?
(this system doesn't have CMD640 chipset)
