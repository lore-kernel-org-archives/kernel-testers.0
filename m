From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Subject: Re: [Bug #12465] KVM guests stalling on 2.6.28 (bisected)
Date: Wed, 21 Jan 2009 16:18:20 +0100
Message-ID: <20090121151820.GA23813@elte.hu>
References: <cX2gZ6Cy9nC.A.4dB.bJRdJB@chimera> <1232410363.4768.21.camel@kulgan.wumi.org.au> <20090120113546.GA26571@elte.hu> <1232455343.4895.4.camel@kulgan.wumi.org.au> <20090120125652.GA1457@elte.hu> <20090120130714.GA11048@elte.hu> <alpine.DEB.1.10.0901200957220.2681@gandalf.stny.rr.com> <49760E2D.2060109@redhat.com> <1232547932.4895.119.camel@kulgan.wumi.org.au> <49773275.3020203@redhat.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <49773275.3020203-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: Avi Kivity <avi-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Cc: Kevin Shanahan <kmshanah-biM/RbsGxha6c6uEtOJ/EA@public.gmane.org>, Steven Rostedt <rostedt-nx8X9YLhiw1AfugRpC6u6w@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Mike Galbraith <efault-Mmb7MZpHnFY@public.gmane.org>, Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>, =?iso-8859-1?Q?Fr=E9d=E9ric?= Weisbecker <fweisbec-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, bugme-daemon-590EEB7GvNiWaY/ihj7yzEB+6BGkLq7r@public.gmane.org


* Avi Kivity <avi-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org> wrote:

> Kevin Shanahan wrote:
>> On Tue, 2009-01-20 at 19:47 +0200, Avi Kivity wrote:
>>  =20
>>> Steven Rostedt wrote:
>>>    =20
>>>> Note, the wakeup latency only tests realtime threads, since other =
threads
>>>> can have other issues for wakeup. I could change the wakeup tracer=
 as
>>>> wakeup_rt, and make a new "wakeup" that tests all threads, but it =
may
>>>> be difficult to get something accurate.
>>>>      =20
>>> Kevin, can you retest with kvm at realtime priority?
>>>    =20
>>
>> Running vanilla Linux 2.6.28, kvm-82. First a control test to check =
that
>> the problem is still there when running at normal priority:
>>
>> --- hermes-old.wumi.org.au ping statistics ---
>> 900 packets transmitted, 900 received, 0% packet loss, time 899283ms
>> rtt min/avg/max/mdev =3D 0.119/269.773/13739.426/1230.836 ms, pipe 1=
4
>>
>> Yeah, sure is.
>>
>> Okay, so now I set the realtime attributes of the processes for the =
VM
>> instance being pinged:
>>
>> flexo:~# ps ax | grep 6284
>>  6284 ?        Sl     6:11 /usr/local/kvm/bin/qemu-system-x86_64 -sm=
p 2
>> -m 2048 -hda kvm-17-1.img -hdb kvm-17-tmp.img -net
>> nic,vlan=3D0,macaddr=3D52:54:00:12:34:67,model=3Drtl8139 -net
>> tap,vlan=3D0,ifname=3Dtap17,script=3Dno -vnc 127.0.0.1:17 -usbdevice=
 tablet
>> -daemonize
>> flexo:~# pstree -p 6284
>> qemu-system-x86(6284)=E2=94=80=E2=94=AC=E2=94=80{qemu-system-x86}(62=
85)
>>                       =E2=94=9C=E2=94=80{qemu-system-x86}(6286)
>>                       =E2=94=94=E2=94=80{qemu-system-x86}(6540)
>>
>> (info cpus on the QEMU console shows 6285 and 6286 being the VCPU
>> processes. Not sure what the third child is for, maybe vnc?.)
>>
>> flexo:~# chrt -r -p 3 6284
>> flexo:~# chrt -r -p 3 6285
>> flexo:~# chrt -r -p 3 6286
>> flexo:~# chrt -p 6284
>> pid 6284's current scheduling policy: SCHED_RR
>> pid 6284's current scheduling priority: 3
>> flexo:~# chrt -p 6285
>> pid 6285's current scheduling policy: SCHED_RR
>> pid 6285's current scheduling priority: 3
>> flexo:~# chrt -p 6286
>> pid 6286's current scheduling policy: SCHED_RR
>> pid 6286's current scheduling priority: 3
>>
>> And the result of the ping test now:
>>
>> --- hermes-old.wumi.org.au ping statistics ---
>> 900 packets transmitted, 900 received, 0% packet loss, time 899326ms
>> rtt min/avg/max/mdev =3D 0.093/0.157/3.611/0.117 ms
>>
>> So, a _huge_ difference. But what does it mean?
>
> It means, a scheduling problem.  Can you run the latency tracer (whic=
h=20
> only works with realtime priority), so we can tell if it is (a) kvm=20
> failing to wake up the vcpu properly or (b) the scheduler delaying th=
e=20
> vcpu from running.

Could we please get an ftrace capture of the incident?

=46irstly, it makes sense to simplify the tracing environment as much a=
s=20
possible: for example single-CPU traces are much easier to interpret.

Can you reproduce it with just one CPU online? I.e. if you offline all =
the=20
other cores via:

  echo 0 > /sys/devices/system/cpu/cpu1/online

  [etc.]

and keep CPU#0 only, do the latencies still occur?

If they do still occur, then please do the traces that way.

[ If they do not occur then switch back on all CPUs - we'll sort out th=
e
  traces ;-) ]

Then please build a function tracer kernel, by enabling:

  CONFIG_FUNCTION_TRACER=3Dy
  CONFIG_FUNCTION_GRAPH_TRACER=3Dy
  CONFIG_DYNAMIC_FTRACE=3Dy

Once you boot into such a kernel, you can switch on function tracing vi=
a:

  cd /debug/tracing/

  echo 0 > tracing_enabled
  echo function_graph > current_tracer
  echo funcgraph-proc > trace_options=20

It does not run yet, first find a suitable set of functions to trace. F=
or=20
example this will be a pretty good starting point for scheduler+KVM=20
problems:

  echo ''         > set_ftrace_filter  # clear filter functions
  echo '*sched*' >> set_ftrace_filter=20
  echo '*wake*'  >> set_ftrace_filter
  echo '*kvm*'   >> set_ftrace_filter
  echo 1 > tracing_enabled             # let the tracer go

You can see your current selection of functions to trace via 'cat=20
set_ftrace_filter', and you can see all functions via 'cat=20
available_filter_functions'.

You can also trace all functions via:

  echo '*' > set_ftrace_filter

Tracer output can be captured from the 'trace' file. It should look lik=
e=20
this:

 15)   cc1-28106    |   0.263 us    |    page_evictable();
 15)   cc1-28106    |               |    lru_cache_add_lru() {
 15)   cc1-28106    |   0.252 us    |      __lru_cache_add();
 15)   cc1-28106    |   0.738 us    |    }
 15)   cc1-28106    | + 74.026 us   |  }
 15)   cc1-28106    |               |  up_read() {
 15)   cc1-28106    |   0.257 us    |    _spin_lock_irqsave();
 15)   cc1-28106    |   0.253 us    |    _spin_unlock_irqrestore();
 15)   cc1-28106    |   1.329 us    |  }

To capture a continuous stream of all trace data you can do:

  cat trace_pipe > /tmp/trace.txt

(this will also drain the trace ringbuffers.)

Note that this can be quite expensive if there are a lot of functions t=
hat=20
are traced - so it makes sense to trim down the set of traced functions=
 to=20
only the interesting ones. Which are the interesting ones can be=20
determined from looking at the traces. You should see your KVM threads=20
getting active every second as the ping happens.

If you get lost events you can increase the trace buffer size via the=20
buffer_size_kb control - the default is around 1.4 MB.

Let me know if any of these steps is causing problems or if interpretin=
g=20
the traces is difficult.

	Ingo
