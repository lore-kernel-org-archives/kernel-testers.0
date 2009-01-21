From: Steven Rostedt <rostedt-nx8X9YLhiw1AfugRpC6u6w@public.gmane.org>
Subject: Re: [Bug #12465] KVM guests stalling on 2.6.28 (bisected)
Date: Wed, 21 Jan 2009 10:10:32 -0500 (EST)
Message-ID: <alpine.DEB.1.10.0901211010080.14817@gandalf.stny.rr.com>
References: <KTnguC9mFUC.A.VNB.TJRdJB@chimera>  <cX2gZ6Cy9nC.A.4dB.bJRdJB@chimera>  <1232410363.4768.21.camel@kulgan.wumi.org.au>  <20090120113546.GA26571@elte.hu>  <1232455343.4895.4.camel@kulgan.wumi.org.au>  <20090120125652.GA1457@elte.hu>
 <20090120130714.GA11048@elte.hu>  <alpine.DEB.1.10.0901200957220.2681@gandalf.stny.rr.com>  <49760E2D.2060109@redhat.com> <1232547932.4895.119.camel@kulgan.wumi.org.au> <49773275.3020203@redhat.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <49773275.3020203-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Avi Kivity <avi-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Cc: Kevin Shanahan <kmshanah-biM/RbsGxha6c6uEtOJ/EA@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Mike Galbraith <efault-Mmb7MZpHnFY@public.gmane.org>, Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>, =?ISO-8859-15?Q?Fr=E9d=E9ric_Weisbecker?= <fweisbec-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, bugme-daemon-590EEB7GvNiWaY/ihj7yzEB+6BGkLq7r@public.gmane.org


On Wed, 21 Jan 2009, Avi Kivity wrote:

> Kevin Shanahan wrote:
> > On Tue, 2009-01-20 at 19:47 +0200, Avi Kivity wrote:
> >   
> > > Steven Rostedt wrote:
> > >     
> > > > Note, the wakeup latency only tests realtime threads, since other
> > > > threads
> > > > can have other issues for wakeup. I could change the wakeup tracer as
> > > > wakeup_rt, and make a new "wakeup" that tests all threads, but it may
> > > > be difficult to get something accurate.
> > > >       
> > > Kevin, can you retest with kvm at realtime priority?
> > >     
> > 
> > Running vanilla Linux 2.6.28, kvm-82. First a control test to check that
> > the problem is still there when running at normal priority:
> > 
> > --- hermes-old.wumi.org.au ping statistics ---
> > 900 packets transmitted, 900 received, 0% packet loss, time 899283ms
> > rtt min/avg/max/mdev = 0.119/269.773/13739.426/1230.836 ms, pipe 14
> > 
> > Yeah, sure is.
> > 
> > Okay, so now I set the realtime attributes of the processes for the VM
> > instance being pinged:
> > 
> > flexo:~# ps ax | grep 6284
> >  6284 ?        Sl     6:11 /usr/local/kvm/bin/qemu-system-x86_64 -smp 2
> > -m 2048 -hda kvm-17-1.img -hdb kvm-17-tmp.img -net
> > nic,vlan=0,macaddr=52:54:00:12:34:67,model=rtl8139 -net
> > tap,vlan=0,ifname=tap17,script=no -vnc 127.0.0.1:17 -usbdevice tablet
> > -daemonize
> > flexo:~# pstree -p 6284
> > qemu-system-x86(6284)???{qemu-system-x86}(6285)
> >                       ??{qemu-system-x86}(6286)
> >                       ??{qemu-system-x86}(6540)
> > 
> > (info cpus on the QEMU console shows 6285 and 6286 being the VCPU
> > processes. Not sure what the third child is for, maybe vnc?.)
> > 
> > flexo:~# chrt -r -p 3 6284
> > flexo:~# chrt -r -p 3 6285
> > flexo:~# chrt -r -p 3 6286
> > flexo:~# chrt -p 6284
> > pid 6284's current scheduling policy: SCHED_RR
> > pid 6284's current scheduling priority: 3
> > flexo:~# chrt -p 6285
> > pid 6285's current scheduling policy: SCHED_RR
> > pid 6285's current scheduling priority: 3
> > flexo:~# chrt -p 6286
> > pid 6286's current scheduling policy: SCHED_RR
> > pid 6286's current scheduling priority: 3
> > 
> > And the result of the ping test now:
> > 
> > --- hermes-old.wumi.org.au ping statistics ---
> > 900 packets transmitted, 900 received, 0% packet loss, time 899326ms
> > rtt min/avg/max/mdev = 0.093/0.157/3.611/0.117 ms
> > 
> > So, a _huge_ difference. But what does it mean?
> 
> It means, a scheduling problem.  Can you run the latency tracer (which only
> works with realtime priority), so we can tell if it is (a) kvm failing to wake
> up the vcpu properly or (b) the scheduler delaying the vcpu from running.
> 

Note, I'm working on a tracer that will also measure non RT task wake up 
times.

-- Steve
