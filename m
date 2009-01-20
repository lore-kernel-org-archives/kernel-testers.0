From: Kevin Shanahan <kmshanah-biM/RbsGxha6c6uEtOJ/EA@public.gmane.org>
Subject: Re: [Bug #12465] KVM guests stalling on 2.6.28 (bisected)
Date: Wed, 21 Jan 2009 02:21:26 +1030
Message-ID: <1232466686.4895.45.camel@kulgan.wumi.org.au>
References: <KTnguC9mFUC.A.VNB.TJRdJB@chimera>
	 <cX2gZ6Cy9nC.A.4dB.bJRdJB@chimera>
	 <1232410363.4768.21.camel@kulgan.wumi.org.au>
	 <20090120113546.GA26571@elte.hu>
	 <1232455343.4895.4.camel@kulgan.wumi.org.au>
	 <20090120125652.GA1457@elte.hu>
	 <1232461380.4895.33.camel@kulgan.wumi.org.au>
	 <20090120142515.GC10224@elte.hu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090120142515.GC10224-X9Un+BFzKDI@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Cc: Avi Kivity <avi-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Mike Galbraith <efault-Mmb7MZpHnFY@public.gmane.org>, Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>, bugme-daemon-590EEB7GvNiWaY/ihj7yzEB+6BGkLq7r@public.gmane.org

On Tue, 2009-01-20 at 15:25 +0100, Ingo Molnar wrote:
> > I could run top, vmstat and cat /proc/sched_debug in a loop until the
> > problem occurs and then trim it. Something like:
> > 
> > while true; do
> >   date                                >> $FILE
> >   echo "-- top: --"                   >> $FILE
> >   top -H -c -b -d 1 -n 0.5            >> $FILE 2>/dev/null
> >   echo "-- vmstat: --"                >> $FILE
> >   vmstat                              >> $FILE 2>/dev/null
> >   echo "-- sched_debug #$i: --"       >> $FILE
> >   cat /proc/sched_debug               >> $FILE 2>/dev/null
> > done
> > 
> > That should take a snapshot every half second or so.
> 
> Yeah, that would be lovely. You dont even have to trim it much - just give 
> us a timestamp to look at for the delay incident. You might also want to 
> start the kvm session while the script is already running - that way we'll 
> get fresh statistics and see the whole thing.

I've uploaded the debug info here:
  http://disenchant.net/tmp/bug-12465/

Some interesting sections should be around these times:

  01:36:04 -> 01:36:27
  01:37:30 -> 01:37:42
  01:37:52 -> 01:37:56
  01:39:37 -> 01:39:40
  01:40:01 -> 01:40:14

The output from ping is there too so you can see how the delays usually
show up (e.g. in clusters). The large debug file runs from before I
launched the VMs, right through the ping test. The trimmed file just
cuts out everything before I started ping.

Regards,
Kevin.

