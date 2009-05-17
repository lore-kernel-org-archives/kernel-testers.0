From: Frederic Weisbecker <fweisbec-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: 2.6.30-rc6: Reported regressions from 2.6.29
Date: Sun, 17 May 2009 15:32:11 +0200
Message-ID: <20090517133210.GB4640@nowhere>
References: <_AjETDMbIoL.A.DcH.RYzDKB@chimera> <20090517073327.GC1583@elte.hu>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:received:date:from:to:cc
         :subject:message-id:references:mime-version:content-type
         :content-disposition:in-reply-to:user-agent;
        bh=r1ZwUDUw4FIcUUwjUrn45R0CGsRYUzptFmRtIBgNbWs=;
        b=qK2he5jG4o/h4WMScYxl14BgudcaXaVaBe5WZvvKgPSmSC/MUdajfouDR9vWIqfvar
         nq/wcX8Z0EK2BojLEQDE4QZKDeXcGNaKiBrQC9tbTyOslAbHY3aNfV/UW3SlKELc3c6/
         cAqWuagA2JQx3Oc1pq3DvrQH5RpHc3dwx9P2M=
Content-Disposition: inline
In-Reply-To: <20090517073327.GC1583-X9Un+BFzKDI@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Helge Deller <deller-Mmb7MZpHnFY@public.gmane.org>, Borislav Petkov <petkovbb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Bartlomiej Zolnierkiewicz <bzolnier-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kyle McMartin <kyle-pfcGkIkfWfAsA/PxXw9srA@public.gmane.org>

On Sun, May 17, 2009 at 09:33:27AM +0200, Ingo Molnar wrote:
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13297
> > Subject		: kernel panic -  not syncing : fatel exception in interupt
> > Submitter	: rob <rob1-z2Ut7v/pTR/vt0rt8C/ehw@public.gmane.org>
> > Date		: 2009-05-12 19:34 (5 days old)
> > References	: http://marc.info/?l=linux-kernel&m=124216126903309&w=4
> 
> tainted crash, but probably legit. It does show some badness in an 
> old-IDE legacy codepath:
> 
> [<c0371865>] error_code+0x65/0x6c
> [<c0110155>] do_page_fault+0x0/0x1e0
> [<c027dafc>] ide_complete_rq+0xf/0x3b
> [<c02870a0>] cdrom_newpc_intr+0x64d/0x6cd
> [<c0286a53>] cdrom_newpc_intr+0x0/0x6cd
> [<c027dcc2>] ide_intr+0x109/0x161
> [<c0132298>] handle_IRQ_event+0x54/0xc7
> [<c013354a>] handle_level_irq+0x4f/0x85
> [<c0103df7>] handle_irq+0x17/0x20
> [<c0103da5>] do_IRQ+0x2b/0x66
> [<c0102be9>] common_interupt+0x29/0x30
> [<c0480000>] cmd40x_init+0x2ac/0x38d
> [<c0106db3>] default_idle+0x25/0x38
> [<c01019be>] cpu_idle+0x19/0x2d
> [<c0468907>] start_kernel+0x23f/0x242
> 
> report subject line is too unspecific, it should be changed to 
> something like:
> 
>   legacy IDE cmd40x related bootup crash


It seems the crash has been rewritten by hand. I don't see
any cmd40x_init(), I guess it's about cmd640 chipset, then
cmd640x_init()

I don't see very recent changes in drivers/ide/cmd640.c
But there are some in drivers/ide/ide-io.c and drivers/ide/ide-cd.c
for this cycle.

Especially commit a1f9a89c90b4ac143c5b6054c2a157572b272cd2 which
fixed in -rc2:

 Kernel Fault: Code=26 regs=8ed34c40 (Addr=00000024)
     IASQ: 00000000 00000000 IAOQ: 1034b5ac 1034b5b0
     IIR: 4ab30048    ISR: 00000000  IOR: 00000024
     CPU:        0   CR30: 8ed34000 CR31: ffff55ff
     ORIG_R28: 00000000
     IAOQ[0]: ide_complete_rq+0x2c/0x70
     IAOQ[1]: ide_complete_rq+0x30/0x70
     RP(r2): cdrom_newpc_intr+0x178/0x46c
    Backtrace:
     [<1035c608>] cdrom_newpc_intr+0x178/0x46c
     [<1034c494>] ide_intr+0x1b0/0x214
     [<1016d284>] handle_IRQ_event+0x70/0x150
     [<1016d4b0>] __do_IRQ+0x14c/0x1cc
     [<102f7864>] superio_interrupt+0x88/0xbc
     [<1016d284>] handle_IRQ_event+0x70/0x150
     [<1016d4b0>] __do_IRQ+0x14c/0x1cc
     [<10112efc>] do_cpu_irq_mask+0x9c/0xd0
     [<10116068>] intr_return+0x0/0x4

Looks very similar. But the crash reported in this ticket is for -rc4, which means the
issue was still there after this fix or it's another one.
Adding some more Cc's.

Frederic.
