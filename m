From: Frederic Weisbecker <fweisbec-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #12465] KVM guests stalling on 2.6.28 (bisected)
Date: Mon, 16 Mar 2009 21:07:38 +0100
Message-ID: <20090316200736.GD8393@nowhere>
References: <9nR7rAsBwYG.A.iEG.fOCvJB@chimera> <qm8_cedJGaP.A.-NH.CPCvJB@chimera> <1237107837.27699.27.camel@kulgan.wumi.org.au> <49BE20B2.9070804@redhat.com> <1237207595.4964.31.camel@kulgan.wumi.org.au>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:received:date:from:to:cc
         :subject:message-id:references:mime-version:content-type
         :content-disposition:in-reply-to:user-agent;
        bh=Lzg5rhzkFuhJrAKssFEJtW2+ZXuLX2nVRDDv/DcNky0=;
        b=TT1WlQc7bQfSGw/z2p9IIyLaTvr0ZTQzx9K75Ma1tHxBpQ6YzVijp3vgK3uIqEcY+A
         /gm6cFqObByDrC+t5ho6T4eun6/xNiS5x1MHvbU6UuBjG/2FeYTJJpgjJ6y4K6pEQkyA
         hkMHfVKgRbgEU1YJhLydtn7gLzpFALJNP7p5U=
Content-Disposition: inline
In-Reply-To: <1237207595.4964.31.camel-9TBizaOOD0ujuAshGpSIhRCuuivNXqWP@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Kevin Shanahan <kmshanah-biM/RbsGxha6c6uEtOJ/EA@public.gmane.org>
Cc: Avi Kivity <avi-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Mike Galbraith <efault-Mmb7MZpHnFY@public.gmane.org>, Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>

On Mon, Mar 16, 2009 at 11:16:35PM +1030, Kevin Shanahan wrote:
> On Mon, 2009-03-16 at 11:49 +0200, Avi Kivity wrote:
> > Kevin Shanahan wrote:
> > > On Sat, 2009-03-14 at 20:20 +0100, Rafael J. Wysocki wrote:
> > >   
> > >> This message has been generated automatically as a part of a report
> > >> of regressions introduced between 2.6.27 and 2.6.28.
> > >>
> > >> The following bug entry is on the current list of known regressions
> > >> introduced between 2.6.27 and 2.6.28.  Please verify if it still should
> > >> be listed and let me know (either way).
> > >>
> > >> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12465
> > >> Subject		: KVM guests stalling on 2.6.28 (bisected)
> > >> Submitter	: Kevin Shanahan <kmshanah-biM/RbsGxha6c6uEtOJ/EA@public.gmane.org>
> > >> Date		: 2009-01-17 03:37 (57 days old)
> > >> Handled-By	: Avi Kivity <avi-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
> > >>     
> > >
> > > No further updates since the last reminder.
> > > The bug should still be listed.   
> > 
> > Does the bug reproduce if you use the acpi_pm clocksource in the guests?
> 
> In the guest being pinged? Yes, it still happens.


Hi Kevin,

I've looked a bit at your traces.
I think it's probably too wide to find something inside.
Latest -tip is provided with a new set of events tracing, meaning
that you will be able to produce function graph traces with various
sched events included.

Another thing, is it possible to reproduce it with only one ping?
Or testing perioding pings and keep only one that raised a relevant
threshold of latency? I think we could do a script that can do that.
It would make the trace much clearer.

Just wait a bit, I'm looking at which event could be relevant to enable
and I come back to you with a set of commands to test.

Frederic.
 
> hermes-old:~# cat /sys/devices/system/clocksource/clocksource0/available_clocksource 
> kvm-clock acpi_pm jiffies tsc 
> hermes-old:~# cat /sys/devices/system/clocksource/clocksource0/current_clocksource 
> acpi_pm
> 
> kmshanah@flexo:~$ ping -c 600 hermes-old
> 
> --- hermes-old.wumi.org.au ping statistics ---
> 600 packets transmitted, 600 received, 0% packet loss, time 599439ms
> rtt min/avg/max/mdev = 0.131/723.197/9941.884/1569.918 ms, pipe 10
> 
> I had to reconfigure the guest kernel to make that clocksource
> available. The way I had the guest kernel configured before, it only had
> tsc and jiffies clocksources available. Unstable TSC was detected, so it
> has been using jiffies until now.
> 
> Here's another test, using kvm-clock as the guest's clocksource:
> 
> hermes-old:~# cat /sys/devices/system/clocksource/clocksource0/current_clocksource 
> kvm-clock
> 
> kmshanah@flexo:~$ ping -c 600 hermes-old
> 
> --- hermes-old.wumi.org.au ping statistics ---
> 600 packets transmitted, 600 received, 0% packet loss, time 599295ms
> rtt min/avg/max/mdev = 0.131/1116.170/30840.411/4171.905 ms, pipe 31
> 
> Regards,
> Kevin.
> 
> 
> --
> To unsubscribe from this list: send the line "unsubscribe linux-kernel" in
> the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at  http://www.tux.org/lkml/
