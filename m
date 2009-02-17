From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Subject: Re: [Bug #12650] Strange load average and ksoftirqd behavior with
	2.6.29-rc2-git1
Date: Tue, 17 Feb 2009 10:46:57 +0100
Message-ID: <20090217094657.GA1845@elte.hu>
References: <20090216095059.GL6182@elte.hu> <87hc2u61e9.fsf@free.fr> <20090216122632.GA3158@elte.hu> <87ljs6pmao.fsf@free.fr> <20090216132151.GA17996@elte.hu> <20090216160613.GA6785@linux.vnet.ibm.com> <20090216185616.GB6785@linux.vnet.ibm.com> <20090216200923.GA28938@elte.hu> <20090216223944.GF6785@linux.vnet.ibm.com> <20090216225108.GA15904@linux.vnet.ibm.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20090216225108.GA15904-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Paul E. McKenney" <paulmck-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
Cc: Damien Wyart <damien.wyart-GANU6spQydw@public.gmane.org>, Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>, Mike Galbraith <efault-Mmb7MZpHnFY@public.gmane.org>, =?iso-8859-1?Q?Fr=E9d=E9ric?= Weisbecker <fweisbec-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>


* Paul E. McKenney <paulmck-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org> wrote:

> On Mon, Feb 16, 2009 at 02:39:44PM -0800, Paul E. McKenney wrote:
> > On Mon, Feb 16, 2009 at 09:09:23PM +0100, Ingo Molnar wrote:
> > > 
> > > * Paul E. McKenney <paulmck-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org> wrote:
> > > 
> > > > Here the calls to rcu_process_callbacks() are only 75 
> > > > microseconds apart, so that this function is consuming more 
> > > > than 10% of a CPU.  The strange thing is that I don't see a 
> > > > raise_softirq() in between, though perhaps it gets inlined or 
> > > > something that makes it invisible to ftrace.
> > > 
> > > look at the latest trace please, that has even the most inline 
> > > raise-softirq method instrumented, so all the raising is 
> > > visible.
> > 
> > Ah, my apologies!  This time looking at:
> > 
> > http://damien.wyart.free.fr/ksoftirqd_pb/trace_tip_2009.02.16_ksoftirqd_pb_abstime_proc.txt.gz
> > 
> > 
> >   799.521187 |   1)    <idle>-0    |               |  rcu_check_callbacks() {
> >   799.521371 |   1)    <idle>-0    |               |  rcu_check_callbacks() {
> >   799.521555 |   1)    <idle>-0    |               |  rcu_check_callbacks() {
> >   799.521738 |   1)    <idle>-0    |               |  rcu_check_callbacks() {
> >   799.521934 |   1)    <idle>-0    |               |  rcu_check_callbacks() {
> >   799.522068 |   1)  ksoftir-2324  |               |                rcu_check_callbacks() {
> >   799.522208 |   1)    <idle>-0    |               |  rcu_check_callbacks() {
> >   799.522392 |   1)    <idle>-0    |               |  rcu_check_callbacks() {
> >   799.522575 |   1)    <idle>-0    |               |  rcu_check_callbacks() {
> >   799.522759 |   1)    <idle>-0    |               |  rcu_check_callbacks() {
> >   799.522956 |   1)    <idle>-0    |               |  rcu_check_callbacks() {
> >   799.523074 |   1)  ksoftir-2324  |               |                  rcu_check_callbacks() {
> >   799.523214 |   1)    <idle>-0    |               |  rcu_check_callbacks() {
> >   799.523397 |   1)    <idle>-0    |               |  rcu_check_callbacks() {
> >   799.523579 |   1)    <idle>-0    |               |  rcu_check_callbacks() {
> >   799.523762 |   1)    <idle>-0    |               |  rcu_check_callbacks() {
> >   799.523960 |   1)    <idle>-0    |               |  rcu_check_callbacks() {
> >   799.524079 |   1)  ksoftir-2324  |               |                  rcu_check_callbacks() {
> >   799.524220 |   1)    <idle>-0    |               |  rcu_check_callbacks() {
> >   799.524403 |   1)    <idle>-0    |               |  rcu_check_callbacks() {
> >   799.524587 |   1)    <idle>-0    |               |  rcu_check_callbacks() {
> >   799.524770 |   1)    <idle>-0    |               |  rcu_check_callbacks() {
> > [ . . . ]
> > 
> > Yikes!!!
> > 
> > Why is rcu_check_callbacks() being invoked so often?  It should be called
> > but once per jiffy, and here it is called no less than 22 times in about
> > 3.5 milliseconds, meaning one call every 160 microseconds or so.
> 
> BTW, the other question I have is "why do we need to call 
> rcu_pending() and rcu_check_callbacks() from the idle loop of 
> 32-bit x86, especially given that no other architecture does 
> this?".  Don't get me wrong, it would be good to get rcutree's 
> rcu_pending() to avoid spuriously saying that 
> rcu_check_callbacks() should be invoked, so I would still like 
> the trace with my patch, but...

There's no strong reason - we've been back and forth about RCU 
in the dynticks code. Mind sending a test patch for Damien to 
try?

	Ingo
