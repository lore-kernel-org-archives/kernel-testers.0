From: Avi Kivity <avi-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #12465] KVM guests stalling on 2.6.28 (bisected)
Date: Wed, 21 Jan 2009 16:34:29 +0200
Message-ID: <49773275.3020203@redhat.com>
References: <KTnguC9mFUC.A.VNB.TJRdJB@chimera>	 <cX2gZ6Cy9nC.A.4dB.bJRdJB@chimera>	 <1232410363.4768.21.camel@kulgan.wumi.org.au>	 <20090120113546.GA26571@elte.hu>	 <1232455343.4895.4.camel@kulgan.wumi.org.au>	 <20090120125652.GA1457@elte.hu> <20090120130714.GA11048@elte.hu>	 <alpine.DEB.1.10.0901200957220.2681@gandalf.stny.rr.com>	 <49760E2D.2060109@redhat.com> <1232547932.4895.119.camel@kulgan.wumi.org.au>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1232547932.4895.119.camel-9TBizaOOD0ujuAshGpSIhRCuuivNXqWP@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
To: Kevin Shanahan <kmshanah-biM/RbsGxha6c6uEtOJ/EA@public.gmane.org>
Cc: Steven Rostedt <rostedt-nx8X9YLhiw1AfugRpC6u6w@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Mike Galbraith <efault-Mmb7MZpHnFY@public.gmane.org>, Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>, =?UTF-8?B?RnLDqWTDqXJpYyBXZWlzYmVja2Vy?= <fweisbec-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, bugme-daemon-590EEB7GvNiWaY/ihj7yzEB+6BGkLq7r@public.gmane.org

Kevin Shanahan wrote:
> On Tue, 2009-01-20 at 19:47 +0200, Avi Kivity wrote:
>  =20
>> Steven Rostedt wrote:
>>    =20
>>> Note, the wakeup latency only tests realtime threads, since other t=
hreads
>>> can have other issues for wakeup. I could change the wakeup tracer =
as
>>> wakeup_rt, and make a new "wakeup" that tests all threads, but it m=
ay
>>> be difficult to get something accurate.
>>>      =20
>> Kevin, can you retest with kvm at realtime priority?
>>    =20
>
> Running vanilla Linux 2.6.28, kvm-82. First a control test to check t=
hat
> the problem is still there when running at normal priority:
>
> --- hermes-old.wumi.org.au ping statistics ---
> 900 packets transmitted, 900 received, 0% packet loss, time 899283ms
> rtt min/avg/max/mdev =3D 0.119/269.773/13739.426/1230.836 ms, pipe 14
>
> Yeah, sure is.
>
> Okay, so now I set the realtime attributes of the processes for the V=
M
> instance being pinged:
>
> flexo:~# ps ax | grep 6284
>  6284 ?        Sl     6:11 /usr/local/kvm/bin/qemu-system-x86_64 -smp=
 2
> -m 2048 -hda kvm-17-1.img -hdb kvm-17-tmp.img -net
> nic,vlan=3D0,macaddr=3D52:54:00:12:34:67,model=3Drtl8139 -net
> tap,vlan=3D0,ifname=3Dtap17,script=3Dno -vnc 127.0.0.1:17 -usbdevice =
tablet
> -daemonize
> flexo:~# pstree -p 6284
> qemu-system-x86(6284)=E2=94=80=E2=94=AC=E2=94=80{qemu-system-x86}(628=
5)
>                       =E2=94=9C=E2=94=80{qemu-system-x86}(6286)
>                       =E2=94=94=E2=94=80{qemu-system-x86}(6540)
>
> (info cpus on the QEMU console shows 6285 and 6286 being the VCPU
> processes. Not sure what the third child is for, maybe vnc?.)
>
> flexo:~# chrt -r -p 3 6284
> flexo:~# chrt -r -p 3 6285
> flexo:~# chrt -r -p 3 6286
> flexo:~# chrt -p 6284
> pid 6284's current scheduling policy: SCHED_RR
> pid 6284's current scheduling priority: 3
> flexo:~# chrt -p 6285
> pid 6285's current scheduling policy: SCHED_RR
> pid 6285's current scheduling priority: 3
> flexo:~# chrt -p 6286
> pid 6286's current scheduling policy: SCHED_RR
> pid 6286's current scheduling priority: 3
>
> And the result of the ping test now:
>
> --- hermes-old.wumi.org.au ping statistics ---
> 900 packets transmitted, 900 received, 0% packet loss, time 899326ms
> rtt min/avg/max/mdev =3D 0.093/0.157/3.611/0.117 ms
>
> So, a _huge_ difference. But what does it mean?

It means, a scheduling problem.  Can you run the latency tracer (which=20
only works with realtime priority), so we can tell if it is (a) kvm=20
failing to wake up the vcpu properly or (b) the scheduler delaying the=20
vcpu from running.

> P.S. Can someone tell me if I'm doing the CC: to bugme-daemon wrong? =
I
>      thought that was supposed to add the emails as comments to the
>      bugzilla report?
>  =20

So long as it isn't complaining, you can continue.

--=20
error compiling committee.c: too many arguments to function
