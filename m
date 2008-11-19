From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Subject: Re: [Bug #11308] tbench regression on each kernel release from
	2.6.22 -&gt; 2.6.28
Date: Wed, 19 Nov 2008 21:14:44 +0100
Message-ID: <20081119201444.GB4765@elte.hu>
References: <1ScKicKnTUE.A.VxH.DIHIJB@chimera> <NjF0-fuClJC.A.73B.cLHIJB@chimera> <20081117090648.GG28786@elte.hu> <Pine.LNX.4.64.0811191341570.23502@quilx.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <Pine.LNX.4.64.0811191341570.23502-dRBSpnHQED8AvxtiuMwx3w@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Mike Galbraith <efault-Mmb7MZpHnFY@public.gmane.org>, Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>


* Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org> wrote:

> On Mon, 17 Nov 2008, Ingo Molnar wrote:
> 
> > Christoph, as per the recent analysis of Mike:
> >
> >  http://fixunix.com/kernel/556867-regression-benchmark-throughput-loss-a622cf6-f7160c7-pull.html
> >
> > all scheduler components of this regression have been eliminated.
> >
> > In fact his numbers show that scheduler speedups since 2.6.22 have
> > offset and hidden most other sources of tbench regression. (i.e. the
> > scheduler portion got 5% faster, hence it was able to offset a
> > slowdown of 5% in other areas of the kernel that tbench triggers)
> 
> Ok will rerun the tests tomorrow. Just got back from SC08 need some 
> time to catch up.
> 
> Looks like a lot of work was done on this issue. Thanks!

You might also want to try net-next:

 [remote "net-next"]
        url = git://git.kernel.org/pub/scm/linux/kernel/git/davem/net-next-2.6.git
        fetch = +refs/heads/*:refs/remotes/net-next/*

Some good stuff is in there too, impacting this workload.

	Ingo
