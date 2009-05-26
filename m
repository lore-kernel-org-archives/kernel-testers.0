From: gapeters-XfrvlLN1Pqtfpb/ySbbPhw@public.gmane.org
Subject: Re: [Bug #13371] s2disk hangs with kernel 2.6.29 and later, SATA,
	Gigabyte EG45M-DS2H - culprit found
Date: Tue, 26 May 2009 17:10:59 -0400
Message-ID: <20090526211058.GB2538@indigo.myhome.westell.com>
References: <GtY7d2eWpoK.A.ioC.MQcGKB@chimera> <200905251448.40907.bzolnier@gmail.com> <20090525134522.GA7805@arbonne.lan> <200905251630.21781.bzolnier@gmail.com> <20090525171305.GA5855@arbonne.lan> <20090525230259.GA5098@vilya>
Reply-To: jerry_734-H+0wwilmMs3R7s880joybQ@public.gmane.org
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20090525230259.GA5098@vilya>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
Cc: Bartlomiej Zolnierkiewicz <bzolnier-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Thadeu Lima de Souza Cascardo <cascardo-DmMZpsCg3uxeGPcbtGPokg@public.gmane.org>, Auke Kok <auke-jan.h.kok-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

On Tue, May 26, 2009 at 01:03:00AM +0200, Richard Atterer wrote:
> Hello,
> 
> "Jerry" contacted me off-list with information about the root of the 
> problem - many thanks indeed!!!
> 
> It turns out that the e100 driver is responsible. (The motherboard actually 
> has a r8169 chip, but I added an old Intel PCI ethernet card I own.)
> 
> By rmmoding e100 before s2disk, the problem goes away. Jerry mentions that 
> he once saw a message about e100 failing to load its microcode - I never 
> saw such a message.
> 
> The most recent e100 commit ac7c992 by Thadeu Lima de Souza Cascardo (Apr 
> 28) made some changes to the behaviour in the case of shutdown vs. suspend, 
> maybe the problem is there? (But note that during bisecting, I tested 
> kernels older than that commit, and not all of them worked.) Before that, 
> f902283 (Mar 3 2008) mentions suspend in the log message.
> 
> Cheers,
> 
>   Richard
> 
> -- 

I think I saw the firmware loader failure during resume. If you leave the
system alone for ~2 minutes it will resume, but the e100 won't work &
any thing "touching" it will go into an un-interruptable sleep
(ifconfig, cat'ing some of its /sys files).

IIRC started with 2.6.29, with the change to net drivers to use the
firmware loader. During the hibernate, for some reason, the e100 is
suspended then resumed, at which point it requests its firmware.
Userspace is frozen so the firmware load times out (the 2 minute timeout
which is why I guessed you were having the same problem).

During resume, the e100 is apparently resumed *before* userspace is
un-frozen, so again it times out loading its firmware. At this point
it's unusable.

	Jerry
