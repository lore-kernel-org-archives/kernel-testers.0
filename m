From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Subject: Re: [Bug #12465] KVM guests stalling on 2.6.28 (bisected)
Date: Mon, 26 Jan 2009 16:00:02 +0100
Message-ID: <20090126150002.GB9128@elte.hu>
References: <1232455343.4895.4.camel@kulgan.wumi.org.au> <20090120125652.GA1457@elte.hu> <20090120130714.GA11048@elte.hu> <alpine.DEB.1.10.0901200957220.2681@gandalf.stny.rr.com> <49760E2D.2060109@redhat.com> <1232547932.4895.119.camel@kulgan.wumi.org.au> <49773275.3020203@redhat.com> <20090121151820.GA23813@elte.hu> <1232963730.4921.12.camel@kulgan.wumi.org.au> <1232969705.4863.46.camel@laptop>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <1232969705.4863.46.camel@laptop>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>
Cc: Kevin Shanahan <kmshanah-biM/RbsGxha6c6uEtOJ/EA@public.gmane.org>, Avi Kivity <avi-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Steven Rostedt <rostedt-nx8X9YLhiw1AfugRpC6u6w@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Mike Galbraith <efault-Mmb7MZpHnFY@public.gmane.org>, =?iso-8859-1?Q?Fr=E9d=E9ric?= Weisbecker <fweisbec-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, bugme-daemon-590EEB7GvNiWaY/ihj7yzEB+6BGkLq7r@public.gmane.org


* Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org> wrote:

> Is there a way to add a wall-time column to this output so that we can 
> see where the time goes?

yes, on tip/master:

  http://people.redhat.com/mingo/tip.git/README

do something like this:

 echo funcgraph-abstime > /debug/tracing/trace_options

when the function-graph plugin is active. This will activate the absolute 
timestamps column in the trace output.

> Another something nice would be to have ctx switches like:
> 
> foo-1 => bar-2 ran: ${time foo spend on the cpu} since: ${time bar spend away from the cpu}
> 
> I'll poke me a little at this function graph tracer thingy to see if I 
> can do that.

indeed, tracking the 'scheduling atom duration' would be very nice.

	Ingo
