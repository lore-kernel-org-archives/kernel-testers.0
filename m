From: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Subject: Re: [Bug #11308] tbench regression on each kernel release from
 2.6.22 -&gt; 2.6.28
Date: Mon, 17 Nov 2008 01:14:03 -0800 (PST)
Message-ID: <20081117.011403.06989342.davem@davemloft.net>
References: <1ScKicKnTUE.A.VxH.DIHIJB@chimera>
	<NjF0-fuClJC.A.73B.cLHIJB@chimera>
	<20081117090648.GG28786@elte.hu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20081117090648.GG28786-X9Un+BFzKDI@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: mingo-X9Un+BFzKDI@public.gmane.org
Cc: rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, efault-Mmb7MZpHnFY@public.gmane.org, a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org

From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Date: Mon, 17 Nov 2008 10:06:48 +0100

> 
> * Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> 
> > This message has been generated automatically as a part of a report
> > of regressions introduced between 2.6.26 and 2.6.27.
> > 
> > The following bug entry is on the current list of known regressions
> > introduced between 2.6.26 and 2.6.27.  Please verify if it still should
> > be listed and let me know (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11308
> > Subject		: tbench regression on each kernel release from  2.6.22 -&gt; 2.6.28
> > Submitter	: Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
> > Date		: 2008-08-11 18:36 (98 days old)
> > References	: http://marc.info/?l=linux-kernel&m=121847986119495&w=4
> > 		  http://marc.info/?l=linux-kernel&m=122125737421332&w=4
> 
> Christoph, as per the recent analysis of Mike:
> 
>  http://fixunix.com/kernel/556867-regression-benchmark-throughput-loss-a622cf6-f7160c7-pull.html
> 
> all scheduler components of this regression have been eliminated.
> 
> In fact his numbers show that scheduler speedups since 2.6.22 have 
> offset and hidden most other sources of tbench regression. (i.e. the 
> scheduler portion got 5% faster, hence it was able to offset a 
> slowdown of 5% in other areas of the kernel that tbench triggers)

Although I respect the improvements, wake_up() is still several orders
of magnitude slower than it was in 2.6.22 and wake_up() is at the top
of the profiles in tbench runs.

It really is premature to close this regression at this time.

I am working with every spare moment I have to try and nail this
stuff, but unless someone else helps me people need to be patient.
