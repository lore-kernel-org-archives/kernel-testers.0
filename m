From: Avi Kivity <avi-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #12465] KVM guests stalling on 2.6.28 (bisected)
Date: Tue, 20 Jan 2009 19:47:25 +0200
Message-ID: <49760E2D.2060109@redhat.com>
References: <KTnguC9mFUC.A.VNB.TJRdJB@chimera> <cX2gZ6Cy9nC.A.4dB.bJRdJB@chimera> <1232410363.4768.21.camel@kulgan.wumi.org.au> <20090120113546.GA26571@elte.hu> <1232455343.4895.4.camel@kulgan.wumi.org.au> <20090120125652.GA1457@elte.hu> <20090120130714.GA11048@elte.hu> <alpine.DEB.1.10.0901200957220.2681@gandalf.stny.rr.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.DEB.1.10.0901200957220.2681-f9ZlEuEWxVcI6MkJdU+c8EEOCMrvLtNR@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Steven Rostedt <rostedt-nx8X9YLhiw1AfugRpC6u6w@public.gmane.org>
Cc: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Kevin Shanahan <kmshanah-biM/RbsGxha6c6uEtOJ/EA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kevin Shanahan <kmshanah-IiIpDuVlHfMLO379cgqW9odd74u8MsAO@public.gmane.org>, Mike Galbraith <efault-Mmb7MZpHnFY@public.gmane.org>, Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>, =?ISO-8859-1?Q?Fr=E9d=E9ric_W?= =?ISO-8859-1?Q?eisbecker?= <fweisbec-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

Steven Rostedt wrote:
> Note, the wakeup latency only tests realtime threads, since other threads
> can have other issues for wakeup. I could change the wakeup tracer as
> wakeup_rt, and make a new "wakeup" that tests all threads, but it may
> be difficult to get something accurate.
>   

Kevin, can you retest with kvm at realtime priority?

-- 
error compiling committee.c: too many arguments to function
