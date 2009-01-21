From: Avi Kivity <avi-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #12465] KVM guests stalling on 2.6.28 (bisected)
Date: Wed, 21 Jan 2009 16:59:20 +0200
Message-ID: <49773848.4080409@redhat.com>
References: <KTnguC9mFUC.A.VNB.TJRdJB@chimera>	 <cX2gZ6Cy9nC.A.4dB.bJRdJB@chimera>	 <1232410363.4768.21.camel@kulgan.wumi.org.au>	 <20090120113546.GA26571@elte.hu>	 <1232455343.4895.4.camel@kulgan.wumi.org.au>	 <20090120125652.GA1457@elte.hu> <20090120130714.GA11048@elte.hu>	 <alpine.DEB.1.10.0901200957220.2681@gandalf.stny.rr.com>	 <49760E2D.2060109@redhat.com>	 <1232547932.4895.119.camel@kulgan.wumi.org.au>	 <49773275.3020203@redhat.com> <1232549502.4895.124.camel@kulgan.wumi.org.au>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1232549502.4895.124.camel-9TBizaOOD0ujuAshGpSIhRCuuivNXqWP@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Kevin Shanahan <kmshanah-biM/RbsGxha6c6uEtOJ/EA@public.gmane.org>
Cc: Steven Rostedt <rostedt-nx8X9YLhiw1AfugRpC6u6w@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Mike Galbraith <efault-Mmb7MZpHnFY@public.gmane.org>, Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>, =?ISO-8859-1?Q?Fr=E9d=E9ric_Weisbecker?= <fweisbec-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, bugme-daemon-590EEB7GvNiWaY/ihj7yzEB+6BGkLq7r@public.gmane.org

Kevin Shanahan wrote:
>>> --- hermes-old.wumi.org.au ping statistics ---
>>> 900 packets transmitted, 900 received, 0% packet loss, time 899326ms
>>> rtt min/avg/max/mdev = 0.093/0.157/3.611/0.117 ms
>>>
>>> So, a _huge_ difference. But what does it mean?
>>>       
>> It means, a scheduling problem.  Can you run the latency tracer (which 
>> only works with realtime priority), so we can tell if it is (a) kvm 
>> failing to wake up the vcpu properly or (b) the scheduler delaying the 
>> vcpu from running.
>>     
>
> Sorry, but are you sure that's going to be useful?
>
> If it only works on realtime threads and I'm not seeing the problem when
> running kvm with realtime priority, is this going to tell you what you
> want to know?
>
> Not trying to be difficult, but that just didn't make sense to me.
>   

You're right, wasn't thinking properly.

This is a tough one.  I'll see if I can think of something.  Ingo, any 
ideas?

-- 
error compiling committee.c: too many arguments to function
