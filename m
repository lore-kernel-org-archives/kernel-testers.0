From: "Yinghai Lu" <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: Linux 2.6.27-rc5: System boot regression caused by commit a2bd7274b47124d2fc4dfdb8c0591f545ba749dd
Date: Fri, 29 Aug 2008 14:19:13 -0700
Message-ID: <86802c440808291419s3ad29269m1856b13ce54a882@mail.gmail.com>
References: <alpine.LFD.1.10.0808281555230.3300@nehalem.linux-foundation.org>
	 <200808291913.26585.rjw@sisk.pl> <200808292157.24179.rjw@sisk.pl>
	 <86802c440808291413t4f31993fmba59a65aefd906ca@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=xlnqu6vfMRRfLp8YOGuQ+VgJ+ljIYAtNJGKKg//AMZg=;
        b=RwE3cRk4YMJO1jjTeGbkhMzOrCTpVNsQ00u8JCkUaaBKSw9T6DulxWdiLahvCx7tv7
         LsY1j0U1o36LknpR0rJ5BelSVPmKtg1ZRrI0AgknQG4uIRGXd2+0zoEwnZ3p/Bx5xLG0
         85E2ra7danGr/dNdX6FoF173ho+kRgKKh8/r0=
In-Reply-To: <86802c440808291413t4f31993fmba59a65aefd906ca-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>, Tejun Heo <htejun-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, David Witbrodt <dawitbro-rphTv4pjVZMJGwgDXS7ZQA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Kernel Testers <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Fri, Aug 29, 2008 at 2:13 PM, Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
> On Fri, Aug 29, 2008 at 12:57 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
>> On Friday, 29 of August 2008, Rafael J. Wysocki wrote:
>>> On Friday, 29 of August 2008, Linus Torvalds wrote:
>>> >
>>> > Another week (my weeks do seem to be eight days, don't they? Very odd),
>>> > another -rc.
>>> >
>>> > The dirstat pretty much says it all:
>>> >
>>> >   43.0% arch/arm/configs/
>>> >   43.9% arch/arm/
>>> >   25.5% arch/powerpc/configs/
>>> >   26.8% arch/powerpc/
>>> >   73.9% arch/
>>> >    4.4% drivers/usb/musb/
>>> >    5.4% drivers/usb/
>>> >    4.0% drivers/watchdog/
>>> >   16.0% drivers/
>>> >    3.5% fs/
>>> >
>>> > yeah, the bulk of it is all config updates, and with arm and powerpc
>>> > leading the pack.
>>>
>>> Doesn't boot on my quad core test box, apparently because of an AHCI failure.
>>>
>>> Bisecting ...
>>
>> Bisection turned up commit a2bd7274b47124d2fc4dfdb8c0591f545ba749dd as the culprit:
>>
>> commit a2bd7274b47124d2fc4dfdb8c0591f545ba749dd
>> Author: Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
>> Date:   Mon Aug 25 00:56:08 2008 -0700
>>
>>    x86: fix HPET regression in 2.6.26 versus 2.6.25, check hpet against BAR, v3
>>
>> Reverting this commit helps.

can you try tip/master?  we have another fix according to Linus..

YH
