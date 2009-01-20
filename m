From: Kevin Shanahan <kmshanah-biM/RbsGxha6c6uEtOJ/EA@public.gmane.org>
Subject: Re: [Bug #12465] KVM guests stalling on 2.6.28 (bisected)
Date: Tue, 20 Jan 2009 23:12:23 +1030
Message-ID: <1232455343.4895.4.camel@kulgan.wumi.org.au>
References: <KTnguC9mFUC.A.VNB.TJRdJB@chimera>
	 <cX2gZ6Cy9nC.A.4dB.bJRdJB@chimera>
	 <1232410363.4768.21.camel@kulgan.wumi.org.au>
	 <20090120113546.GA26571@elte.hu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090120113546.GA26571-X9Un+BFzKDI@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Cc: Avi Kivity <avi-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kevin Shanahan <kmshanah-IiIpDuVlHfMLO379cgqW9odd74u8MsAO@public.gmane.org>, Mike Galbraith <efault-Mmb7MZpHnFY@public.gmane.org>, Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>

On Tue, 2009-01-20 at 12:35 +0100, Ingo Molnar wrote:
> * Kevin Shanahan <kmshanah-biM/RbsGxha6c6uEtOJ/EA@public.gmane.org> wrote:
> 
> > On Mon, 2009-01-19 at 22:45 +0100, Rafael J. Wysocki wrote:
> > > This message has been generated automatically as a part of a report
> > > of regressions introduced between 2.6.27 and 2.6.28.
> > > 
> > > The following bug entry is on the current list of known regressions
> > > introduced between 2.6.27 and 2.6.28.  Please verify if it still should
> > > be listed and let me know (either way).
> > > 
> > > 
> > > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12465
> > > Subject		: KVM guests stalling on 2.6.28 (bisected)
> > > Submitter	: Kevin Shanahan <kmshanah-biM/RbsGxha6c6uEtOJ/EA@public.gmane.org>
> > > Date		: 2009-01-17 03:37 (3 days old)
> > 
> > Yes, please keep this on the list.
> 
> This only seems to occur under KVM, right? I.e. you tested it with -no-kvm 
> and the problem went away, correct?

Well, the I couldn't make the test conditions identical, but it the
problem didn't occur with the test I was able to do:

  http://marc.info/?l=linux-kernel&m=123228728416498&w=2

> This suggests some sort of KVM-specific problem. Scheduler latencies in 
> the seconds that occur under normal load situations are noticed and 
> reported quickly - and there are no such open regressions currently.

It at least suggests a problem with interaction between the scheduler
and kvm, otherwise reverting that scheduler patch wouldn't have made the
regression go away.

Regards,
Kevin.

