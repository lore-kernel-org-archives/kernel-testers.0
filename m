From: Kevin Shanahan <kmshanah-biM/RbsGxha6c6uEtOJ/EA@public.gmane.org>
Subject: Re: [Bug #12465] KVM guests stalling on 2.6.28 (bisected)
Date: Mon, 26 Jan 2009 20:25:30 +1030
Message-ID: <1232963730.4921.12.camel@kulgan.wumi.org.au>
References: <cX2gZ6Cy9nC.A.4dB.bJRdJB@chimera>
	 <1232410363.4768.21.camel@kulgan.wumi.org.au>
	 <20090120113546.GA26571@elte.hu>
	 <1232455343.4895.4.camel@kulgan.wumi.org.au>
	 <20090120125652.GA1457@elte.hu> <20090120130714.GA11048@elte.hu>
	 <alpine.DEB.1.10.0901200957220.2681@gandalf.stny.rr.com>
	 <49760E2D.2060109@redhat.com>
	 <1232547932.4895.119.camel@kulgan.wumi.org.au>
	 <49773275.3020203@redhat.com>  <20090121151820.GA23813@elte.hu>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090121151820.GA23813-X9Un+BFzKDI@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Cc: Avi Kivity <avi-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Steven Rostedt <rostedt-nx8X9YLhiw1AfugRpC6u6w@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Mike Galbraith <efault-Mmb7MZpHnFY@public.gmane.org>, Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>, =?ISO-8859-1?Q?Fr=E9d=E9ric?= Weisbecker <fweisbec-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, bugme-daemon-590EEB7GvNiWaY/ihj7yzEB+6BGkLq7r@public.gmane.org

On Wed, 2009-01-21 at 16:18 +0100, Ingo Molnar wrote:
> * Avi Kivity <avi-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org> wrote:
> > It means, a scheduling problem.  Can you run the latency tracer (wh=
ich=20
> > only works with realtime priority), so we can tell if it is (a) kvm=
=20
> > failing to wake up the vcpu properly or (b) the scheduler delaying =
the=20
> > vcpu from running.
>=20
> Could we please get an ftrace capture of the incident?
>=20
> Firstly, it makes sense to simplify the tracing environment as much a=
s=20
> possible: for example single-CPU traces are much easier to interpret.
>=20
> Can you reproduce it with just one CPU online? I.e. if you offline al=
l the=20
> other cores via:
>=20
>   echo 0 > /sys/devices/system/cpu/cpu1/online
>=20
>   [etc.]
>=20
> and keep CPU#0 only, do the latencies still occur?
>=20
> If they do still occur, then please do the traces that way.
>=20
> [ If they do not occur then switch back on all CPUs - we'll sort out =
the
>   traces ;-) ]
>=20
> Then please build a function tracer kernel, by enabling:
>=20
>   CONFIG_FUNCTION_TRACER=3Dy
>   CONFIG_FUNCTION_GRAPH_TRACER=3Dy
>   CONFIG_DYNAMIC_FTRACE=3Dy
>=20
> Once you boot into such a kernel, you can switch on function tracing =
via:
>=20
>   cd /debug/tracing/
>=20
>   echo 0 > tracing_enabled
>   echo function_graph > current_tracer
>   echo funcgraph-proc > trace_options=20
>=20
> It does not run yet, first find a suitable set of functions to trace.=
 For=20
> example this will be a pretty good starting point for scheduler+KVM=20
> problems:
>=20
>   echo ''         > set_ftrace_filter  # clear filter functions
>   echo '*sched*' >> set_ftrace_filter=20
>   echo '*wake*'  >> set_ftrace_filter
>   echo '*kvm*'   >> set_ftrace_filter
>   echo 1 > tracing_enabled             # let the tracer go
>=20
> You can see your current selection of functions to trace via 'cat=20
> set_ftrace_filter', and you can see all functions via 'cat=20
> available_filter_functions'.
>=20
> You can also trace all functions via:
>=20
>   echo '*' > set_ftrace_filter
>=20
> Tracer output can be captured from the 'trace' file. It should look l=
ike=20
> this:
>=20
>  15)   cc1-28106    |   0.263 us    |    page_evictable();
>  15)   cc1-28106    |               |    lru_cache_add_lru() {
>  15)   cc1-28106    |   0.252 us    |      __lru_cache_add();
>  15)   cc1-28106    |   0.738 us    |    }
>  15)   cc1-28106    | + 74.026 us   |  }
>  15)   cc1-28106    |               |  up_read() {
>  15)   cc1-28106    |   0.257 us    |    _spin_lock_irqsave();
>  15)   cc1-28106    |   0.253 us    |    _spin_unlock_irqrestore();
>  15)   cc1-28106    |   1.329 us    |  }
>=20
> To capture a continuous stream of all trace data you can do:
>=20
>   cat trace_pipe > /tmp/trace.txt
>=20
> (this will also drain the trace ringbuffers.)
>=20
> Note that this can be quite expensive if there are a lot of functions=
 that=20
> are traced - so it makes sense to trim down the set of traced functio=
ns to=20
> only the interesting ones. Which are the interesting ones can be=20
> determined from looking at the traces. You should see your KVM thread=
s=20
> getting active every second as the ping happens.
>=20
> If you get lost events you can increase the trace buffer size via the=
=20
> buffer_size_kb control - the default is around 1.4 MB.
>=20
> Let me know if any of these steps is causing problems or if interpret=
ing=20
> the traces is difficult.

Just carrying out the steps was okay, but I don't really know what I'm
looking at. I've uploaded the trace here (about 10 seconds worth, I
think):

  http://disenchant.net/tmp/bug-12465/trace-1/

The guest being pinged is process 4353:

kmshanah@flexo:~$ pstree -p 4353
qemu-system-x86(4353)=E2=94=80=E2=94=AC=E2=94=80{qemu-system-x86}(4354)
                      =E2=94=9C=E2=94=80{qemu-system-x86}(4355)
                      =E2=94=94=E2=94=80{qemu-system-x86}(4772)

I guess the larger overhead/duration values are what we are looking for=
,
e.g.:

kmshanah@flexo:~$ bzgrep -E '[[:digit:]]{6,}' trace.txt.bz2=20
 0)   ksoftir-4    | ! 3010470 us |  }
 0)  qemu-sy-4354  | ! 250406.2 us |    }
 0)  qemu-sy-4354  | ! 250407.0 us |  }
 0)  qemu-sy-4354  | ! 362946.3 us |    }
 0)  qemu-sy-4354  | ! 362947.0 us |  }
 0)  qemu-sy-4177  | ! 780480.3 us |  }
 0)  qemu-sy-4354  | ! 117685.7 us |    }
 0)  qemu-sy-4354  | ! 117686.5 us |  }

That ksoftirqd value is a bit strange (> 3 seconds, or is the formattin=
g
wrong?). I guess I still need some guidance to know what I'm looking at
with this trace and/or what to do next.

Cheers,
Kevin.

