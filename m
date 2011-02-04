From: "Carlos R. Mafra" <crmafra2-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: 2.6.38-rc3-git1: Reported regressions 2.6.36 -> 2.6.37
Date: Fri, 4 Feb 2011 08:05:46 +0100
Message-ID: <20110204070546.GA12621@linux-yscl.site>
References: <e9vOd5LzdBK.A.dyD.h6eSNB@chimera>
 <AANLkTikELiGS+fM5WguZS=Fo-sSXmej1UnKWqCFmnE0k@mail.gmail.com>
 <s5haaid3xos.wl%tiwai@suse.de>
 <201102032009.17100.rjw@sisk.pl>
 <AANLkTi=suS1VDL=6EtT0D2=0c1DWwxdwZBBv=-BySNX-@mail.gmail.com>
 <AANLkTi=7EOih=fY5FCvhQbewSc=3a49cYVaKJRWM+-3d@mail.gmail.com>
 <AANLkTin7kBur95H=UBcYEcjYsUkrdG8znX-7PFZ4rrHf@mail.gmail.com>
 <AANLkTimQPPDyBwkN0HWM2+bPcbzVd8YHZvn2iR8MVzfL@mail.gmail.com>
 <yund3n88v7x.fsf@aiko.keithp.com>
 <AANLkTin-9a5Z3qq4t8UakRvgB1G3_CT2RLKMVaHXvnLr@mail.gmail.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:date:from:to:cc:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=j7ltYGEcXVUlVCDywqwnailcspl3MRZlbr3Lg2p6KRI=;
        b=Alx+sQ8BgzD9e9n2VbPU14Xj0UyRuuBVOyIGHigf3wVBBl47FznOXYn+lsjm14Dojf
         GGFU9VNM/UOKFDM+gpyACpjKkhMZIyo1Ohj/ZPc9TfT/HF1oYJF4woWzv/YE8EIL/4XS
         rym2Z+azaG2Rc69ytERgOs3dAwqIJwe1GYD9E=
Content-Disposition: inline
In-Reply-To: <AANLkTin-9a5Z3qq4t8UakRvgB1G3_CT2RLKMVaHXvnLr-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: Keith Packard <keithp-aN4HjG94KOLQT0dZR+AlfA@public.gmane.org>, Dave Airlie <airlied-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Dave Airlie <airlied-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Takashi Iwai <tiwai-l3A5Bk7waGM@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Network Development <netdev-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Linux ACPI <linux-acpi-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Linux PM List <linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org>, Linux SCSI List <linux-scsi-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Linux Wireless List <linux-wireless-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, DRI <dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org>

On Thu  3.Feb'11 at 17:11:14 -0800, Linus Torvalds wrote:
> On Thu, Feb 3, 2011 at 5:05 PM, Keith Packard <keithp-aN4HjG94KOLQT0dZR+AlfA@public.gmane.org> wrote:
> >
> > The goal is to make it so that when you *do* set a mode, DPMS gets set
> > to ON (as the monitor will actually be "on" at that point). Here's a
> > patch which does the DPMS_ON precisely when setting a mode.
> 
> Ok, patch looks sane, but it does leave me with the "what about the
> 'fb_changed' case?" question. Is that case basically guaranteed to not
> change any existing dpms state?
> 
> > (note, this patch compiles, but is otherwise only lightly tested).
> 
> Carlos? Takashi? Ignore my crazy patch, try this one instead. Does it
> fix things for you?

Yes! (tested on top of 2.6.38-rc3+).

Thanks to everyone involved!
