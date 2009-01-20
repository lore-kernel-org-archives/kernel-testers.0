From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Subject: Re: [Bug #12465] KVM guests stalling on 2.6.28 (bisected)
Date: Tue, 20 Jan 2009 17:06:13 +0100
Message-ID: <20090120160613.GA32650@elte.hu>
References: <KTnguC9mFUC.A.VNB.TJRdJB@chimera> <cX2gZ6Cy9nC.A.4dB.bJRdJB@chimera> <1232410363.4768.21.camel@kulgan.wumi.org.au> <20090120113546.GA26571@elte.hu> <1232455343.4895.4.camel@kulgan.wumi.org.au> <20090120125652.GA1457@elte.hu> <1232461380.4895.33.camel@kulgan.wumi.org.au> <20090120142515.GC10224@elte.hu> <1232466686.4895.45.camel@kulgan.wumi.org.au>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <1232466686.4895.45.camel-9TBizaOOD0ujuAshGpSIhRCuuivNXqWP@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Kevin Shanahan <kmshanah-biM/RbsGxha6c6uEtOJ/EA@public.gmane.org>
Cc: Avi Kivity <avi-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Mike Galbraith <efault-Mmb7MZpHnFY@public.gmane.org>, Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>, bugme-daemon-590EEB7GvNiWaY/ihj7yzEB+6BGkLq7r@public.gmane.org


* Kevin Shanahan <kmshanah-biM/RbsGxha6c6uEtOJ/EA@public.gmane.org> wrote:

> I've uploaded the debug info here:
>   http://disenchant.net/tmp/bug-12465/

one interesting number to watch for is the KVM thread's wait_max in 
/proc/*/sched. The largest one seems to be 11 milliseconds:

se.wait_max                        :             3.175034
se.wait_max                        :             4.029938
se.wait_max                        :             4.217674
se.wait_max                        :             4.957836
se.wait_max                        :            10.339471
se.wait_max                        :            11.603943

which would be about right given your latency settings:

 /proc/sys/kernel/sched_latency_ns:
 60000000

[ 60 msecs ]

but ... i dont specifically see the kvm threads there. Are they not in 
/proc/*? Maybe it's in threads and it needs to be accessed via 
/proc/*/task/*/sched, as via:

$ grep -h wait_max /proc/*/task/*/sched | sort -t: -n -k 2 | tail -10
se.wait_max                        :            77.858092
se.wait_max                        :            78.778409
se.wait_max                        :            79.379026
se.wait_max                        :            85.930963
se.wait_max                        :            87.671842
se.wait_max                        :            88.008602
se.wait_max                        :            95.095744
se.wait_max                        :           157.882573
se.wait_max                        :           268.714775
se.wait_max                        :           393.085252

so the worst-case latency

Btw., there's a few weird stats in your logs:

se.wait_max                        :          -284.864857
se.wait_max                        :          -284.843431
se.wait_max                        :          -284.820204
se.wait_max                        :          -284.345294
se.wait_max                        :          -284.298462
se.wait_max                        :          -284.018644
se.wait_max                        :          -284.018070
se.wait_max                        :          -188.022417
se.wait_max                        :          -188.021659
se.wait_max                        :           -92.030204
se.wait_max                        :           -92.027877

that field is not supposed to be negative. Mike, Peter, any ideas?

	Ingo
