From: "Yinghai Lu" <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: Linux 2.6.27-rc5: System boot regression caused by commit a2bd7274b47124d2fc4dfdb8c0591f545ba749dd
Date: Fri, 29 Aug 2008 16:24:21 -0700
Message-ID: <86802c440808291624t2bd0229w2da36dfc6c794b18@mail.gmail.com>
References: <alpine.LFD.1.10.0808281555230.3300@nehalem.linux-foundation.org>
	 <200808292157.24179.rjw@sisk.pl>
	 <86802c440808291413t4f31993fmba59a65aefd906ca@mail.gmail.com>
	 <200808300031.16708.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=GWqdjK5r0xYdy8siq3zDTvyiOkXriwVjZtDhtfIoPCY=;
        b=NUPWGp4RlISM/UbaDVknLVy/kjnx+vqCKOp/vRkSJQH/Sa6K2Vr/Q2cOPnP8Mx2r8D
         n7algtk4p7kpzLnNy0j/EizJxSyp1cjLer19JdmV7IGwPXOB6xCBff4ejgtP37N5OcsN
         53SSHSF42UDAztAHHQDUsABNtdHMLTSbZcRDE=
In-Reply-To: <200808300031.16708.rjw-KKrjLPT3xs0@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>, Tejun Heo <htejun-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, David Witbrodt <dawitbro-rphTv4pjVZMJGwgDXS7ZQA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Kernel Testers <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Fri, Aug 29, 2008 at 3:31 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> On Friday, 29 of August 2008, Yinghai Lu wrote:
>> On Fri, Aug 29, 2008 at 12:57 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
>> > On Friday, 29 of August 2008, Rafael J. Wysocki wrote:
>> >> On Friday, 29 of August 2008, Linus Torvalds wrote:
>> >> >
>> >> > Another week (my weeks do seem to be eight days, don't they? Very odd),
>> >> > another -rc.
>> >> >
>> >> > The dirstat pretty much says it all:
>> >> >
>> >> >   43.0% arch/arm/configs/
>> >> >   43.9% arch/arm/
>> >> >   25.5% arch/powerpc/configs/
>> >> >   26.8% arch/powerpc/
>> >> >   73.9% arch/
>> >> >    4.4% drivers/usb/musb/
>> >> >    5.4% drivers/usb/
>> >> >    4.0% drivers/watchdog/
>> >> >   16.0% drivers/
>> >> >    3.5% fs/
>> >> >
>> >> > yeah, the bulk of it is all config updates, and with arm and powerpc
>> >> > leading the pack.
>> >>
>> >> Doesn't boot on my quad core test box, apparently because of an AHCI failure.
>> >>
>> >> Bisecting ...
>> >
>> > Bisection turned up commit a2bd7274b47124d2fc4dfdb8c0591f545ba749dd as the culprit:
>> >
>> > commit a2bd7274b47124d2fc4dfdb8c0591f545ba749dd
>> > Author: Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
>> > Date:   Mon Aug 25 00:56:08 2008 -0700
>> >
>> >    x86: fix HPET regression in 2.6.26 versus 2.6.25, check hpet against BAR, v3
>> >
>> > Reverting this commit helps.
>> >
>>
>> can i get whole bootlog with "debug"?
>
> http://www.sisk.pl/kernel/debug/mainline/2.6.27-rc5/broken.log
>


pci 0000:00:00.0: BAR has MMCONFIG at e0000000-ffffffff
pci 0000:00:12.0: BAR 5: can't allocate resource
pci 0000:00:13.0: BAR 0: can't allocate resource
pci 0000:00:13.1: BAR 0: can't allocate resource
pci 0000:00:13.2: BAR 0: can't allocate resource
pci 0000:00:13.3: BAR 0: can't allocate resource
pci 0000:00:13.4: BAR 0: can't allocate resource
pci 0000:00:13.5: BAR 0: can't allocate resource
pci 0000:00:14.2: BAR 0: can't allocate resource

your mmconf in BAR is broken....

after forcibly insert that block all others...

YH
