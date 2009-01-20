From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Subject: Re: [Bug #12465] KVM guests stalling on 2.6.28 (bisected)
Date: Tue, 20 Jan 2009 19:42:49 +0100
Message-ID: <20090120184249.GB5048@elte.hu>
References: <KTnguC9mFUC.A.VNB.TJRdJB@chimera> <cX2gZ6Cy9nC.A.4dB.bJRdJB@chimera> <1232410363.4768.21.camel@kulgan.wumi.org.au> <20090120113546.GA26571@elte.hu> <1232455343.4895.4.camel@kulgan.wumi.org.au> <4975CBF8.90101@redhat.com> <1232474081.4895.76.camel@kulgan.wumi.org.au>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <1232474081.4895.76.camel-9TBizaOOD0ujuAshGpSIhRCuuivNXqWP@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Kevin Shanahan <kmshanah-biM/RbsGxha6c6uEtOJ/EA@public.gmane.org>
Cc: Avi Kivity <avi-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Mike Galbraith <efault-Mmb7MZpHnFY@public.gmane.org>, bugme-daemon-590EEB7GvNiWaY/ihj7yzEB+6BGkLq7r@public.gmane.org, Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>


* Kevin Shanahan <kmshanah-biM/RbsGxha6c6uEtOJ/EA@public.gmane.org> wrote:

> Running the ping test with without apache2 running in the guest:
> 
> --- hermes-old.wumi.org.au ping statistics ---
> 900 packets transmitted, 900 received, 0% packet loss, time 902740ms
> rtt min/avg/max/mdev = 0.568/3.745/272.558/16.990 ms
> 
> And with apache2 running:
> 
> --- hermes-old.wumi.org.au ping statistics ---
> 900 packets transmitted, 900 received, 0% packet loss, time 902758ms
> rtt min/avg/max/mdev = 0.625/25.634/852.739/76.586 ms
> 
> In both cases it's quite variable, but the max latency is still not as 
> bad as when running with the irq chip enabled.

So the worst-case ping latency is more than 10 times lower?

I'd say this points in the direction of some sort of KVM-internal 
wakeup/signalling latency that happens if KVM does not deschedule. For 
example it could be a bug like this: if a guest image runs at 100% CPU 
time for a long time, IRQ injections might not propagate up until the 
preemption callbacks run. (but i'm just speculating here)

	Ingo
