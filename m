From: "Yinghai Lu" <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: Linux 2.6.27-rc5: System boot regression caused by commit a2bd7274b47124d2fc4dfdb8c0591f545ba749dd
Date: Fri, 29 Aug 2008 14:13:18 -0700
Message-ID: <86802c440808291413t4f31993fmba59a65aefd906ca@mail.gmail.com>
References: <alpine.LFD.1.10.0808281555230.3300@nehalem.linux-foundation.org>
	 <200808291913.26585.rjw@sisk.pl> <200808292157.24179.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=NZQJPPtpJaxynpoTtw+O5/eYtX85oprS02TASRxA7F4=;
        b=RgV6by8ZP12ZDpXHsqvE9QS+BOi02mJUs8vO31wu6hP/XLvwLYvAB38f2tJ8vSS1GH
         Hv0ba+4k9+UR7GaGppupfWdayS0VLPPo0mAI8lph9ClPx12kcz+YWlqAm9p96e7e8WDe
         /LUU/T7FGcrivyrJkr9Eq5OH4Vk+zjJ0rkyxM=
In-Reply-To: <200808292157.24179.rjw-KKrjLPT3xs0@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>, Tejun Heo <htejun-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, David Witbrodt <dawitbro-rphTv4pjVZMJGwgDXS7ZQA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Kernel Testers <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Fri, Aug 29, 2008 at 12:57 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> On Friday, 29 of August 2008, Rafael J. Wysocki wrote:
>> On Friday, 29 of August 2008, Linus Torvalds wrote:
>> >
>> > Another week (my weeks do seem to be eight days, don't they? Very odd),
>> > another -rc.
>> >
>> > The dirstat pretty much says it all:
>> >
>> >   43.0% arch/arm/configs/
>> >   43.9% arch/arm/
>> >   25.5% arch/powerpc/configs/
>> >   26.8% arch/powerpc/
>> >   73.9% arch/
>> >    4.4% drivers/usb/musb/
>> >    5.4% drivers/usb/
>> >    4.0% drivers/watchdog/
>> >   16.0% drivers/
>> >    3.5% fs/
>> >
>> > yeah, the bulk of it is all config updates, and with arm and powerpc
>> > leading the pack.
>>
>> Doesn't boot on my quad core test box, apparently because of an AHCI failure.
>>
>> Bisecting ...
>
> Bisection turned up commit a2bd7274b47124d2fc4dfdb8c0591f545ba749dd as the culprit:
>
> commit a2bd7274b47124d2fc4dfdb8c0591f545ba749dd
> Author: Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date:   Mon Aug 25 00:56:08 2008 -0700
>
>    x86: fix HPET regression in 2.6.26 versus 2.6.25, check hpet against BAR, v3
>
> Reverting this commit helps.
>

can i get whole bootlog with "debug"?

YH
