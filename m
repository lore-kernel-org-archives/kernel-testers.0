From: Borislav Petkov <petkovbb@googlemail.com>
Subject: Re: 2.6.30-rc6: Reported regressions from 2.6.29
Date: Tue, 19 May 2009 08:05:26 +0200
Message-ID: <20090519060526.GA24102@liondog.tnic>
References: <_AjETDMbIoL.A.DcH.RYzDKB@chimera> <20090517133210.GB4640@nowhere> <20090517161916.GA2976@liondog.tnic> <200905181835.28803.bzolnier@gmail.com>
Mime-Version: 1.0
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1753797AbZESGFj@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=gamma;
        h=domainkey-signature:received:received:received:date:from:to:cc
         :subject:message-id:mail-followup-to:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=kck5p5s+Gx+kJq+bZp17UUzlKK4wJEgHk811LuuRDQU=;
        b=E1A1Lq9k1k4b3s898s67oQA239zzaIv8Pyby9RS/6dAbzTCHZ/SuBSrmD77TmlT5TX
         UA3xh4UrS2FjkCbucxGfkna4uz1c9B0o6TbailAOUNW1XGnNLq6DlejBUldEsZwEfu9x
         7ottI7/oMHIE91zoadxjBQ+mPc7TaTh22rzb4=
Content-Disposition: inline
In-Reply-To: <200905181835.28803.bzolnier@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Bartlomiej Zolnierkiewicz <bzolnier@gmail.com>
Cc: Frederic Weisbecker <fweisbec@gmail.com>, Ingo Molnar <mingo@elte.hu>, Helge Deller <deller@gmx.de>, "Rafael J. Wysocki" <rjw@sisk.pl>, Andrew Morton <akpm@linux-foundation.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Kyle McMartin <kyle@mcmartin.ca>

Hi,

On Mon, May 18, 2009 at 06:35:28PM +0200, Bartlomiej Zolnierkiewicz wrote:
> On Sunday 17 May 2009 18:19:16 Borislav Petkov wrote:
> > Hi,
> > 
> > On Sun, May 17, 2009 at 03:32:11PM +0200, Frederic Weisbecker wrote:
> > > On Sun, May 17, 2009 at 09:33:27AM +0200, Ingo Molnar wrote:
> > > > > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13297
> > > > > Subject		: kernel panic -  not syncing : fatel exception in interupt
> > > > > Submitter	: rob <rob1@housetosell.net>
> > > > > Date		: 2009-05-12 19:34 (5 days old)
> > > > > References	: http://marc.info/?l=linux-kernel&m=124216126903309&w=4
> > > > 
> > > > tainted crash, but probably legit. It does show some badness in an 
> > > > old-IDE legacy codepath:
> > > > 
> > > > [<c0371865>] error_code+0x65/0x6c
> > > > [<c0110155>] do_page_fault+0x0/0x1e0
> > > > [<c027dafc>] ide_complete_rq+0xf/0x3b
> > > > [<c02870a0>] cdrom_newpc_intr+0x64d/0x6cd
> > > > [<c0286a53>] cdrom_newpc_intr+0x0/0x6cd
> > > > [<c027dcc2>] ide_intr+0x109/0x161
> > > > [<c0132298>] handle_IRQ_event+0x54/0xc7
> > > > [<c013354a>] handle_level_irq+0x4f/0x85
> > > > [<c0103df7>] handle_irq+0x17/0x20
> > > > [<c0103da5>] do_IRQ+0x2b/0x66
> > > > [<c0102be9>] common_interupt+0x29/0x30
> > > > [<c0480000>] cmd40x_init+0x2ac/0x38d
> > > > [<c0106db3>] default_idle+0x25/0x38
> > > > [<c01019be>] cpu_idle+0x19/0x2d
> > > > [<c0468907>] start_kernel+0x23f/0x242
> > > > 
> > > > report subject line is too unspecific, it should be changed to 
> > > > something like:
> > > > 
> > > >   legacy IDE cmd40x related bootup crash
> > > 
> > > 
> > > It seems the crash has been rewritten by hand. I don't see
> > > any cmd40x_init(), I guess it's about cmd640 chipset, then
> > > cmd640x_init()

No, you don't because its a via82cxxx chipset. I've CC'ed the bug
reporter's mail to linux-ide, see

http://marc.info/?l=linux-ide&m=124271263912107&w=2

-- 
Regards/Gruss,
    Boris.
